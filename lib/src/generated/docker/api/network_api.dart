//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NetworkApi {
  NetworkApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Connect a container to a network
  ///
  /// The network must be either a local-scoped network or a swarm-scoped network with the `attachable` option set. A network cannot be re-attached to a running container
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Network ID or name
  ///
  /// * [NetworkConnectRequest] container (required):
  Future<Response> networkConnectWithHttpInfo(
    String id,
    NetworkConnectRequest container,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/networks/{id}/connect'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = container;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Connect a container to a network
  ///
  /// The network must be either a local-scoped network or a swarm-scoped network with the `attachable` option set. A network cannot be re-attached to a running container
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Network ID or name
  ///
  /// * [NetworkConnectRequest] container (required):
  Future<void> networkConnect(
    String id,
    NetworkConnectRequest container,
  ) async {
    final response = await networkConnectWithHttpInfo(
      id,
      container,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a network
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NetworkCreateRequest] networkConfig (required):
  ///   Network configuration
  Future<Response> networkCreateWithHttpInfo(
    NetworkCreateRequest networkConfig,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/networks/create';

    // ignore: prefer_final_locals
    Object? postBody = networkConfig;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a network
  ///
  /// Parameters:
  ///
  /// * [NetworkCreateRequest] networkConfig (required):
  ///   Network configuration
  Future<NetworkCreateResponse?> networkCreate(
    NetworkCreateRequest networkConfig,
  ) async {
    final response = await networkCreateWithHttpInfo(
      networkConfig,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'NetworkCreateResponse',
      ) as NetworkCreateResponse;
    }
    return null;
  }

  /// Remove a network
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Network ID or name
  Future<Response> networkDeleteWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/networks/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove a network
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Network ID or name
  Future<void> networkDelete(
    String id,
  ) async {
    final response = await networkDeleteWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disconnect a container from a network
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Network ID or name
  ///
  /// * [NetworkDisconnectRequest] container (required):
  Future<Response> networkDisconnectWithHttpInfo(
    String id,
    NetworkDisconnectRequest container,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/networks/{id}/disconnect'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = container;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Disconnect a container from a network
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Network ID or name
  ///
  /// * [NetworkDisconnectRequest] container (required):
  Future<void> networkDisconnect(
    String id,
    NetworkDisconnectRequest container,
  ) async {
    final response = await networkDisconnectWithHttpInfo(
      id,
      container,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Inspect a network
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Network ID or name
  ///
  /// * [bool] verbose:
  ///   Detailed inspect output for troubleshooting
  ///
  /// * [String] scope:
  ///   Filter the network by scope (swarm, global, or local)
  Future<Response> networkInspectWithHttpInfo(
    String id, {
    bool? verbose,
    String? scope,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/networks/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (verbose != null) {
      queryParams.addAll(_queryParams('', 'verbose', verbose));
    }
    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Inspect a network
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Network ID or name
  ///
  /// * [bool] verbose:
  ///   Detailed inspect output for troubleshooting
  ///
  /// * [String] scope:
  ///   Filter the network by scope (swarm, global, or local)
  Future<Network?> networkInspect(
    String id, {
    bool? verbose,
    String? scope,
  }) async {
    final response = await networkInspectWithHttpInfo(
      id,
      verbose: verbose,
      scope: scope,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'Network',
      ) as Network;
    }
    return null;
  }

  /// List networks
  ///
  /// Returns a list of networks. For details on the format, see the [network inspect endpoint](#operation/NetworkInspect).  Note that it uses a different, smaller representation of a network than inspecting a single network. For example, the list of containers attached to the network is not propagated in API versions 1.28 and up.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON encoded value of the filters (a `map[string][]string`) to process on the networks list.  Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), returns all    networks that are not in use by a container. When set to `false`    (or `0`), only networks that are in use by one or more    containers are returned. - `driver=<driver-name>` Matches a network's driver. - `id=<network-id>` Matches all or part of a network ID. - `label=<key>` or `label=<key>=<value>` of a network label. - `name=<network-name>` Matches all or part of a network name. - `scope=[\"swarm\"|\"global\"|\"local\"]` Filters networks by scope (`swarm`, `global`, or `local`). - `type=[\"custom\"|\"builtin\"]` Filters networks by type. The `custom` keyword returns all user-defined networks.
  Future<Response> networkListWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/networks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List networks
  ///
  /// Returns a list of networks. For details on the format, see the [network inspect endpoint](#operation/NetworkInspect).  Note that it uses a different, smaller representation of a network than inspecting a single network. For example, the list of containers attached to the network is not propagated in API versions 1.28 and up.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON encoded value of the filters (a `map[string][]string`) to process on the networks list.  Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), returns all    networks that are not in use by a container. When set to `false`    (or `0`), only networks that are in use by one or more    containers are returned. - `driver=<driver-name>` Matches a network's driver. - `id=<network-id>` Matches all or part of a network ID. - `label=<key>` or `label=<key>=<value>` of a network label. - `name=<network-name>` Matches all or part of a network name. - `scope=[\"swarm\"|\"global\"|\"local\"]` Filters networks by scope (`swarm`, `global`, or `local`). - `type=[\"custom\"|\"builtin\"]` Filters networks by type. The `custom` keyword returns all user-defined networks.
  Future<List<Network>?> networkList({
    String? filters,
  }) async {
    final response = await networkListWithHttpInfo(
      filters: filters,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Network>')
              as List)
          .cast<Network>()
          .toList(growable: false);
    }
    return null;
  }

  /// Delete unused networks
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `until=<timestamp>` Prune networks created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune networks with (or without, in case `label!=...` is used) the specified labels.
  Future<Response> networkPruneWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/networks/prune';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete unused networks
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `until=<timestamp>` Prune networks created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune networks with (or without, in case `label!=...` is used) the specified labels.
  Future<NetworkPruneResponse?> networkPrune({
    String? filters,
  }) async {
    final response = await networkPruneWithHttpInfo(
      filters: filters,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'NetworkPruneResponse',
      ) as NetworkPruneResponse;
    }
    return null;
  }
}
