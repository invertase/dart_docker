//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class VolumeApi {
  VolumeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a volume
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VolumeCreateOptions] volumeConfig (required):
  ///   Volume configuration
  Future<Response> volumeCreateWithHttpInfo(
    VolumeCreateOptions volumeConfig,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/volumes/create';

    // ignore: prefer_final_locals
    Object? postBody = volumeConfig;

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

  /// Create a volume
  ///
  /// Parameters:
  ///
  /// * [VolumeCreateOptions] volumeConfig (required):
  ///   Volume configuration
  Future<Volume?> volumeCreate(
    VolumeCreateOptions volumeConfig,
  ) async {
    final response = await volumeCreateWithHttpInfo(
      volumeConfig,
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
        'Volume',
      ) as Volume;
    }
    return null;
  }

  /// Remove a volume
  ///
  /// Instruct the driver to remove the volume.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Volume name or ID
  ///
  /// * [bool] force:
  ///   Force the removal of the volume
  Future<Response> volumeDeleteWithHttpInfo(
    String name, {
    bool? force,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/volumes/{name}'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }

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

  /// Remove a volume
  ///
  /// Instruct the driver to remove the volume.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Volume name or ID
  ///
  /// * [bool] force:
  ///   Force the removal of the volume
  Future<void> volumeDelete(
    String name, {
    bool? force,
  }) async {
    final response = await volumeDeleteWithHttpInfo(
      name,
      force: force,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Inspect a volume
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Volume name or ID
  Future<Response> volumeInspectWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/volumes/{name}'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Inspect a volume
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Volume name or ID
  Future<Volume?> volumeInspect(
    String name,
  ) async {
    final response = await volumeInspectWithHttpInfo(
      name,
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
        'Volume',
      ) as Volume;
    }
    return null;
  }

  /// List volumes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON encoded value of the filters (a `map[string][]string`) to process on the volumes list. Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), returns all    volumes that are not in use by a container. When set to `false`    (or `0`), only volumes that are in use by one or more    containers are returned. - `driver=<volume-driver-name>` Matches volumes based on their driver. - `label=<key>` or `label=<key>:<value>` Matches volumes based on    the presence of a `label` alone or a `label` and a value. - `name=<volume-name>` Matches all or part of a volume name.
  Future<Response> volumeListWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/volumes';

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

  /// List volumes
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON encoded value of the filters (a `map[string][]string`) to process on the volumes list. Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), returns all    volumes that are not in use by a container. When set to `false`    (or `0`), only volumes that are in use by one or more    containers are returned. - `driver=<volume-driver-name>` Matches volumes based on their driver. - `label=<key>` or `label=<key>:<value>` Matches volumes based on    the presence of a `label` alone or a `label` and a value. - `name=<volume-name>` Matches all or part of a volume name.
  Future<VolumeListResponse?> volumeList({
    String? filters,
  }) async {
    final response = await volumeListWithHttpInfo(
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
        'VolumeListResponse',
      ) as VolumeListResponse;
    }
    return null;
  }

  /// Delete unused volumes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune volumes with (or without, in case `label!=...` is used) the specified labels. - `all` (`all=true`) - Consider all (local) volumes for pruning and not just anonymous volumes.
  Future<Response> volumePruneWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/volumes/prune';

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

  /// Delete unused volumes
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune volumes with (or without, in case `label!=...` is used) the specified labels. - `all` (`all=true`) - Consider all (local) volumes for pruning and not just anonymous volumes.
  Future<VolumePruneResponse?> volumePrune({
    String? filters,
  }) async {
    final response = await volumePruneWithHttpInfo(
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
        'VolumePruneResponse',
      ) as VolumePruneResponse;
    }
    return null;
  }

  /// \"Update a volume. Valid only for Swarm cluster volumes\"
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name or ID of the volume
  ///
  /// * [int] version (required):
  ///   The version number of the volume being updated. This is required to avoid conflicting writes. Found in the volume's `ClusterVolume` field.
  ///
  /// * [VolumeUpdateRequest] body:
  ///   The spec of the volume to update. Currently, only Availability may change. All other fields must remain unchanged.
  Future<Response> volumeUpdateWithHttpInfo(
    String name,
    int version, {
    VolumeUpdateRequest? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/volumes/{name}'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'version', version));

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// \"Update a volume. Valid only for Swarm cluster volumes\"
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name or ID of the volume
  ///
  /// * [int] version (required):
  ///   The version number of the volume being updated. This is required to avoid conflicting writes. Found in the volume's `ClusterVolume` field.
  ///
  /// * [VolumeUpdateRequest] body:
  ///   The spec of the volume to update. Currently, only Availability may change. All other fields must remain unchanged.
  Future<void> volumeUpdate(
    String name,
    int version, {
    VolumeUpdateRequest? body,
  }) async {
    final response = await volumeUpdateWithHttpInfo(
      name,
      version,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
