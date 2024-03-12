//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskApi {
  TaskApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Inspect a task
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the task
  Future<Response> taskInspectWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks/{id}'.replaceAll('{id}', id);

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

  /// Inspect a task
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the task
  Future<Task?> taskInspect(
    String id,
  ) async {
    final response = await taskInspectWithHttpInfo(
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
        'Task',
      ) as Task;
    }
    return null;
  }

  /// List tasks
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the tasks list.  Available filters:  - `desired-state=(running | shutdown | accepted)` - `id=<task id>` - `label=key` or `label=\"key=value\"` - `name=<task name>` - `node=<node id or name>` - `service=<service name>`
  Future<Response> taskListWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/tasks';

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

  /// List tasks
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the tasks list.  Available filters:  - `desired-state=(running | shutdown | accepted)` - `id=<task id>` - `label=key` or `label=\"key=value\"` - `name=<task name>` - `node=<node id or name>` - `service=<service name>`
  Future<List<Task>?> taskList({
    String? filters,
  }) async {
    final response = await taskListWithHttpInfo(
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
      return (await apiClient.deserializeAsync(responseBody, 'List<Task>')
              as List)
          .cast<Task>()
          .toList(growable: false);
    }
    return null;
  }

  /// Get task logs
  ///
  /// Get `stdout` and `stderr` logs from a task. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the task
  ///
  /// * [bool] details:
  ///   Show task context and extra details provided to logs.
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
  Future<Response> taskLogsWithHttpInfo(
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
    final path = r'/tasks/{id}/logs'.replaceAll('{id}', id);

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

  /// Get task logs
  ///
  /// Get `stdout` and `stderr` logs from a task. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of the task
  ///
  /// * [bool] details:
  ///   Show task context and extra details provided to logs.
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
  Future<MultipartFile?> taskLogs(
    String id, {
    bool? details,
    bool? follow,
    bool? stdout,
    bool? stderr,
    int? since,
    bool? timestamps,
    String? tail,
  }) async {
    final response = await taskLogsWithHttpInfo(
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
}
