//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NodeApi {
  NodeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a node
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The ID or name of the node
  ///
  /// * [bool] force:
  ///   Force remove a node from the swarm
  Future<Response> nodeDeleteWithHttpInfo(
    String id, {
    bool? force,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/nodes/{id}'.replaceAll('{id}', id);

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

  /// Delete a node
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The ID or name of the node
  ///
  /// * [bool] force:
  ///   Force remove a node from the swarm
  Future<void> nodeDelete(
    String id, {
    bool? force,
  }) async {
    final response = await nodeDeleteWithHttpInfo(
      id,
      force: force,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Inspect a node
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The ID or name of the node
  Future<Response> nodeInspectWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/nodes/{id}'.replaceAll('{id}', id);

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

  /// Inspect a node
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The ID or name of the node
  Future<Node?> nodeInspect(
    String id,
  ) async {
    final response = await nodeInspectWithHttpInfo(
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
        'Node',
      ) as Node;
    }
    return null;
  }

  /// List nodes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the nodes list, encoded as JSON (a `map[string][]string`).  Available filters: - `id=<node id>` - `label=<engine label>` - `membership=`(`accepted`|`pending`)` - `name=<node name>` - `node.label=<node label>` - `role=`(`manager`|`worker`)`
  Future<Response> nodeListWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/nodes';

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

  /// List nodes
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the nodes list, encoded as JSON (a `map[string][]string`).  Available filters: - `id=<node id>` - `label=<engine label>` - `membership=`(`accepted`|`pending`)` - `name=<node name>` - `node.label=<node label>` - `role=`(`manager`|`worker`)`
  Future<List<Node>?> nodeList({
    String? filters,
  }) async {
    final response = await nodeListWithHttpInfo(
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
      return (await apiClient.deserializeAsync(responseBody, 'List<Node>')
              as List)
          .cast<Node>()
          .toList(growable: false);
    }
    return null;
  }

  /// Update a node
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The ID of the node
  ///
  /// * [int] version (required):
  ///   The version number of the node object being updated. This is required to avoid conflicting writes.
  ///
  /// * [NodeSpec] body:
  Future<Response> nodeUpdateWithHttpInfo(
    String id,
    int version, {
    NodeSpec? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/nodes/{id}/update'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'version', version));

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

  /// Update a node
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The ID of the node
  ///
  /// * [int] version (required):
  ///   The version number of the node object being updated. This is required to avoid conflicting writes.
  ///
  /// * [NodeSpec] body:
  Future<void> nodeUpdate(
    String id,
    int version, {
    NodeSpec? body,
  }) async {
    final response = await nodeUpdateWithHttpInfo(
      id,
      version,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
