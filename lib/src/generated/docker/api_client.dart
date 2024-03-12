//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ApiClient {
  ApiClient({
    this.basePath = 'http://localhost',
    this.authentication,
  });

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null ||
              !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await _client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await _client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await _client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await _client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await _client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await _client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(
    String value,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(value, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(
    String value,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? value
        : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(
    dynamic value,
    String targetType, {
    bool growable = false,
  }) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'Address':
          return Address.fromJson(value);
        case 'AuthConfig':
          return AuthConfig.fromJson(value);
        case 'BuildCache':
          return BuildCache.fromJson(value);
        case 'BuildInfo':
          return BuildInfo.fromJson(value);
        case 'BuildPruneResponse':
          return BuildPruneResponse.fromJson(value);
        case 'ChangeType':
          return ChangeTypeTypeTransformer().decode(value);
        case 'ClusterInfo':
          return ClusterInfo.fromJson(value);
        case 'ClusterVolume':
          return ClusterVolume.fromJson(value);
        case 'ClusterVolumeInfo':
          return ClusterVolumeInfo.fromJson(value);
        case 'ClusterVolumePublishStatusInner':
          return ClusterVolumePublishStatusInner.fromJson(value);
        case 'ClusterVolumeSpec':
          return ClusterVolumeSpec.fromJson(value);
        case 'ClusterVolumeSpecAccessMode':
          return ClusterVolumeSpecAccessMode.fromJson(value);
        case 'ClusterVolumeSpecAccessModeAccessibilityRequirements':
          return ClusterVolumeSpecAccessModeAccessibilityRequirements.fromJson(
              value);
        case 'ClusterVolumeSpecAccessModeCapacityRange':
          return ClusterVolumeSpecAccessModeCapacityRange.fromJson(value);
        case 'ClusterVolumeSpecAccessModeSecretsInner':
          return ClusterVolumeSpecAccessModeSecretsInner.fromJson(value);
        case 'Commit':
          return Commit.fromJson(value);
        case 'Config':
          return Config.fromJson(value);
        case 'ConfigCreateRequest':
          return ConfigCreateRequest.fromJson(value);
        case 'ConfigSpec':
          return ConfigSpec.fromJson(value);
        case 'ContainerConfig':
          return ContainerConfig.fromJson(value);
        case 'ContainerCreateRequest':
          return ContainerCreateRequest.fromJson(value);
        case 'ContainerCreateResponse':
          return ContainerCreateResponse.fromJson(value);
        case 'ContainerInspectResponse':
          return ContainerInspectResponse.fromJson(value);
        case 'ContainerPruneResponse':
          return ContainerPruneResponse.fromJson(value);
        case 'ContainerState':
          return ContainerState.fromJson(value);
        case 'ContainerStatus':
          return ContainerStatus.fromJson(value);
        case 'ContainerSummary':
          return ContainerSummary.fromJson(value);
        case 'ContainerSummaryHostConfig':
          return ContainerSummaryHostConfig.fromJson(value);
        case 'ContainerSummaryNetworkSettings':
          return ContainerSummaryNetworkSettings.fromJson(value);
        case 'ContainerTopResponse':
          return ContainerTopResponse.fromJson(value);
        case 'ContainerUpdateRequest':
          return ContainerUpdateRequest.fromJson(value);
        case 'ContainerUpdateResponse':
          return ContainerUpdateResponse.fromJson(value);
        case 'ContainerWaitExitError':
          return ContainerWaitExitError.fromJson(value);
        case 'ContainerWaitResponse':
          return ContainerWaitResponse.fromJson(value);
        case 'CreateImageInfo':
          return CreateImageInfo.fromJson(value);
        case 'DeviceMapping':
          return DeviceMapping.fromJson(value);
        case 'DeviceRequest':
          return DeviceRequest.fromJson(value);
        case 'DistributionInspect':
          return DistributionInspect.fromJson(value);
        case 'Driver':
          return Driver.fromJson(value);
        case 'EndpointIPAMConfig':
          return EndpointIPAMConfig.fromJson(value);
        case 'EndpointPortConfig':
          return EndpointPortConfig.fromJson(value);
        case 'EndpointSettings':
          return EndpointSettings.fromJson(value);
        case 'EndpointSpec':
          return EndpointSpec.fromJson(value);
        case 'EngineDescription':
          return EngineDescription.fromJson(value);
        case 'EngineDescriptionPluginsInner':
          return EngineDescriptionPluginsInner.fromJson(value);
        case 'ErrorDetail':
          return ErrorDetail.fromJson(value);
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value);
        case 'EventActor':
          return EventActor.fromJson(value);
        case 'EventMessage':
          return EventMessage.fromJson(value);
        case 'ExecConfig':
          return ExecConfig.fromJson(value);
        case 'ExecInspectResponse':
          return ExecInspectResponse.fromJson(value);
        case 'ExecStartConfig':
          return ExecStartConfig.fromJson(value);
        case 'FilesystemChange':
          return FilesystemChange.fromJson(value);
        case 'GenericResourcesInner':
          return GenericResourcesInner.fromJson(value);
        case 'GenericResourcesInnerDiscreteResourceSpec':
          return GenericResourcesInnerDiscreteResourceSpec.fromJson(value);
        case 'GenericResourcesInnerNamedResourceSpec':
          return GenericResourcesInnerNamedResourceSpec.fromJson(value);
        case 'GraphDriverData':
          return GraphDriverData.fromJson(value);
        case 'Health':
          return Health.fromJson(value);
        case 'HealthConfig':
          return HealthConfig.fromJson(value);
        case 'HealthcheckResult':
          return HealthcheckResult.fromJson(value);
        case 'HistoryResponseItem':
          return HistoryResponseItem.fromJson(value);
        case 'HostConfig':
          return HostConfig.fromJson(value);
        case 'HostConfigAllOfLogConfig':
          return HostConfigAllOfLogConfig.fromJson(value);
        case 'IPAM':
          return IPAM.fromJson(value);
        case 'IPAMConfig':
          return IPAMConfig.fromJson(value);
        case 'IdResponse':
          return IdResponse.fromJson(value);
        case 'ImageDeleteResponseItem':
          return ImageDeleteResponseItem.fromJson(value);
        case 'ImageID':
          return ImageID.fromJson(value);
        case 'ImageInspect':
          return ImageInspect.fromJson(value);
        case 'ImageInspectMetadata':
          return ImageInspectMetadata.fromJson(value);
        case 'ImageInspectRootFS':
          return ImageInspectRootFS.fromJson(value);
        case 'ImagePruneResponse':
          return ImagePruneResponse.fromJson(value);
        case 'ImageSearchResponseItem':
          return ImageSearchResponseItem.fromJson(value);
        case 'ImageSummary':
          return ImageSummary.fromJson(value);
        case 'IndexInfo':
          return IndexInfo.fromJson(value);
        case 'JoinTokens':
          return JoinTokens.fromJson(value);
        case 'Limit':
          return Limit.fromJson(value);
        case 'LocalNodeState':
          return LocalNodeStateTypeTransformer().decode(value);
        case 'ManagerStatus':
          return ManagerStatus.fromJson(value);
        case 'Mount':
          return Mount.fromJson(value);
        case 'MountBindOptions':
          return MountBindOptions.fromJson(value);
        case 'MountPoint':
          return MountPoint.fromJson(value);
        case 'MountTmpfsOptions':
          return MountTmpfsOptions.fromJson(value);
        case 'MountVolumeOptions':
          return MountVolumeOptions.fromJson(value);
        case 'MountVolumeOptionsDriverConfig':
          return MountVolumeOptionsDriverConfig.fromJson(value);
        case 'Network':
          return Network.fromJson(value);
        case 'NetworkAttachmentConfig':
          return NetworkAttachmentConfig.fromJson(value);
        case 'NetworkConnectRequest':
          return NetworkConnectRequest.fromJson(value);
        case 'NetworkContainer':
          return NetworkContainer.fromJson(value);
        case 'NetworkCreateRequest':
          return NetworkCreateRequest.fromJson(value);
        case 'NetworkCreateResponse':
          return NetworkCreateResponse.fromJson(value);
        case 'NetworkDisconnectRequest':
          return NetworkDisconnectRequest.fromJson(value);
        case 'NetworkPruneResponse':
          return NetworkPruneResponse.fromJson(value);
        case 'NetworkSettings':
          return NetworkSettings.fromJson(value);
        case 'NetworkingConfig':
          return NetworkingConfig.fromJson(value);
        case 'Node':
          return Node.fromJson(value);
        case 'NodeDescription':
          return NodeDescription.fromJson(value);
        case 'NodeSpec':
          return NodeSpec.fromJson(value);
        case 'NodeState':
          return NodeStateTypeTransformer().decode(value);
        case 'NodeStatus':
          return NodeStatus.fromJson(value);
        case 'OCIDescriptor':
          return OCIDescriptor.fromJson(value);
        case 'OCIPlatform':
          return OCIPlatform.fromJson(value);
        case 'ObjectVersion':
          return ObjectVersion.fromJson(value);
        case 'PeerNode':
          return PeerNode.fromJson(value);
        case 'Platform':
          return Platform.fromJson(value);
        case 'Plugin':
          return Plugin.fromJson(value);
        case 'PluginConfig':
          return PluginConfig.fromJson(value);
        case 'PluginConfigArgs':
          return PluginConfigArgs.fromJson(value);
        case 'PluginConfigInterface':
          return PluginConfigInterface.fromJson(value);
        case 'PluginConfigLinux':
          return PluginConfigLinux.fromJson(value);
        case 'PluginConfigNetwork':
          return PluginConfigNetwork.fromJson(value);
        case 'PluginConfigRootfs':
          return PluginConfigRootfs.fromJson(value);
        case 'PluginConfigUser':
          return PluginConfigUser.fromJson(value);
        case 'PluginDevice':
          return PluginDevice.fromJson(value);
        case 'PluginEnv':
          return PluginEnv.fromJson(value);
        case 'PluginInterfaceType':
          return PluginInterfaceType.fromJson(value);
        case 'PluginMount':
          return PluginMount.fromJson(value);
        case 'PluginPrivilege':
          return PluginPrivilege.fromJson(value);
        case 'PluginSettings':
          return PluginSettings.fromJson(value);
        case 'PluginsInfo':
          return PluginsInfo.fromJson(value);
        case 'Port':
          return Port.fromJson(value);
        case 'PortBinding':
          return PortBinding.fromJson(value);
        case 'PortStatus':
          return PortStatus.fromJson(value);
        case 'ProcessConfig':
          return ProcessConfig.fromJson(value);
        case 'ProgressDetail':
          return ProgressDetail.fromJson(value);
        case 'PushImageInfo':
          return PushImageInfo.fromJson(value);
        case 'Reachability':
          return ReachabilityTypeTransformer().decode(value);
        case 'RegistryServiceConfig':
          return RegistryServiceConfig.fromJson(value);
        case 'ResourceObject':
          return ResourceObject.fromJson(value);
        case 'Resources':
          return Resources.fromJson(value);
        case 'ResourcesBlkioWeightDeviceInner':
          return ResourcesBlkioWeightDeviceInner.fromJson(value);
        case 'ResourcesUlimitsInner':
          return ResourcesUlimitsInner.fromJson(value);
        case 'RestartPolicy':
          return RestartPolicy.fromJson(value);
        case 'Runtime':
          return Runtime.fromJson(value);
        case 'Secret':
          return Secret.fromJson(value);
        case 'SecretCreateRequest':
          return SecretCreateRequest.fromJson(value);
        case 'SecretSpec':
          return SecretSpec.fromJson(value);
        case 'Service':
          return Service.fromJson(value);
        case 'ServiceCreateRequest':
          return ServiceCreateRequest.fromJson(value);
        case 'ServiceCreateResponse':
          return ServiceCreateResponse.fromJson(value);
        case 'ServiceEndpoint':
          return ServiceEndpoint.fromJson(value);
        case 'ServiceEndpointVirtualIPsInner':
          return ServiceEndpointVirtualIPsInner.fromJson(value);
        case 'ServiceJobStatus':
          return ServiceJobStatus.fromJson(value);
        case 'ServiceServiceStatus':
          return ServiceServiceStatus.fromJson(value);
        case 'ServiceSpec':
          return ServiceSpec.fromJson(value);
        case 'ServiceSpecMode':
          return ServiceSpecMode.fromJson(value);
        case 'ServiceSpecModeReplicated':
          return ServiceSpecModeReplicated.fromJson(value);
        case 'ServiceSpecModeReplicatedJob':
          return ServiceSpecModeReplicatedJob.fromJson(value);
        case 'ServiceSpecRollbackConfig':
          return ServiceSpecRollbackConfig.fromJson(value);
        case 'ServiceSpecUpdateConfig':
          return ServiceSpecUpdateConfig.fromJson(value);
        case 'ServiceUpdateRequest':
          return ServiceUpdateRequest.fromJson(value);
        case 'ServiceUpdateResponse':
          return ServiceUpdateResponse.fromJson(value);
        case 'ServiceUpdateStatus':
          return ServiceUpdateStatus.fromJson(value);
        case 'Swarm':
          return Swarm.fromJson(value);
        case 'SwarmInfo':
          return SwarmInfo.fromJson(value);
        case 'SwarmInitRequest':
          return SwarmInitRequest.fromJson(value);
        case 'SwarmJoinRequest':
          return SwarmJoinRequest.fromJson(value);
        case 'SwarmSpec':
          return SwarmSpec.fromJson(value);
        case 'SwarmSpecCAConfig':
          return SwarmSpecCAConfig.fromJson(value);
        case 'SwarmSpecCAConfigExternalCAsInner':
          return SwarmSpecCAConfigExternalCAsInner.fromJson(value);
        case 'SwarmSpecDispatcher':
          return SwarmSpecDispatcher.fromJson(value);
        case 'SwarmSpecEncryptionConfig':
          return SwarmSpecEncryptionConfig.fromJson(value);
        case 'SwarmSpecOrchestration':
          return SwarmSpecOrchestration.fromJson(value);
        case 'SwarmSpecRaft':
          return SwarmSpecRaft.fromJson(value);
        case 'SwarmSpecTaskDefaults':
          return SwarmSpecTaskDefaults.fromJson(value);
        case 'SwarmSpecTaskDefaultsLogDriver':
          return SwarmSpecTaskDefaultsLogDriver.fromJson(value);
        case 'SwarmUnlockRequest':
          return SwarmUnlockRequest.fromJson(value);
        case 'SystemAuthResponse':
          return SystemAuthResponse.fromJson(value);
        case 'SystemDataUsageResponse':
          return SystemDataUsageResponse.fromJson(value);
        case 'SystemInfo':
          return SystemInfo.fromJson(value);
        case 'SystemInfoDefaultAddressPoolsInner':
          return SystemInfoDefaultAddressPoolsInner.fromJson(value);
        case 'SystemVersion':
          return SystemVersion.fromJson(value);
        case 'SystemVersionComponentsInner':
          return SystemVersionComponentsInner.fromJson(value);
        case 'SystemVersionPlatform':
          return SystemVersionPlatform.fromJson(value);
        case 'TLSInfo':
          return TLSInfo.fromJson(value);
        case 'Task':
          return Task.fromJson(value);
        case 'TaskSpec':
          return TaskSpec.fromJson(value);
        case 'TaskSpecContainerSpec':
          return TaskSpecContainerSpec.fromJson(value);
        case 'TaskSpecContainerSpecConfigsInner':
          return TaskSpecContainerSpecConfigsInner.fromJson(value);
        case 'TaskSpecContainerSpecConfigsInnerFile':
          return TaskSpecContainerSpecConfigsInnerFile.fromJson(value);
        case 'TaskSpecContainerSpecDNSConfig':
          return TaskSpecContainerSpecDNSConfig.fromJson(value);
        case 'TaskSpecContainerSpecPrivileges':
          return TaskSpecContainerSpecPrivileges.fromJson(value);
        case 'TaskSpecContainerSpecPrivilegesAppArmor':
          return TaskSpecContainerSpecPrivilegesAppArmor.fromJson(value);
        case 'TaskSpecContainerSpecPrivilegesCredentialSpec':
          return TaskSpecContainerSpecPrivilegesCredentialSpec.fromJson(value);
        case 'TaskSpecContainerSpecPrivilegesSELinuxContext':
          return TaskSpecContainerSpecPrivilegesSELinuxContext.fromJson(value);
        case 'TaskSpecContainerSpecPrivilegesSeccomp':
          return TaskSpecContainerSpecPrivilegesSeccomp.fromJson(value);
        case 'TaskSpecContainerSpecSecretsInner':
          return TaskSpecContainerSpecSecretsInner.fromJson(value);
        case 'TaskSpecContainerSpecSecretsInnerFile':
          return TaskSpecContainerSpecSecretsInnerFile.fromJson(value);
        case 'TaskSpecLogDriver':
          return TaskSpecLogDriver.fromJson(value);
        case 'TaskSpecNetworkAttachmentSpec':
          return TaskSpecNetworkAttachmentSpec.fromJson(value);
        case 'TaskSpecPlacement':
          return TaskSpecPlacement.fromJson(value);
        case 'TaskSpecPlacementPreferencesInner':
          return TaskSpecPlacementPreferencesInner.fromJson(value);
        case 'TaskSpecPlacementPreferencesInnerSpread':
          return TaskSpecPlacementPreferencesInnerSpread.fromJson(value);
        case 'TaskSpecPluginSpec':
          return TaskSpecPluginSpec.fromJson(value);
        case 'TaskSpecResources':
          return TaskSpecResources.fromJson(value);
        case 'TaskSpecRestartPolicy':
          return TaskSpecRestartPolicy.fromJson(value);
        case 'TaskState':
          return TaskStateTypeTransformer().decode(value);
        case 'TaskStatus':
          return TaskStatus.fromJson(value);
        case 'ThrottleDevice':
          return ThrottleDevice.fromJson(value);
        case 'UnlockKeyResponse':
          return UnlockKeyResponse.fromJson(value);
        case 'Volume':
          return Volume.fromJson(value);
        case 'VolumeCreateOptions':
          return VolumeCreateOptions.fromJson(value);
        case 'VolumeListResponse':
          return VolumeListResponse.fromJson(value);
        case 'VolumePruneResponse':
          return VolumePruneResponse.fromJson(value);
        case 'VolumeUpdateRequest':
          return VolumeUpdateRequest.fromJson(value);
        case 'VolumeUsageData':
          return VolumeUsageData.fromJson(value);
        default:
          dynamic match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => fromJson(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => fromJson(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String' ? message.json : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient.fromJson(
          json.decode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async =>
    value == null ? '' : json.encode(value);
