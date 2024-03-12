//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ExecApi {
  ExecApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an exec instance
  ///
  /// Run a command inside a running container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of container
  ///
  /// * [ExecConfig] execConfig (required):
  ///   Exec configuration
  Future<Response> containerExecWithHttpInfo(
    String id,
    ExecConfig execConfig,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/exec'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = execConfig;

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

  /// Create an exec instance
  ///
  /// Run a command inside a running container.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of container
  ///
  /// * [ExecConfig] execConfig (required):
  ///   Exec configuration
  Future<IdResponse?> containerExec(
    String id,
    ExecConfig execConfig,
  ) async {
    final response = await containerExecWithHttpInfo(
      id,
      execConfig,
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
        'IdResponse',
      ) as IdResponse;
    }
    return null;
  }

  /// Inspect an exec instance
  ///
  /// Return low-level information about an exec instance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Exec instance ID
  Future<Response> execInspectWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/exec/{id}/json'.replaceAll('{id}', id);

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

  /// Inspect an exec instance
  ///
  /// Return low-level information about an exec instance.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Exec instance ID
  Future<ExecInspectResponse?> execInspect(
    String id,
  ) async {
    final response = await execInspectWithHttpInfo(
      id,
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
        'ExecInspectResponse',
      ) as ExecInspectResponse;
    }
    return null;
  }

  /// Resize an exec instance
  ///
  /// Resize the TTY session used by an exec instance. This endpoint only works if `tty` was specified as part of creating and starting the exec instance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Exec instance ID
  ///
  /// * [int] h:
  ///   Height of the TTY session in characters
  ///
  /// * [int] w:
  ///   Width of the TTY session in characters
  Future<Response> execResizeWithHttpInfo(
    String id, {
    int? h,
    int? w,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/exec/{id}/resize'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (h != null) {
      queryParams.addAll(_queryParams('', 'h', h));
    }
    if (w != null) {
      queryParams.addAll(_queryParams('', 'w', w));
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

  /// Resize an exec instance
  ///
  /// Resize the TTY session used by an exec instance. This endpoint only works if `tty` was specified as part of creating and starting the exec instance.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Exec instance ID
  ///
  /// * [int] h:
  ///   Height of the TTY session in characters
  ///
  /// * [int] w:
  ///   Width of the TTY session in characters
  Future<void> execResize(
    String id, {
    int? h,
    int? w,
  }) async {
    final response = await execResizeWithHttpInfo(
      id,
      h: h,
      w: w,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start an exec instance
  ///
  /// Starts a previously set up exec instance. If detach is true, this endpoint returns immediately after starting the command. Otherwise, it sets up an interactive session with the command.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Exec instance ID
  ///
  /// * [ExecStartConfig] execStartConfig:
  Future<Response> execStartWithHttpInfo(
    String id, {
    ExecStartConfig? execStartConfig,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/exec/{id}/start'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = execStartConfig;

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

  /// Start an exec instance
  ///
  /// Starts a previously set up exec instance. If detach is true, this endpoint returns immediately after starting the command. Otherwise, it sets up an interactive session with the command.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Exec instance ID
  ///
  /// * [ExecStartConfig] execStartConfig:
  Future<void> execStart(
    String id, {
    ExecStartConfig? execStartConfig,
  }) async {
    final response = await execStartWithHttpInfo(
      id,
      execStartConfig: execStartConfig,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
