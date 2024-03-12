import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_docker/src/generated/docker/api.dart';
export 'package:dart_docker/src/generated/docker/api.dart';

class _UnixSocketClient extends http.BaseClient {
  final String socketPath;
  final HttpClient _inner;

  _UnixSocketClient(this.socketPath) : _inner = HttpClient() {
    _inner.connectionFactory = ((uri, proxyHost, proxyPort) {
      final host = InternetAddress(socketPath, type: InternetAddressType.unix);
      return Socket.startConnect(host, 0);
    });
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final Uri uri = request.url;

    final HttpClientRequest innerRequest =
        await _inner.openUrl(request.method, uri);

    innerRequest.persistentConnection = false;
    innerRequest.followRedirects = request.followRedirects;

    request.headers.forEach((name, value) {
      innerRequest.headers.add(name, value);
    });

    if (request is http.Request) {
      innerRequest.add(utf8.encode(request.body));
    } else if (request is http.MultipartRequest) {
      throw UnsupportedError(
          'Multipart requests are not supported in this example');
    }

    final HttpClientResponse innerResponse = await innerRequest.close();

    final List<int> responseBody = await innerResponse
        .fold<List<int>>([], (previous, element) => previous..addAll(element));

    final headerMap = <String, String>{};
    innerResponse.headers.forEach((name, values) {
      headerMap[name] = values.join(',');
    });
    return http.StreamedResponse(
      Stream.value(Uint8List.fromList(responseBody)),
      innerResponse.statusCode,
      headers: headerMap,
      contentLength: innerResponse.contentLength == -1
          ? null
          : innerResponse.contentLength,
      isRedirect: innerResponse.isRedirect,
      persistentConnection: innerResponse.persistentConnection,
      reasonPhrase: innerResponse.reasonPhrase,
    );
  }

  @override
  void close() {
    _inner.close();
  }
}

class DockerSocketClient {
  final ApiClient _apiClient;

  DockerSocketClient({String socketPath = '/var/run/docker.sock'})
      : _apiClient = ApiClient() {
    _apiClient.client = _UnixSocketClient(socketPath);
  }

  ImageApi get image {
    return ImageApi(_apiClient);
  }

  ConfigApi get config {
    return ConfigApi(_apiClient);
  }

  /// Create and manage containers.
  ContainerApi get container {
    return ContainerApi(_apiClient);
  }

  DistributionApi get distribution {
    return DistributionApi(_apiClient);
  }

  ExecApi get exec {
    return ExecApi(_apiClient);
  }

  NetworkApi get network {
    return NetworkApi(_apiClient);
  }

  NodeApi get node {
    return NodeApi(_apiClient);
  }

  PluginApi get plugin {
    return PluginApi(_apiClient);
  }

  SecretApi get secret {
    return SecretApi(_apiClient);
  }

  ServiceApi get service {
    return ServiceApi(_apiClient);
  }

  SessionApi get session {
    return SessionApi(_apiClient);
  }

  SwarmApi get swarm {
    return SwarmApi(_apiClient);
  }

  SystemApi get system {
    return SystemApi(_apiClient);
  }

  TaskApi get task {
    return TaskApi(_apiClient);
  }

  VolumeApi get volume {
    return VolumeApi(_apiClient);
  }
}
