//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceApi {
  ServiceApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a service
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ServiceCreateRequest] body (required):
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.
  Future<Response> serviceCreateWithHttpInfo(
    ServiceCreateRequest body, {
    String? xRegistryAuth,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/create';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (xRegistryAuth != null) {
      headerParams[r'X-Registry-Auth'] = parameterToString(xRegistryAuth);
    }

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

  /// Create a service
  ///
  /// Parameters:
  ///
  /// * [ServiceCreateRequest] body (required):
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.
  Future<ServiceCreateResponse?> serviceCreate(
    ServiceCreateRequest body, {
    String? xRegistryAuth,
  }) async {
    final response = await serviceCreateWithHttpInfo(
      body,
      xRegistryAuth: xRegistryAuth,
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
        'ServiceCreateResponse',
      ) as ServiceCreateResponse;
    }
    return null;
  }

  /// Delete a service
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of service.
  Future<Response> serviceDeleteWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{id}'.replaceAll('{id}', id);

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

  /// Delete a service
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of service.
  Future<void> serviceDelete(
    String id,
  ) async {
    final response = await serviceDeleteWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Inspect a service
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of service.
  ///
  /// * [bool] insertDefaults:
  ///   Fill empty fields with default values.
  Future<Response> serviceInspectWithHttpInfo(
    String id, {
    bool? insertDefaults,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (insertDefaults != null) {
      queryParams.addAll(_queryParams('', 'insertDefaults', insertDefaults));
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

  /// Inspect a service
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of service.
  ///
  /// * [bool] insertDefaults:
  ///   Fill empty fields with default values.
  Future<Service?> serviceInspect(
    String id, {
    bool? insertDefaults,
  }) async {
    final response = await serviceInspectWithHttpInfo(
      id,
      insertDefaults: insertDefaults,
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
        'Service',
      ) as Service;
    }
    return null;
  }

  /// List services
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the services list.  Available filters:  - `id=<service id>` - `label=<service label>` - `mode=[\"replicated\"|\"global\"]` - `name=<service name>`
  ///
  /// * [bool] status:
  ///   Include service status, with count of running and desired tasks.
  Future<Response> serviceListWithHttpInfo({
    String? filters,
    bool? status,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/services';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// List services
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the services list.  Available filters:  - `id=<service id>` - `label=<service label>` - `mode=[\"replicated\"|\"global\"]` - `name=<service name>`
  ///
  /// * [bool] status:
  ///   Include service status, with count of running and desired tasks.
  Future<List<Service>?> serviceList({
    String? filters,
    bool? status,
  }) async {
    final response = await serviceListWithHttpInfo(
      filters: filters,
      status: status,
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
      return (await apiClient.deserializeAsync(responseBody, 'List<Service>')
              as List)
          .cast<Service>()
          .toList(growable: false);
    }
    return null;
  }

  /// Get service logs
  ///
  /// Get `stdout` and `stderr` logs from a service. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the service
  ///
  /// * [bool] details:
  ///   Show service context and extra details provided to logs.
  ///
  /// * [bool] follow:
  ///   Keep connection after returning logs.
  ///
  /// * [bool] stdout:
  ///   Return logs from `stdout`
  ///
  /// * [bool] stderr:
  ///   Return logs from `stderr`
  ///
  /// * [int] since:
  ///   Only return logs since this time, as a UNIX timestamp
  ///
  /// * [bool] timestamps:
  ///   Add timestamps to every log line
  ///
  /// * [String] tail:
  ///   Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines.
  Future<Response> serviceLogsWithHttpInfo(
    String id, {
    bool? details,
    bool? follow,
    bool? stdout,
    bool? stderr,
    int? since,
    bool? timestamps,
    String? tail,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{id}/logs'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (details != null) {
      queryParams.addAll(_queryParams('', 'details', details));
    }
    if (follow != null) {
      queryParams.addAll(_queryParams('', 'follow', follow));
    }
    if (stdout != null) {
      queryParams.addAll(_queryParams('', 'stdout', stdout));
    }
    if (stderr != null) {
      queryParams.addAll(_queryParams('', 'stderr', stderr));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (timestamps != null) {
      queryParams.addAll(_queryParams('', 'timestamps', timestamps));
    }
    if (tail != null) {
      queryParams.addAll(_queryParams('', 'tail', tail));
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

  /// Get service logs
  ///
  /// Get `stdout` and `stderr` logs from a service. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the service
  ///
  /// * [bool] details:
  ///   Show service context and extra details provided to logs.
  ///
  /// * [bool] follow:
  ///   Keep connection after returning logs.
  ///
  /// * [bool] stdout:
  ///   Return logs from `stdout`
  ///
  /// * [bool] stderr:
  ///   Return logs from `stderr`
  ///
  /// * [int] since:
  ///   Only return logs since this time, as a UNIX timestamp
  ///
  /// * [bool] timestamps:
  ///   Add timestamps to every log line
  ///
  /// * [String] tail:
  ///   Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines.
  Future<MultipartFile?> serviceLogs(
    String id, {
    bool? details,
    bool? follow,
    bool? stdout,
    bool? stderr,
    int? since,
    bool? timestamps,
    String? tail,
  }) async {
    final response = await serviceLogsWithHttpInfo(
      id,
      details: details,
      follow: follow,
      stdout: stdout,
      stderr: stderr,
      since: since,
      timestamps: timestamps,
      tail: tail,
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
        'MultipartFile',
      ) as MultipartFile;
    }
    return null;
  }

  /// Update a service
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of service.
  ///
  /// * [int] version (required):
  ///   The version number of the service object being updated. This is required to avoid conflicting writes. This version number should be the value as currently set on the service *before* the update. You can find the current version by calling `GET /services/{id}`
  ///
  /// * [ServiceUpdateRequest] body (required):
  ///
  /// * [String] registryAuthFrom:
  ///   If the `X-Registry-Auth` header is not specified, this parameter indicates where to find registry authorization credentials.
  ///
  /// * [String] rollback:
  ///   Set to this parameter to `previous` to cause a server-side rollback to the previous service spec. The supplied spec will be ignored in this case.
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.
  Future<Response> serviceUpdateWithHttpInfo(
    String id,
    int version,
    ServiceUpdateRequest body, {
    String? registryAuthFrom,
    String? rollback,
    String? xRegistryAuth,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/services/{id}/update'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'version', version));
    if (registryAuthFrom != null) {
      queryParams
          .addAll(_queryParams('', 'registryAuthFrom', registryAuthFrom));
    }
    if (rollback != null) {
      queryParams.addAll(_queryParams('', 'rollback', rollback));
    }

    if (xRegistryAuth != null) {
      headerParams[r'X-Registry-Auth'] = parameterToString(xRegistryAuth);
    }

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

  /// Update a service
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of service.
  ///
  /// * [int] version (required):
  ///   The version number of the service object being updated. This is required to avoid conflicting writes. This version number should be the value as currently set on the service *before* the update. You can find the current version by calling `GET /services/{id}`
  ///
  /// * [ServiceUpdateRequest] body (required):
  ///
  /// * [String] registryAuthFrom:
  ///   If the `X-Registry-Auth` header is not specified, this parameter indicates where to find registry authorization credentials.
  ///
  /// * [String] rollback:
  ///   Set to this parameter to `previous` to cause a server-side rollback to the previous service spec. The supplied spec will be ignored in this case.
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.
  Future<ServiceUpdateResponse?> serviceUpdate(
    String id,
    int version,
    ServiceUpdateRequest body, {
    String? registryAuthFrom,
    String? rollback,
    String? xRegistryAuth,
  }) async {
    final response = await serviceUpdateWithHttpInfo(
      id,
      version,
      body,
      registryAuthFrom: registryAuthFrom,
      rollback: rollback,
      xRegistryAuth: xRegistryAuth,
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
        'ServiceUpdateResponse',
      ) as ServiceUpdateResponse;
    }
    return null;
  }
}
