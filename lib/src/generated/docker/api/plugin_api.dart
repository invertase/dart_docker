//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginApi {
  PluginApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get plugin privileges
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] remote (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  Future<Response> getPluginPrivilegesWithHttpInfo(
    String remote,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/privileges';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'remote', remote));

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

  /// Get plugin privileges
  ///
  /// Parameters:
  ///
  /// * [String] remote (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  Future<List<PluginPrivilege>?> getPluginPrivileges(
    String remote,
  ) async {
    final response = await getPluginPrivilegesWithHttpInfo(
      remote,
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
      return (await apiClient.deserializeAsync(
              responseBody, 'List<PluginPrivilege>') as List)
          .cast<PluginPrivilege>()
          .toList(growable: false);
    }
    return null;
  }

  /// Create a plugin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [MultipartFile] tarContext:
  ///   Path to tar containing plugin rootfs and manifest
  Future<Response> pluginCreateWithHttpInfo(
    String name, {
    MultipartFile? tarContext,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/create';

    // ignore: prefer_final_locals
    Object? postBody = tarContext;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'name', name));

    const contentTypes = <String>['application/x-tar'];

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

  /// Create a plugin
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [MultipartFile] tarContext:
  ///   Path to tar containing plugin rootfs and manifest
  Future<void> pluginCreate(
    String name, {
    MultipartFile? tarContext,
  }) async {
    final response = await pluginCreateWithHttpInfo(
      name,
      tarContext: tarContext,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a plugin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [bool] force:
  ///   Disable the plugin before removing. This may result in issues if the plugin is in use by a container.
  Future<Response> pluginDeleteWithHttpInfo(
    String name, {
    bool? force,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{name}'.replaceAll('{name}', name);

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

  /// Remove a plugin
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [bool] force:
  ///   Disable the plugin before removing. This may result in issues if the plugin is in use by a container.
  Future<Plugin?> pluginDelete(
    String name, {
    bool? force,
  }) async {
    final response = await pluginDeleteWithHttpInfo(
      name,
      force: force,
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
        'Plugin',
      ) as Plugin;
    }
    return null;
  }

  /// Disable a plugin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [bool] force:
  ///   Force disable a plugin even if still in use.
  Future<Response> pluginDisableWithHttpInfo(
    String name, {
    bool? force,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{name}/disable'.replaceAll('{name}', name);

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

  /// Disable a plugin
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [bool] force:
  ///   Force disable a plugin even if still in use.
  Future<void> pluginDisable(
    String name, {
    bool? force,
  }) async {
    final response = await pluginDisableWithHttpInfo(
      name,
      force: force,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Enable a plugin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [int] timeout:
  ///   Set the HTTP client timeout (in seconds)
  Future<Response> pluginEnableWithHttpInfo(
    String name, {
    int? timeout,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{name}/enable'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (timeout != null) {
      queryParams.addAll(_queryParams('', 'timeout', timeout));
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

  /// Enable a plugin
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [int] timeout:
  ///   Set the HTTP client timeout (in seconds)
  Future<void> pluginEnable(
    String name, {
    int? timeout,
  }) async {
    final response = await pluginEnableWithHttpInfo(
      name,
      timeout: timeout,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Inspect a plugin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  Future<Response> pluginInspectWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{name}/json'.replaceAll('{name}', name);

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

  /// Inspect a plugin
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  Future<Plugin?> pluginInspect(
    String name,
  ) async {
    final response = await pluginInspectWithHttpInfo(
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
        'Plugin',
      ) as Plugin;
    }
    return null;
  }

  /// List plugins
  ///
  /// Returns information about installed plugins.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the plugin list.  Available filters:  - `capability=<capability name>` - `enable=<true>|<false>`
  Future<Response> pluginListWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins';

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

  /// List plugins
  ///
  /// Returns information about installed plugins.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the plugin list.  Available filters:  - `capability=<capability name>` - `enable=<true>|<false>`
  Future<List<Plugin>?> pluginList({
    String? filters,
  }) async {
    final response = await pluginListWithHttpInfo(
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
      return (await apiClient.deserializeAsync(responseBody, 'List<Plugin>')
              as List)
          .cast<Plugin>()
          .toList(growable: false);
    }
    return null;
  }

  /// Install a plugin
  ///
  /// Pulls and installs a plugin. After the plugin is installed, it can be enabled using the [`POST /plugins/{name}/enable` endpoint](#operation/PostPluginsEnable).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] remote (required):
  ///   Remote reference for plugin to install.  The `:latest` tag is optional, and is used as the default if omitted.
  ///
  /// * [String] name:
  ///   Local name for the pulled plugin.  The `:latest` tag is optional, and is used as the default if omitted.
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.
  ///
  /// * [List<PluginPrivilege>] body:
  Future<Response> pluginPullWithHttpInfo(
    String remote, {
    String? name,
    String? xRegistryAuth,
    List<PluginPrivilege>? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/pull';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'remote', remote));
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }

    if (xRegistryAuth != null) {
      headerParams[r'X-Registry-Auth'] = parameterToString(xRegistryAuth);
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

  /// Install a plugin
  ///
  /// Pulls and installs a plugin. After the plugin is installed, it can be enabled using the [`POST /plugins/{name}/enable` endpoint](#operation/PostPluginsEnable).
  ///
  /// Parameters:
  ///
  /// * [String] remote (required):
  ///   Remote reference for plugin to install.  The `:latest` tag is optional, and is used as the default if omitted.
  ///
  /// * [String] name:
  ///   Local name for the pulled plugin.  The `:latest` tag is optional, and is used as the default if omitted.
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.
  ///
  /// * [List<PluginPrivilege>] body:
  Future<void> pluginPull(
    String remote, {
    String? name,
    String? xRegistryAuth,
    List<PluginPrivilege>? body,
  }) async {
    final response = await pluginPullWithHttpInfo(
      remote,
      name: name,
      xRegistryAuth: xRegistryAuth,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Push a plugin
  ///
  /// Push a plugin to the registry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  Future<Response> pluginPushWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{name}/push'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Push a plugin
  ///
  /// Push a plugin to the registry.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  Future<void> pluginPush(
    String name,
  ) async {
    final response = await pluginPushWithHttpInfo(
      name,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Configure a plugin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [List<String>] body:
  Future<Response> pluginSetWithHttpInfo(
    String name, {
    List<String>? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{name}/set'.replaceAll('{name}', name);

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

  /// Configure a plugin
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [List<String>] body:
  Future<void> pluginSet(
    String name, {
    List<String>? body,
  }) async {
    final response = await pluginSetWithHttpInfo(
      name,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upgrade a plugin
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [String] remote (required):
  ///   Remote reference to upgrade to.  The `:latest` tag is optional, and is used as the default if omitted.
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.
  ///
  /// * [List<PluginPrivilege>] body:
  Future<Response> pluginUpgradeWithHttpInfo(
    String name,
    String remote, {
    String? xRegistryAuth,
    List<PluginPrivilege>? body,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/plugins/{name}/upgrade'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'remote', remote));

    if (xRegistryAuth != null) {
      headerParams[r'X-Registry-Auth'] = parameterToString(xRegistryAuth);
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

  /// Upgrade a plugin
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   The name of the plugin. The `:latest` tag is optional, and is the default if omitted.
  ///
  /// * [String] remote (required):
  ///   Remote reference to upgrade to.  The `:latest` tag is optional, and is used as the default if omitted.
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.
  ///
  /// * [List<PluginPrivilege>] body:
  Future<void> pluginUpgrade(
    String name,
    String remote, {
    String? xRegistryAuth,
    List<PluginPrivilege>? body,
  }) async {
    final response = await pluginUpgradeWithHttpInfo(
      name,
      remote,
      xRegistryAuth: xRegistryAuth,
      body: body,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
