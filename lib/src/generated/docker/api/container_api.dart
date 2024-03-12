//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerApi {
  ContainerApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get an archive of a filesystem resource in a container
  ///
  /// Get a tar archive of a resource in the filesystem of container id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] path (required):
  ///   Resource in the container’s filesystem to archive.
  Future<Response> containerArchiveWithHttpInfo(
    String id,
    String path,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/archive'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'path', path));

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

  /// Get an archive of a filesystem resource in a container
  ///
  /// Get a tar archive of a resource in the filesystem of container id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] path (required):
  ///   Resource in the container’s filesystem to archive.
  Future<void> containerArchive(
    String id,
    String path,
  ) async {
    final response = await containerArchiveWithHttpInfo(
      id,
      path,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get information about files in a container
  ///
  /// A response header `X-Docker-Container-Path-Stat` is returned, containing a base64 - encoded JSON object with some filesystem header information about the path.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] path (required):
  ///   Resource in the container’s filesystem to archive.
  Future<Response> containerArchiveInfoWithHttpInfo(
    String id,
    String path,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/archive'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'path', path));

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'HEAD',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get information about files in a container
  ///
  /// A response header `X-Docker-Container-Path-Stat` is returned, containing a base64 - encoded JSON object with some filesystem header information about the path.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] path (required):
  ///   Resource in the container’s filesystem to archive.
  Future<void> containerArchiveInfo(
    String id,
    String path,
  ) async {
    final response = await containerArchiveInfoWithHttpInfo(
      id,
      path,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Attach to a container
  ///
  /// Attach to a container to read its output or send it input. You can attach to the same container multiple times and you can reattach to containers that have been detached.  Either the `stream` or `logs` parameter must be `true` for this endpoint to do anything.  See the [documentation for the `docker attach` command](https://docs.docker.com/engine/reference/commandline/attach/) for more details.  ### Hijacking  This endpoint hijacks the HTTP connection to transport `stdin`, `stdout`, and `stderr` on the same socket.  This is the response from the daemon for an attach request:  ``` HTTP/1.1 200 OK Content-Type: application/vnd.docker.raw-stream  [STREAM] ```  After the headers and two new lines, the TCP connection can now be used for raw, bidirectional communication between the client and server.  To hint potential proxies about connection hijacking, the Docker client can also optionally send connection upgrade headers.  For example, the client sends this request to upgrade the connection:  ``` POST /containers/16253994b7c4/attach?stream=1&stdout=1 HTTP/1.1 Upgrade: tcp Connection: Upgrade ```  The Docker daemon will respond with a `101 UPGRADED` response, and will similarly follow with the raw stream:  ``` HTTP/1.1 101 UPGRADED Content-Type: application/vnd.docker.raw-stream Connection: Upgrade Upgrade: tcp  [STREAM] ```  ### Stream format  When the TTY setting is disabled in [`POST /containers/create`](#operation/ContainerCreate), the HTTP Content-Type header is set to application/vnd.docker.multiplexed-stream and the stream over the hijacked connected is multiplexed to separate out `stdout` and `stderr`. The stream consists of a series of frames, each containing a header and a payload.  The header contains the information which the stream writes (`stdout` or `stderr`). It also contains the size of the associated frame encoded in the last four bytes (`uint32`).  It is encoded on the first eight bytes like this:  ```go header := [8]byte{STREAM_TYPE, 0, 0, 0, SIZE1, SIZE2, SIZE3, SIZE4} ```  `STREAM_TYPE` can be:  - 0: `stdin` (is written on `stdout`) - 1: `stdout` - 2: `stderr`  `SIZE1, SIZE2, SIZE3, SIZE4` are the four bytes of the `uint32` size encoded as big endian.  Following the header is the payload, which is the specified number of bytes of `STREAM_TYPE`.  The simplest way to implement this protocol is the following:  1. Read 8 bytes. 2. Choose `stdout` or `stderr` depending on the first byte. 3. Extract the frame size from the last four bytes. 4. Read the extracted size and output it on the correct output. 5. Goto 1.  ### Stream format when using a TTY  When the TTY setting is enabled in [`POST /containers/create`](#operation/ContainerCreate), the stream is not multiplexed. The data exchanged over the hijacked connection is simply the raw data from the process PTY and client's `stdin`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] detachKeys:
  ///   Override the key sequence for detaching a container.Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`.
  ///
  /// * [bool] logs:
  ///   Replay previous logs from the container.  This is useful for attaching to a container that has started and you want to output everything since the container started.  If `stream` is also enabled, once all the previous output has been returned, it will seamlessly transition into streaming current output.
  ///
  /// * [bool] stream:
  ///   Stream attached streams from the time the request was made onwards.
  ///
  /// * [bool] stdin:
  ///   Attach to `stdin`
  ///
  /// * [bool] stdout:
  ///   Attach to `stdout`
  ///
  /// * [bool] stderr:
  ///   Attach to `stderr`
  Future<Response> containerAttachWithHttpInfo(
    String id, {
    String? detachKeys,
    bool? logs,
    bool? stream,
    bool? stdin,
    bool? stdout,
    bool? stderr,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/attach'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (detachKeys != null) {
      queryParams.addAll(_queryParams('', 'detachKeys', detachKeys));
    }
    if (logs != null) {
      queryParams.addAll(_queryParams('', 'logs', logs));
    }
    if (stream != null) {
      queryParams.addAll(_queryParams('', 'stream', stream));
    }
    if (stdin != null) {
      queryParams.addAll(_queryParams('', 'stdin', stdin));
    }
    if (stdout != null) {
      queryParams.addAll(_queryParams('', 'stdout', stdout));
    }
    if (stderr != null) {
      queryParams.addAll(_queryParams('', 'stderr', stderr));
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

  /// Attach to a container
  ///
  /// Attach to a container to read its output or send it input. You can attach to the same container multiple times and you can reattach to containers that have been detached.  Either the `stream` or `logs` parameter must be `true` for this endpoint to do anything.  See the [documentation for the `docker attach` command](https://docs.docker.com/engine/reference/commandline/attach/) for more details.  ### Hijacking  This endpoint hijacks the HTTP connection to transport `stdin`, `stdout`, and `stderr` on the same socket.  This is the response from the daemon for an attach request:  ``` HTTP/1.1 200 OK Content-Type: application/vnd.docker.raw-stream  [STREAM] ```  After the headers and two new lines, the TCP connection can now be used for raw, bidirectional communication between the client and server.  To hint potential proxies about connection hijacking, the Docker client can also optionally send connection upgrade headers.  For example, the client sends this request to upgrade the connection:  ``` POST /containers/16253994b7c4/attach?stream=1&stdout=1 HTTP/1.1 Upgrade: tcp Connection: Upgrade ```  The Docker daemon will respond with a `101 UPGRADED` response, and will similarly follow with the raw stream:  ``` HTTP/1.1 101 UPGRADED Content-Type: application/vnd.docker.raw-stream Connection: Upgrade Upgrade: tcp  [STREAM] ```  ### Stream format  When the TTY setting is disabled in [`POST /containers/create`](#operation/ContainerCreate), the HTTP Content-Type header is set to application/vnd.docker.multiplexed-stream and the stream over the hijacked connected is multiplexed to separate out `stdout` and `stderr`. The stream consists of a series of frames, each containing a header and a payload.  The header contains the information which the stream writes (`stdout` or `stderr`). It also contains the size of the associated frame encoded in the last four bytes (`uint32`).  It is encoded on the first eight bytes like this:  ```go header := [8]byte{STREAM_TYPE, 0, 0, 0, SIZE1, SIZE2, SIZE3, SIZE4} ```  `STREAM_TYPE` can be:  - 0: `stdin` (is written on `stdout`) - 1: `stdout` - 2: `stderr`  `SIZE1, SIZE2, SIZE3, SIZE4` are the four bytes of the `uint32` size encoded as big endian.  Following the header is the payload, which is the specified number of bytes of `STREAM_TYPE`.  The simplest way to implement this protocol is the following:  1. Read 8 bytes. 2. Choose `stdout` or `stderr` depending on the first byte. 3. Extract the frame size from the last four bytes. 4. Read the extracted size and output it on the correct output. 5. Goto 1.  ### Stream format when using a TTY  When the TTY setting is enabled in [`POST /containers/create`](#operation/ContainerCreate), the stream is not multiplexed. The data exchanged over the hijacked connection is simply the raw data from the process PTY and client's `stdin`.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] detachKeys:
  ///   Override the key sequence for detaching a container.Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`.
  ///
  /// * [bool] logs:
  ///   Replay previous logs from the container.  This is useful for attaching to a container that has started and you want to output everything since the container started.  If `stream` is also enabled, once all the previous output has been returned, it will seamlessly transition into streaming current output.
  ///
  /// * [bool] stream:
  ///   Stream attached streams from the time the request was made onwards.
  ///
  /// * [bool] stdin:
  ///   Attach to `stdin`
  ///
  /// * [bool] stdout:
  ///   Attach to `stdout`
  ///
  /// * [bool] stderr:
  ///   Attach to `stderr`
  Future<void> containerAttach(
    String id, {
    String? detachKeys,
    bool? logs,
    bool? stream,
    bool? stdin,
    bool? stdout,
    bool? stderr,
  }) async {
    final response = await containerAttachWithHttpInfo(
      id,
      detachKeys: detachKeys,
      logs: logs,
      stream: stream,
      stdin: stdin,
      stdout: stdout,
      stderr: stderr,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Attach to a container via a websocket
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] detachKeys:
  ///   Override the key sequence for detaching a container.Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,`, or `_`.
  ///
  /// * [bool] logs:
  ///   Return logs
  ///
  /// * [bool] stream:
  ///   Return stream
  ///
  /// * [bool] stdin:
  ///   Attach to `stdin`
  ///
  /// * [bool] stdout:
  ///   Attach to `stdout`
  ///
  /// * [bool] stderr:
  ///   Attach to `stderr`
  Future<Response> containerAttachWebsocketWithHttpInfo(
    String id, {
    String? detachKeys,
    bool? logs,
    bool? stream,
    bool? stdin,
    bool? stdout,
    bool? stderr,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/attach/ws'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (detachKeys != null) {
      queryParams.addAll(_queryParams('', 'detachKeys', detachKeys));
    }
    if (logs != null) {
      queryParams.addAll(_queryParams('', 'logs', logs));
    }
    if (stream != null) {
      queryParams.addAll(_queryParams('', 'stream', stream));
    }
    if (stdin != null) {
      queryParams.addAll(_queryParams('', 'stdin', stdin));
    }
    if (stdout != null) {
      queryParams.addAll(_queryParams('', 'stdout', stdout));
    }
    if (stderr != null) {
      queryParams.addAll(_queryParams('', 'stderr', stderr));
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

  /// Attach to a container via a websocket
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] detachKeys:
  ///   Override the key sequence for detaching a container.Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,`, or `_`.
  ///
  /// * [bool] logs:
  ///   Return logs
  ///
  /// * [bool] stream:
  ///   Return stream
  ///
  /// * [bool] stdin:
  ///   Attach to `stdin`
  ///
  /// * [bool] stdout:
  ///   Attach to `stdout`
  ///
  /// * [bool] stderr:
  ///   Attach to `stderr`
  Future<void> containerAttachWebsocket(
    String id, {
    String? detachKeys,
    bool? logs,
    bool? stream,
    bool? stdin,
    bool? stdout,
    bool? stderr,
  }) async {
    final response = await containerAttachWebsocketWithHttpInfo(
      id,
      detachKeys: detachKeys,
      logs: logs,
      stream: stream,
      stdin: stdin,
      stdout: stdout,
      stderr: stderr,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get changes on a container’s filesystem
  ///
  /// Returns which files in a container's filesystem have been added, deleted, or modified. The `Kind` of modification can be one of:  - `0`: Modified (\"C\") - `1`: Added (\"A\") - `2`: Deleted (\"D\")
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  Future<Response> containerChangesWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/changes'.replaceAll('{id}', id);

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

  /// Get changes on a container’s filesystem
  ///
  /// Returns which files in a container's filesystem have been added, deleted, or modified. The `Kind` of modification can be one of:  - `0`: Modified (\"C\") - `1`: Added (\"A\") - `2`: Deleted (\"D\")
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  Future<List<FilesystemChange>?> containerChanges(
    String id,
  ) async {
    final response = await containerChangesWithHttpInfo(
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
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<FilesystemChange>') as List)
          .cast<FilesystemChange>()
          .toList(growable: false);
    }
    return null;
  }

  /// Create a container
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ContainerCreateRequest] body (required):
  ///   Container to create
  ///
  /// * [String] name:
  ///   Assign the specified name to the container. Must match `/?[a-zA-Z0-9][a-zA-Z0-9_.-]+`.
  ///
  /// * [String] platform:
  ///   Platform in the format `os[/arch[/variant]]` used for image lookup.  When specified, the daemon checks if the requested image is present in the local image cache with the given OS and Architecture, and otherwise returns a `404` status.  If the option is not set, the host's native OS and Architecture are used to look up the image in the image cache. However, if no platform is passed and the given image does exist in the local image cache, but its OS or architecture does not match, the container is created with the available image, and a warning is added to the `Warnings` field in the response, for example;      WARNING: The requested image's platform (linux/arm64/v8) does not              match the detected host platform (linux/amd64) and no              specific platform was requested
  Future<Response> containerCreateWithHttpInfo(
    ContainerCreateRequest body, {
    String? name,
    String? platform,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/create';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (platform != null) {
      queryParams.addAll(_queryParams('', 'platform', platform));
    }

    const contentTypes = <String>[
      'application/json',
      'application/octet-stream'
    ];

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

  /// Create a container
  ///
  /// Parameters:
  ///
  /// * [ContainerCreateRequest] body (required):
  ///   Container to create
  ///
  /// * [String] name:
  ///   Assign the specified name to the container. Must match `/?[a-zA-Z0-9][a-zA-Z0-9_.-]+`.
  ///
  /// * [String] platform:
  ///   Platform in the format `os[/arch[/variant]]` used for image lookup.  When specified, the daemon checks if the requested image is present in the local image cache with the given OS and Architecture, and otherwise returns a `404` status.  If the option is not set, the host's native OS and Architecture are used to look up the image in the image cache. However, if no platform is passed and the given image does exist in the local image cache, but its OS or architecture does not match, the container is created with the available image, and a warning is added to the `Warnings` field in the response, for example;      WARNING: The requested image's platform (linux/arm64/v8) does not              match the detected host platform (linux/amd64) and no              specific platform was requested
  Future<ContainerCreateResponse?> containerCreate(
    ContainerCreateRequest body, {
    String? name,
    String? platform,
  }) async {
    final response = await containerCreateWithHttpInfo(
      body,
      name: name,
      platform: platform,
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
        'ContainerCreateResponse',
      ) as ContainerCreateResponse;
    }
    return null;
  }

  /// Remove a container
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [bool] v:
  ///   Remove anonymous volumes associated with the container.
  ///
  /// * [bool] force:
  ///   If the container is running, kill it before removing it.
  ///
  /// * [bool] link:
  ///   Remove the specified link associated with the container.
  Future<Response> containerDeleteWithHttpInfo(
    String id, {
    bool? v,
    bool? force,
    bool? link,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (v != null) {
      queryParams.addAll(_queryParams('', 'v', v));
    }
    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }
    if (link != null) {
      queryParams.addAll(_queryParams('', 'link', link));
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

  /// Remove a container
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [bool] v:
  ///   Remove anonymous volumes associated with the container.
  ///
  /// * [bool] force:
  ///   If the container is running, kill it before removing it.
  ///
  /// * [bool] link:
  ///   Remove the specified link associated with the container.
  Future<void> containerDelete(
    String id, {
    bool? v,
    bool? force,
    bool? link,
  }) async {
    final response = await containerDeleteWithHttpInfo(
      id,
      v: v,
      force: force,
      link: link,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Export a container
  ///
  /// Export the contents of a container as a tarball.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  Future<Response> containerExportWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/export'.replaceAll('{id}', id);

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

  /// Export a container
  ///
  /// Export the contents of a container as a tarball.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  Future<void> containerExport(
    String id,
  ) async {
    final response = await containerExportWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Inspect a container
  ///
  /// Return low-level information about a container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [bool] size:
  ///   Return the size of container as fields `SizeRw` and `SizeRootFs`
  Future<Response> containerInspectWithHttpInfo(
    String id, {
    bool? size,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/json'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
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

  /// Inspect a container
  ///
  /// Return low-level information about a container.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [bool] size:
  ///   Return the size of container as fields `SizeRw` and `SizeRootFs`
  Future<ContainerInspectResponse?> containerInspect(
    String id, {
    bool? size,
  }) async {
    final response = await containerInspectWithHttpInfo(
      id,
      size: size,
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
        'ContainerInspectResponse',
      ) as ContainerInspectResponse;
    }
    return null;
  }

  /// Kill a container
  ///
  /// Send a POSIX signal to a container, defaulting to killing to the container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] signal:
  ///   Signal to send to the container as an integer or string (e.g. `SIGINT`).
  Future<Response> containerKillWithHttpInfo(
    String id, {
    String? signal,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/kill'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (signal != null) {
      queryParams.addAll(_queryParams('', 'signal', signal));
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

  /// Kill a container
  ///
  /// Send a POSIX signal to a container, defaulting to killing to the container.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] signal:
  ///   Signal to send to the container as an integer or string (e.g. `SIGINT`).
  Future<void> containerKill(
    String id, {
    String? signal,
  }) async {
    final response = await containerKillWithHttpInfo(
      id,
      signal: signal,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List containers
  ///
  /// Returns a list of containers. For details on the format, see the [inspect endpoint](#operation/ContainerInspect).  Note that it uses a different, smaller representation of a container than inspecting a single container. For example, the list of linked containers is not propagated .
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] all:
  ///   Return all containers. By default, only running containers are shown.
  ///
  /// * [int] limit:
  ///   Return this number of most recently created containers, including non-running ones.
  ///
  /// * [bool] size:
  ///   Return the size of container as fields `SizeRw` and `SizeRootFs`.
  ///
  /// * [String] filters:
  ///   Filters to process on the container list, encoded as JSON (a `map[string][]string`). For example, `{\"status\": [\"paused\"]}` will only return paused containers.  Available filters:  - `ancestor`=(`<image-name>[:<tag>]`, `<image id>`, or `<image@digest>`) - `before`=(`<container id>` or `<container name>`) - `expose`=(`<port>[/<proto>]`|`<startport-endport>/[<proto>]`) - `exited=<int>` containers with exit code of `<int>` - `health`=(`starting`|`healthy`|`unhealthy`|`none`) - `id=<ID>` a container's ID - `isolation=`(`default`|`process`|`hyperv`) (Windows daemon only) - `is-task=`(`true`|`false`) - `label=key` or `label=\"key=value\"` of a container label - `name=<name>` a container's name - `network`=(`<network id>` or `<network name>`) - `publish`=(`<port>[/<proto>]`|`<startport-endport>/[<proto>]`) - `since`=(`<container id>` or `<container name>`) - `status=`(`created`|`restarting`|`running`|`removing`|`paused`|`exited`|`dead`) - `volume`=(`<volume name>` or `<mount point destination>`)
  Future<Response> containerListWithHttpInfo({
    bool? all,
    int? limit,
    bool? size,
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/json';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
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

  /// List containers
  ///
  /// Returns a list of containers. For details on the format, see the [inspect endpoint](#operation/ContainerInspect).  Note that it uses a different, smaller representation of a container than inspecting a single container. For example, the list of linked containers is not propagated .
  ///
  /// Parameters:
  ///
  /// * [bool] all:
  ///   Return all containers. By default, only running containers are shown.
  ///
  /// * [int] limit:
  ///   Return this number of most recently created containers, including non-running ones.
  ///
  /// * [bool] size:
  ///   Return the size of container as fields `SizeRw` and `SizeRootFs`.
  ///
  /// * [String] filters:
  ///   Filters to process on the container list, encoded as JSON (a `map[string][]string`). For example, `{\"status\": [\"paused\"]}` will only return paused containers.  Available filters:  - `ancestor`=(`<image-name>[:<tag>]`, `<image id>`, or `<image@digest>`) - `before`=(`<container id>` or `<container name>`) - `expose`=(`<port>[/<proto>]`|`<startport-endport>/[<proto>]`) - `exited=<int>` containers with exit code of `<int>` - `health`=(`starting`|`healthy`|`unhealthy`|`none`) - `id=<ID>` a container's ID - `isolation=`(`default`|`process`|`hyperv`) (Windows daemon only) - `is-task=`(`true`|`false`) - `label=key` or `label=\"key=value\"` of a container label - `name=<name>` a container's name - `network`=(`<network id>` or `<network name>`) - `publish`=(`<port>[/<proto>]`|`<startport-endport>/[<proto>]`) - `since`=(`<container id>` or `<container name>`) - `status=`(`created`|`restarting`|`running`|`removing`|`paused`|`exited`|`dead`) - `volume`=(`<volume name>` or `<mount point destination>`)
  Future<List<ContainerSummary>?> containerList({
    bool? all,
    int? limit,
    bool? size,
    String? filters,
  }) async {
    final response = await containerListWithHttpInfo(
      all: all,
      limit: limit,
      size: size,
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
      return (await apiClient.deserializeAsync(
              responseBody, 'List<ContainerSummary>') as List)
          .cast<ContainerSummary>()
          .toList(growable: false);
    }
    return null;
  }

  /// Get container logs
  ///
  /// Get `stdout` and `stderr` logs from a container.  Note: This endpoint works only for containers with the `json-file` or `journald` logging driver.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
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
  /// * [int] until:
  ///   Only return logs before this time, as a UNIX timestamp
  ///
  /// * [bool] timestamps:
  ///   Add timestamps to every log line
  ///
  /// * [String] tail:
  ///   Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines.
  Future<Response> containerLogsWithHttpInfo(
    String id, {
    bool? follow,
    bool? stdout,
    bool? stderr,
    int? since,
    int? until,
    bool? timestamps,
    String? tail,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/logs'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
    if (until != null) {
      queryParams.addAll(_queryParams('', 'until', until));
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

  /// Get container logs
  ///
  /// Get `stdout` and `stderr` logs from a container.  Note: This endpoint works only for containers with the `json-file` or `journald` logging driver.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
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
  /// * [int] until:
  ///   Only return logs before this time, as a UNIX timestamp
  ///
  /// * [bool] timestamps:
  ///   Add timestamps to every log line
  ///
  /// * [String] tail:
  ///   Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines.
  Future<MultipartFile?> containerLogs(
    String id, {
    bool? follow,
    bool? stdout,
    bool? stderr,
    int? since,
    int? until,
    bool? timestamps,
    String? tail,
  }) async {
    final response = await containerLogsWithHttpInfo(
      id,
      follow: follow,
      stdout: stdout,
      stderr: stderr,
      since: since,
      until: until,
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

  /// Pause a container
  ///
  /// Use the freezer cgroup to suspend all processes in a container.  Traditionally, when suspending a process the `SIGSTOP` signal is used, which is observable by the process being suspended. With the freezer cgroup the process is unaware, and unable to capture, that it is being suspended, and subsequently resumed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  Future<Response> containerPauseWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/pause'.replaceAll('{id}', id);

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

  /// Pause a container
  ///
  /// Use the freezer cgroup to suspend all processes in a container.  Traditionally, when suspending a process the `SIGSTOP` signal is used, which is observable by the process being suspended. With the freezer cgroup the process is unaware, and unable to capture, that it is being suspended, and subsequently resumed.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  Future<void> containerPause(
    String id,
  ) async {
    final response = await containerPauseWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete stopped containers
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `until=<timestamp>` Prune containers created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune containers with (or without, in case `label!=...` is used) the specified labels.
  Future<Response> containerPruneWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/prune';

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

  /// Delete stopped containers
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `until=<timestamp>` Prune containers created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune containers with (or without, in case `label!=...` is used) the specified labels.
  Future<ContainerPruneResponse?> containerPrune({
    String? filters,
  }) async {
    final response = await containerPruneWithHttpInfo(
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
        'ContainerPruneResponse',
      ) as ContainerPruneResponse;
    }
    return null;
  }

  /// Rename a container
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] name (required):
  ///   New name for the container
  Future<Response> containerRenameWithHttpInfo(
    String id,
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/rename'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'name', name));

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

  /// Rename a container
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] name (required):
  ///   New name for the container
  Future<void> containerRename(
    String id,
    String name,
  ) async {
    final response = await containerRenameWithHttpInfo(
      id,
      name,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Resize a container TTY
  ///
  /// Resize the TTY for a container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [int] h:
  ///   Height of the TTY session in characters
  ///
  /// * [int] w:
  ///   Width of the TTY session in characters
  Future<Response> containerResizeWithHttpInfo(
    String id, {
    int? h,
    int? w,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/resize'.replaceAll('{id}', id);

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

  /// Resize a container TTY
  ///
  /// Resize the TTY for a container.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [int] h:
  ///   Height of the TTY session in characters
  ///
  /// * [int] w:
  ///   Width of the TTY session in characters
  Future<void> containerResize(
    String id, {
    int? h,
    int? w,
  }) async {
    final response = await containerResizeWithHttpInfo(
      id,
      h: h,
      w: w,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Restart a container
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] signal:
  ///   Signal to send to the container as an integer or string (e.g. `SIGINT`).
  ///
  /// * [int] t:
  ///   Number of seconds to wait before killing the container
  Future<Response> containerRestartWithHttpInfo(
    String id, {
    String? signal,
    int? t,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/restart'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (signal != null) {
      queryParams.addAll(_queryParams('', 'signal', signal));
    }
    if (t != null) {
      queryParams.addAll(_queryParams('', 't', t));
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

  /// Restart a container
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] signal:
  ///   Signal to send to the container as an integer or string (e.g. `SIGINT`).
  ///
  /// * [int] t:
  ///   Number of seconds to wait before killing the container
  Future<void> containerRestart(
    String id, {
    String? signal,
    int? t,
  }) async {
    final response = await containerRestartWithHttpInfo(
      id,
      signal: signal,
      t: t,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start a container
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] detachKeys:
  ///   Override the key sequence for detaching a container. Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`.
  Future<Response> containerStartWithHttpInfo(
    String id, {
    String? detachKeys,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/start'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (detachKeys != null) {
      queryParams.addAll(_queryParams('', 'detachKeys', detachKeys));
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

  /// Start a container
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] detachKeys:
  ///   Override the key sequence for detaching a container. Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`.
  Future<void> containerStart(
    String id, {
    String? detachKeys,
  }) async {
    final response = await containerStartWithHttpInfo(
      id,
      detachKeys: detachKeys,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get container stats based on resource usage
  ///
  /// This endpoint returns a live stream of a container’s resource usage statistics.  The `precpu_stats` is the CPU statistic of the *previous* read, and is used to calculate the CPU usage percentage. It is not an exact copy of the `cpu_stats` field.  If either `precpu_stats.online_cpus` or `cpu_stats.online_cpus` is nil then for compatibility with older daemons the length of the corresponding `cpu_usage.percpu_usage` array should be used.  On a cgroup v2 host, the following fields are not set * `blkio_stats`: all fields other than `io_service_bytes_recursive` * `cpu_stats`: `cpu_usage.percpu_usage` * `memory_stats`: `max_usage` and `failcnt` Also, `memory_stats.stats` fields are incompatible with cgroup v1.  To calculate the values shown by the `stats` command of the docker cli tool the following formulas can be used: * used_memory = `memory_stats.usage - memory_stats.stats.cache` * available_memory = `memory_stats.limit` * Memory usage % = `(used_memory / available_memory) * 100.0` * cpu_delta = `cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage` * system_cpu_delta = `cpu_stats.system_cpu_usage - precpu_stats.system_cpu_usage` * number_cpus = `lenght(cpu_stats.cpu_usage.percpu_usage)` or `cpu_stats.online_cpus` * CPU usage % = `(cpu_delta / system_cpu_delta) * number_cpus * 100.0`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [bool] stream:
  ///   Stream the output. If false, the stats will be output once and then it will disconnect.
  ///
  /// * [bool] oneShot:
  ///   Only get a single stat instead of waiting for 2 cycles. Must be used with `stream=false`.
  Future<Response> containerStatsWithHttpInfo(
    String id, {
    bool? stream,
    bool? oneShot,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/stats'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (stream != null) {
      queryParams.addAll(_queryParams('', 'stream', stream));
    }
    if (oneShot != null) {
      queryParams.addAll(_queryParams('', 'one-shot', oneShot));
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

  /// Get container stats based on resource usage
  ///
  /// This endpoint returns a live stream of a container’s resource usage statistics.  The `precpu_stats` is the CPU statistic of the *previous* read, and is used to calculate the CPU usage percentage. It is not an exact copy of the `cpu_stats` field.  If either `precpu_stats.online_cpus` or `cpu_stats.online_cpus` is nil then for compatibility with older daemons the length of the corresponding `cpu_usage.percpu_usage` array should be used.  On a cgroup v2 host, the following fields are not set * `blkio_stats`: all fields other than `io_service_bytes_recursive` * `cpu_stats`: `cpu_usage.percpu_usage` * `memory_stats`: `max_usage` and `failcnt` Also, `memory_stats.stats` fields are incompatible with cgroup v1.  To calculate the values shown by the `stats` command of the docker cli tool the following formulas can be used: * used_memory = `memory_stats.usage - memory_stats.stats.cache` * available_memory = `memory_stats.limit` * Memory usage % = `(used_memory / available_memory) * 100.0` * cpu_delta = `cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage` * system_cpu_delta = `cpu_stats.system_cpu_usage - precpu_stats.system_cpu_usage` * number_cpus = `lenght(cpu_stats.cpu_usage.percpu_usage)` or `cpu_stats.online_cpus` * CPU usage % = `(cpu_delta / system_cpu_delta) * number_cpus * 100.0`
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [bool] stream:
  ///   Stream the output. If false, the stats will be output once and then it will disconnect.
  ///
  /// * [bool] oneShot:
  ///   Only get a single stat instead of waiting for 2 cycles. Must be used with `stream=false`.
  Future<Object?> containerStats(
    String id, {
    bool? stream,
    bool? oneShot,
  }) async {
    final response = await containerStatsWithHttpInfo(
      id,
      stream: stream,
      oneShot: oneShot,
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
        'Object',
      ) as Object;
    }
    return null;
  }

  /// Stop a container
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] signal:
  ///   Signal to send to the container as an integer or string (e.g. `SIGINT`).
  ///
  /// * [int] t:
  ///   Number of seconds to wait before killing the container
  Future<Response> containerStopWithHttpInfo(
    String id, {
    String? signal,
    int? t,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/stop'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (signal != null) {
      queryParams.addAll(_queryParams('', 'signal', signal));
    }
    if (t != null) {
      queryParams.addAll(_queryParams('', 't', t));
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

  /// Stop a container
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] signal:
  ///   Signal to send to the container as an integer or string (e.g. `SIGINT`).
  ///
  /// * [int] t:
  ///   Number of seconds to wait before killing the container
  Future<void> containerStop(
    String id, {
    String? signal,
    int? t,
  }) async {
    final response = await containerStopWithHttpInfo(
      id,
      signal: signal,
      t: t,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List processes running inside a container
  ///
  /// On Unix systems, this is done by running the `ps` command. This endpoint is not supported on Windows.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] psArgs:
  ///   The arguments to pass to `ps`. For example, `aux`
  Future<Response> containerTopWithHttpInfo(
    String id, {
    String? psArgs,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/top'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (psArgs != null) {
      queryParams.addAll(_queryParams('', 'ps_args', psArgs));
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

  /// List processes running inside a container
  ///
  /// On Unix systems, this is done by running the `ps` command. This endpoint is not supported on Windows.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] psArgs:
  ///   The arguments to pass to `ps`. For example, `aux`
  Future<ContainerTopResponse?> containerTop(
    String id, {
    String? psArgs,
  }) async {
    final response = await containerTopWithHttpInfo(
      id,
      psArgs: psArgs,
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
        'ContainerTopResponse',
      ) as ContainerTopResponse;
    }
    return null;
  }

  /// Unpause a container
  ///
  /// Resume a container which has been paused.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  Future<Response> containerUnpauseWithHttpInfo(
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/unpause'.replaceAll('{id}', id);

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

  /// Unpause a container
  ///
  /// Resume a container which has been paused.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  Future<void> containerUnpause(
    String id,
  ) async {
    final response = await containerUnpauseWithHttpInfo(
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a container
  ///
  /// Change various configuration options of a container without having to recreate it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [ContainerUpdateRequest] update (required):
  Future<Response> containerUpdateWithHttpInfo(
    String id,
    ContainerUpdateRequest update,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/update'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = update;

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

  /// Update a container
  ///
  /// Change various configuration options of a container without having to recreate it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [ContainerUpdateRequest] update (required):
  Future<ContainerUpdateResponse?> containerUpdate(
    String id,
    ContainerUpdateRequest update,
  ) async {
    final response = await containerUpdateWithHttpInfo(
      id,
      update,
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
        'ContainerUpdateResponse',
      ) as ContainerUpdateResponse;
    }
    return null;
  }

  /// Wait for a container
  ///
  /// Block until a container stops, then returns the exit code.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] condition:
  ///   Wait until a container state reaches the given condition.  Defaults to `not-running` if omitted or empty.
  Future<Response> containerWaitWithHttpInfo(
    String id, {
    String? condition,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/wait'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (condition != null) {
      queryParams.addAll(_queryParams('', 'condition', condition));
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

  /// Wait for a container
  ///
  /// Block until a container stops, then returns the exit code.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] condition:
  ///   Wait until a container state reaches the given condition.  Defaults to `not-running` if omitted or empty.
  Future<ContainerWaitResponse?> containerWait(
    String id, {
    String? condition,
  }) async {
    final response = await containerWaitWithHttpInfo(
      id,
      condition: condition,
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
        'ContainerWaitResponse',
      ) as ContainerWaitResponse;
    }
    return null;
  }

  /// Extract an archive of files or folders to a directory in a container
  ///
  /// Upload a tar archive to be extracted to a path in the filesystem of container id. `path` parameter is asserted to be a directory. If it exists as a file, 400 error will be returned with message \"not a directory\".
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] path (required):
  ///   Path to a directory in the container to extract the archive’s contents into.
  ///
  /// * [MultipartFile] inputStream (required):
  ///   The input stream must be a tar archive compressed with one of the following algorithms: `identity` (no compression), `gzip`, `bzip2`, or `xz`.
  ///
  /// * [String] noOverwriteDirNonDir:
  ///   If `1`, `true`, or `True` then it will be an error if unpacking the given content would cause an existing directory to be replaced with a non-directory and vice versa.
  ///
  /// * [String] copyUIDGID:
  ///   If `1`, `true`, then it will copy UID/GID maps to the dest file or dir
  Future<Response> putContainerArchiveWithHttpInfo(
    String id,
    String path,
    MultipartFile inputStream, {
    String? noOverwriteDirNonDir,
    String? copyUIDGID,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/containers/{id}/archive'.replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = inputStream;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'path', path));
    if (noOverwriteDirNonDir != null) {
      queryParams.addAll(
          _queryParams('', 'noOverwriteDirNonDir', noOverwriteDirNonDir));
    }
    if (copyUIDGID != null) {
      queryParams.addAll(_queryParams('', 'copyUIDGID', copyUIDGID));
    }

    const contentTypes = <String>[
      'application/x-tar',
      'application/octet-stream'
    ];

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

  /// Extract an archive of files or folders to a directory in a container
  ///
  /// Upload a tar archive to be extracted to a path in the filesystem of container id. `path` parameter is asserted to be a directory. If it exists as a file, 400 error will be returned with message \"not a directory\".
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID or name of the container
  ///
  /// * [String] path (required):
  ///   Path to a directory in the container to extract the archive’s contents into.
  ///
  /// * [MultipartFile] inputStream (required):
  ///   The input stream must be a tar archive compressed with one of the following algorithms: `identity` (no compression), `gzip`, `bzip2`, or `xz`.
  ///
  /// * [String] noOverwriteDirNonDir:
  ///   If `1`, `true`, or `True` then it will be an error if unpacking the given content would cause an existing directory to be replaced with a non-directory and vice versa.
  ///
  /// * [String] copyUIDGID:
  ///   If `1`, `true`, then it will copy UID/GID maps to the dest file or dir
  Future<void> putContainerArchive(
    String id,
    String path,
    MultipartFile inputStream, {
    String? noOverwriteDirNonDir,
    String? copyUIDGID,
  }) async {
    final response = await putContainerArchiveWithHttpInfo(
      id,
      path,
      inputStream,
      noOverwriteDirNonDir: noOverwriteDirNonDir,
      copyUIDGID: copyUIDGID,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
