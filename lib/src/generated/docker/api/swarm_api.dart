//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmApi {
  SwarmApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Initialize a new swarm
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SwarmInitRequest] body (required):
  Future<Response> swarmInitWithHttpInfo(
    SwarmInitRequest body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/swarm/init';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/plain'];

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

  /// Initialize a new swarm
  ///
  /// Parameters:
  ///
  /// * [SwarmInitRequest] body (required):
  Future<String?> swarmInit(
    SwarmInitRequest body,
  ) async {
    final response = await swarmInitWithHttpInfo(
      body,
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
        'String',
      ) as String;
    }
    return null;
  }

  /// Inspect swarm
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> swarmInspectWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/swarm';

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

  /// Inspect swarm
  Future<Swarm?> swarmInspect() async {
    final response = await swarmInspectWithHttpInfo();
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
        'Swarm',
      ) as Swarm;
    }
    return null;
  }

  /// Join an existing swarm
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SwarmJoinRequest] body (required):
  Future<Response> swarmJoinWithHttpInfo(
    SwarmJoinRequest body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/swarm/join';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/plain'];

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

  /// Join an existing swarm
  ///
  /// Parameters:
  ///
  /// * [SwarmJoinRequest] body (required):
  Future<void> swarmJoin(
    SwarmJoinRequest body,
  ) async {
    final response = await swarmJoinWithHttpInfo(
      body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Leave a swarm
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] force:
  ///   Force leave swarm, even if this is the last manager or that it will break the cluster.
  Future<Response> swarmLeaveWithHttpInfo({
    bool? force,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/swarm/leave';

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Leave a swarm
  ///
  /// Parameters:
  ///
  /// * [bool] force:
  ///   Force leave swarm, even if this is the last manager or that it will break the cluster.
  Future<void> swarmLeave({
    bool? force,
  }) async {
    final response = await swarmLeaveWithHttpInfo(
      force: force,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unlock a locked manager
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SwarmUnlockRequest] body (required):
  Future<Response> swarmUnlockWithHttpInfo(
    SwarmUnlockRequest body,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/swarm/unlock';

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Unlock a locked manager
  ///
  /// Parameters:
  ///
  /// * [SwarmUnlockRequest] body (required):
  Future<void> swarmUnlock(
    SwarmUnlockRequest body,
  ) async {
    final response = await swarmUnlockWithHttpInfo(
      body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get the unlock key
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> swarmUnlockkeyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/swarm/unlockkey';

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

  /// Get the unlock key
  Future<UnlockKeyResponse?> swarmUnlockkey() async {
    final response = await swarmUnlockkeyWithHttpInfo();
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
        'UnlockKeyResponse',
      ) as UnlockKeyResponse;
    }
    return null;
  }

  /// Update a swarm
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] version (required):
  ///   The version number of the swarm object being updated. This is required to avoid conflicting writes.
  ///
  /// * [SwarmSpec] body (required):
  ///
  /// * [bool] rotateWorkerToken:
  ///   Rotate the worker join token.
  ///
  /// * [bool] rotateManagerToken:
  ///   Rotate the manager join token.
  ///
  /// * [bool] rotateManagerUnlockKey:
  ///   Rotate the manager unlock key.
  Future<Response> swarmUpdateWithHttpInfo(
    int version,
    SwarmSpec body, {
    bool? rotateWorkerToken,
    bool? rotateManagerToken,
    bool? rotateManagerUnlockKey,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/swarm/update';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'version', version));
    if (rotateWorkerToken != null) {
      queryParams
          .addAll(_queryParams('', 'rotateWorkerToken', rotateWorkerToken));
    }
    if (rotateManagerToken != null) {
      queryParams
          .addAll(_queryParams('', 'rotateManagerToken', rotateManagerToken));
    }
    if (rotateManagerUnlockKey != null) {
      queryParams.addAll(
          _queryParams('', 'rotateManagerUnlockKey', rotateManagerUnlockKey));
    }

    const contentTypes = <String>['application/json', 'text/plain'];

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

  /// Update a swarm
  ///
  /// Parameters:
  ///
  /// * [int] version (required):
  ///   The version number of the swarm object being updated. This is required to avoid conflicting writes.
  ///
  /// * [SwarmSpec] body (required):
  ///
  /// * [bool] rotateWorkerToken:
  ///   Rotate the worker join token.
  ///
  /// * [bool] rotateManagerToken:
  ///   Rotate the manager join token.
  ///
  /// * [bool] rotateManagerUnlockKey:
  ///   Rotate the manager unlock key.
  Future<void> swarmUpdate(
    int version,
    SwarmSpec body, {
    bool? rotateWorkerToken,
    bool? rotateManagerToken,
    bool? rotateManagerUnlockKey,
  }) async {
    final response = await swarmUpdateWithHttpInfo(
      version,
      body,
      rotateWorkerToken: rotateWorkerToken,
      rotateManagerToken: rotateManagerToken,
      rotateManagerUnlockKey: rotateManagerUnlockKey,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
