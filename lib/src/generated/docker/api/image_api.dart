//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ImageApi {
  ImageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete builder cache
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] keepStorage:
  ///   Amount of disk space in bytes to keep for cache
  ///
  /// * [bool] all:
  ///   Remove all types of build cache
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the list of build cache objects.  Available filters:  - `until=<timestamp>` remove cache older than `<timestamp>`. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon's local time. - `id=<id>` - `parent=<id>` - `type=<string>` - `description=<string>` - `inuse` - `shared` - `private`
  Future<Response> buildPruneWithHttpInfo({
    int? keepStorage,
    bool? all,
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/build/prune';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (keepStorage != null) {
      queryParams.addAll(_queryParams('', 'keep-storage', keepStorage));
    }
    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
    }
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

  /// Delete builder cache
  ///
  /// Parameters:
  ///
  /// * [int] keepStorage:
  ///   Amount of disk space in bytes to keep for cache
  ///
  /// * [bool] all:
  ///   Remove all types of build cache
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the list of build cache objects.  Available filters:  - `until=<timestamp>` remove cache older than `<timestamp>`. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon's local time. - `id=<id>` - `parent=<id>` - `type=<string>` - `description=<string>` - `inuse` - `shared` - `private`
  Future<BuildPruneResponse?> buildPrune({
    int? keepStorage,
    bool? all,
    String? filters,
  }) async {
    final response = await buildPruneWithHttpInfo(
      keepStorage: keepStorage,
      all: all,
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
        'BuildPruneResponse',
      ) as BuildPruneResponse;
    }
    return null;
  }

  /// Build an image
  ///
  /// Build an image from a tar archive with a `Dockerfile` in it.  The `Dockerfile` specifies how the image is built from the tar archive. It is typically in the archive's root, but can be at a different path or have a different name by specifying the `dockerfile` parameter. [See the `Dockerfile` reference for more information](https://docs.docker.com/engine/reference/builder/).  The Docker daemon performs a preliminary validation of the `Dockerfile` before starting the build, and returns an error if the syntax is incorrect. After that, each instruction is run one-by-one until the ID of the new image is output.  The build is canceled if the client drops the connection by quitting or being killed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dockerfile:
  ///   Path within the build context to the `Dockerfile`. This is ignored if `remote` is specified and points to an external `Dockerfile`.
  ///
  /// * [String] t:
  ///   A name and optional tag to apply to the image in the `name:tag` format. If you omit the tag the default `latest` value is assumed. You can provide several `t` parameters.
  ///
  /// * [String] extrahosts:
  ///   Extra hosts to add to /etc/hosts
  ///
  /// * [String] remote:
  ///   A Git repository URI or HTTP/HTTPS context URI. If the URI points to a single text file, the file’s contents are placed into a file called `Dockerfile` and the image is built from that file. If the URI points to a tarball, the file is downloaded by the daemon and the contents therein used as the context for the build. If the URI points to a tarball and the `dockerfile` parameter is also specified, there must be a file with the corresponding path inside the tarball.
  ///
  /// * [bool] q:
  ///   Suppress verbose build output.
  ///
  /// * [bool] nocache:
  ///   Do not use the cache when building the image.
  ///
  /// * [String] cachefrom:
  ///   JSON array of images used for build cache resolution.
  ///
  /// * [String] pull:
  ///   Attempt to pull the image even if an older image exists locally.
  ///
  /// * [bool] rm:
  ///   Remove intermediate containers after a successful build.
  ///
  /// * [bool] forcerm:
  ///   Always remove intermediate containers, even upon failure.
  ///
  /// * [int] memory:
  ///   Set memory limit for build.
  ///
  /// * [int] memswap:
  ///   Total memory (memory + swap). Set as `-1` to disable swap.
  ///
  /// * [int] cpushares:
  ///   CPU shares (relative weight).
  ///
  /// * [String] cpusetcpus:
  ///   CPUs in which to allow execution (e.g., `0-3`, `0,1`).
  ///
  /// * [int] cpuperiod:
  ///   The length of a CPU period in microseconds.
  ///
  /// * [int] cpuquota:
  ///   Microseconds of CPU time that the container can get in a CPU period.
  ///
  /// * [String] buildargs:
  ///   JSON map of string pairs for build-time variables. Users pass these values at build-time. Docker uses the buildargs as the environment context for commands run via the `Dockerfile` RUN instruction, or for variable expansion in other `Dockerfile` instructions. This is not meant for passing secret values.  For example, the build arg `FOO=bar` would become `{\"FOO\":\"bar\"}` in JSON. This would result in the query parameter `buildargs={\"FOO\":\"bar\"}`. Note that `{\"FOO\":\"bar\"}` should be URI component encoded.  [Read more about the buildargs instruction.](https://docs.docker.com/engine/reference/builder/#arg)
  ///
  /// * [int] shmsize:
  ///   Size of `/dev/shm` in bytes. The size must be greater than 0. If omitted the system uses 64MB.
  ///
  /// * [bool] squash:
  ///   Squash the resulting images layers into a single layer. *(Experimental release only.)*
  ///
  /// * [String] labels:
  ///   Arbitrary key/value labels to set on the image, as a JSON map of string pairs.
  ///
  /// * [String] networkmode:
  ///   Sets the networking mode for the run commands during build. Supported standard values are: `bridge`, `host`, `none`, and `container:<name|id>`. Any other value is taken as a custom network's name or ID to which this container should connect to.
  ///
  /// * [String] contentType:
  ///
  /// * [String] xRegistryConfig:
  ///   This is a base64-encoded JSON object with auth configurations for multiple registries that a build may refer to.  The key is a registry URL, and the value is an auth configuration object, [as described in the authentication section](#section/Authentication). For example:  ``` {   \"docker.example.com\": {     \"username\": \"janedoe\",     \"password\": \"hunter2\"   },   \"https://index.docker.io/v1/\": {     \"username\": \"mobydock\",     \"password\": \"conta1n3rize14\"   } } ```  Only the registry domain name (and port if not the default 443) are required. However, for legacy reasons, the Docker Hub registry must be specified with both a `https://` prefix and a `/v1/` suffix even though Docker will prefer to use the v2 registry API.
  ///
  /// * [String] platform:
  ///   Platform in the format os[/arch[/variant]]
  ///
  /// * [String] target:
  ///   Target build stage
  ///
  /// * [String] outputs:
  ///   BuildKit output configuration
  ///
  /// * [String] version:
  ///   Version of the builder backend to use.  - `1` is the first generation classic (deprecated) builder in the Docker daemon (default) - `2` is [BuildKit](https://github.com/moby/buildkit)
  ///
  /// * [MultipartFile] inputStream:
  ///   A tar archive compressed with one of the following algorithms: identity (no compression), gzip, bzip2, xz.
  Future<Response> imageBuildWithHttpInfo({
    String? dockerfile,
    String? t,
    String? extrahosts,
    String? remote,
    bool? q,
    bool? nocache,
    String? cachefrom,
    String? pull,
    bool? rm,
    bool? forcerm,
    int? memory,
    int? memswap,
    int? cpushares,
    String? cpusetcpus,
    int? cpuperiod,
    int? cpuquota,
    String? buildargs,
    int? shmsize,
    bool? squash,
    String? labels,
    String? networkmode,
    String? contentType,
    String? xRegistryConfig,
    String? platform,
    String? target,
    String? outputs,
    String? version,
    MultipartFile? inputStream,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/build';

    // ignore: prefer_final_locals
    Object? postBody = inputStream;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dockerfile != null) {
      queryParams.addAll(_queryParams('', 'dockerfile', dockerfile));
    }
    if (t != null) {
      queryParams.addAll(_queryParams('', 't', t));
    }
    if (extrahosts != null) {
      queryParams.addAll(_queryParams('', 'extrahosts', extrahosts));
    }
    if (remote != null) {
      queryParams.addAll(_queryParams('', 'remote', remote));
    }
    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
    }
    if (nocache != null) {
      queryParams.addAll(_queryParams('', 'nocache', nocache));
    }
    if (cachefrom != null) {
      queryParams.addAll(_queryParams('', 'cachefrom', cachefrom));
    }
    if (pull != null) {
      queryParams.addAll(_queryParams('', 'pull', pull));
    }
    if (rm != null) {
      queryParams.addAll(_queryParams('', 'rm', rm));
    }
    if (forcerm != null) {
      queryParams.addAll(_queryParams('', 'forcerm', forcerm));
    }
    if (memory != null) {
      queryParams.addAll(_queryParams('', 'memory', memory));
    }
    if (memswap != null) {
      queryParams.addAll(_queryParams('', 'memswap', memswap));
    }
    if (cpushares != null) {
      queryParams.addAll(_queryParams('', 'cpushares', cpushares));
    }
    if (cpusetcpus != null) {
      queryParams.addAll(_queryParams('', 'cpusetcpus', cpusetcpus));
    }
    if (cpuperiod != null) {
      queryParams.addAll(_queryParams('', 'cpuperiod', cpuperiod));
    }
    if (cpuquota != null) {
      queryParams.addAll(_queryParams('', 'cpuquota', cpuquota));
    }
    if (buildargs != null) {
      queryParams.addAll(_queryParams('', 'buildargs', buildargs));
    }
    if (shmsize != null) {
      queryParams.addAll(_queryParams('', 'shmsize', shmsize));
    }
    if (squash != null) {
      queryParams.addAll(_queryParams('', 'squash', squash));
    }
    if (labels != null) {
      queryParams.addAll(_queryParams('', 'labels', labels));
    }
    if (networkmode != null) {
      queryParams.addAll(_queryParams('', 'networkmode', networkmode));
    }
    if (platform != null) {
      queryParams.addAll(_queryParams('', 'platform', platform));
    }
    if (target != null) {
      queryParams.addAll(_queryParams('', 'target', target));
    }
    if (outputs != null) {
      queryParams.addAll(_queryParams('', 'outputs', outputs));
    }
    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }

    if (contentType != null) {
      headerParams[r'Content-type'] = parameterToString(contentType);
    }
    if (xRegistryConfig != null) {
      headerParams[r'X-Registry-Config'] = parameterToString(xRegistryConfig);
    }

    const contentTypes = <String>['application/octet-stream'];

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

  /// Build an image
  ///
  /// Build an image from a tar archive with a `Dockerfile` in it.  The `Dockerfile` specifies how the image is built from the tar archive. It is typically in the archive's root, but can be at a different path or have a different name by specifying the `dockerfile` parameter. [See the `Dockerfile` reference for more information](https://docs.docker.com/engine/reference/builder/).  The Docker daemon performs a preliminary validation of the `Dockerfile` before starting the build, and returns an error if the syntax is incorrect. After that, each instruction is run one-by-one until the ID of the new image is output.  The build is canceled if the client drops the connection by quitting or being killed.
  ///
  /// Parameters:
  ///
  /// * [String] dockerfile:
  ///   Path within the build context to the `Dockerfile`. This is ignored if `remote` is specified and points to an external `Dockerfile`.
  ///
  /// * [String] t:
  ///   A name and optional tag to apply to the image in the `name:tag` format. If you omit the tag the default `latest` value is assumed. You can provide several `t` parameters.
  ///
  /// * [String] extrahosts:
  ///   Extra hosts to add to /etc/hosts
  ///
  /// * [String] remote:
  ///   A Git repository URI or HTTP/HTTPS context URI. If the URI points to a single text file, the file’s contents are placed into a file called `Dockerfile` and the image is built from that file. If the URI points to a tarball, the file is downloaded by the daemon and the contents therein used as the context for the build. If the URI points to a tarball and the `dockerfile` parameter is also specified, there must be a file with the corresponding path inside the tarball.
  ///
  /// * [bool] q:
  ///   Suppress verbose build output.
  ///
  /// * [bool] nocache:
  ///   Do not use the cache when building the image.
  ///
  /// * [String] cachefrom:
  ///   JSON array of images used for build cache resolution.
  ///
  /// * [String] pull:
  ///   Attempt to pull the image even if an older image exists locally.
  ///
  /// * [bool] rm:
  ///   Remove intermediate containers after a successful build.
  ///
  /// * [bool] forcerm:
  ///   Always remove intermediate containers, even upon failure.
  ///
  /// * [int] memory:
  ///   Set memory limit for build.
  ///
  /// * [int] memswap:
  ///   Total memory (memory + swap). Set as `-1` to disable swap.
  ///
  /// * [int] cpushares:
  ///   CPU shares (relative weight).
  ///
  /// * [String] cpusetcpus:
  ///   CPUs in which to allow execution (e.g., `0-3`, `0,1`).
  ///
  /// * [int] cpuperiod:
  ///   The length of a CPU period in microseconds.
  ///
  /// * [int] cpuquota:
  ///   Microseconds of CPU time that the container can get in a CPU period.
  ///
  /// * [String] buildargs:
  ///   JSON map of string pairs for build-time variables. Users pass these values at build-time. Docker uses the buildargs as the environment context for commands run via the `Dockerfile` RUN instruction, or for variable expansion in other `Dockerfile` instructions. This is not meant for passing secret values.  For example, the build arg `FOO=bar` would become `{\"FOO\":\"bar\"}` in JSON. This would result in the query parameter `buildargs={\"FOO\":\"bar\"}`. Note that `{\"FOO\":\"bar\"}` should be URI component encoded.  [Read more about the buildargs instruction.](https://docs.docker.com/engine/reference/builder/#arg)
  ///
  /// * [int] shmsize:
  ///   Size of `/dev/shm` in bytes. The size must be greater than 0. If omitted the system uses 64MB.
  ///
  /// * [bool] squash:
  ///   Squash the resulting images layers into a single layer. *(Experimental release only.)*
  ///
  /// * [String] labels:
  ///   Arbitrary key/value labels to set on the image, as a JSON map of string pairs.
  ///
  /// * [String] networkmode:
  ///   Sets the networking mode for the run commands during build. Supported standard values are: `bridge`, `host`, `none`, and `container:<name|id>`. Any other value is taken as a custom network's name or ID to which this container should connect to.
  ///
  /// * [String] contentType:
  ///
  /// * [String] xRegistryConfig:
  ///   This is a base64-encoded JSON object with auth configurations for multiple registries that a build may refer to.  The key is a registry URL, and the value is an auth configuration object, [as described in the authentication section](#section/Authentication). For example:  ``` {   \"docker.example.com\": {     \"username\": \"janedoe\",     \"password\": \"hunter2\"   },   \"https://index.docker.io/v1/\": {     \"username\": \"mobydock\",     \"password\": \"conta1n3rize14\"   } } ```  Only the registry domain name (and port if not the default 443) are required. However, for legacy reasons, the Docker Hub registry must be specified with both a `https://` prefix and a `/v1/` suffix even though Docker will prefer to use the v2 registry API.
  ///
  /// * [String] platform:
  ///   Platform in the format os[/arch[/variant]]
  ///
  /// * [String] target:
  ///   Target build stage
  ///
  /// * [String] outputs:
  ///   BuildKit output configuration
  ///
  /// * [String] version:
  ///   Version of the builder backend to use.  - `1` is the first generation classic (deprecated) builder in the Docker daemon (default) - `2` is [BuildKit](https://github.com/moby/buildkit)
  ///
  /// * [MultipartFile] inputStream:
  ///   A tar archive compressed with one of the following algorithms: identity (no compression), gzip, bzip2, xz.
  Future<void> imageBuild({
    String? dockerfile,
    String? t,
    String? extrahosts,
    String? remote,
    bool? q,
    bool? nocache,
    String? cachefrom,
    String? pull,
    bool? rm,
    bool? forcerm,
    int? memory,
    int? memswap,
    int? cpushares,
    String? cpusetcpus,
    int? cpuperiod,
    int? cpuquota,
    String? buildargs,
    int? shmsize,
    bool? squash,
    String? labels,
    String? networkmode,
    String? contentType,
    String? xRegistryConfig,
    String? platform,
    String? target,
    String? outputs,
    String? version,
    MultipartFile? inputStream,
  }) async {
    final response = await imageBuildWithHttpInfo(
      dockerfile: dockerfile,
      t: t,
      extrahosts: extrahosts,
      remote: remote,
      q: q,
      nocache: nocache,
      cachefrom: cachefrom,
      pull: pull,
      rm: rm,
      forcerm: forcerm,
      memory: memory,
      memswap: memswap,
      cpushares: cpushares,
      cpusetcpus: cpusetcpus,
      cpuperiod: cpuperiod,
      cpuquota: cpuquota,
      buildargs: buildargs,
      shmsize: shmsize,
      squash: squash,
      labels: labels,
      networkmode: networkmode,
      contentType: contentType,
      xRegistryConfig: xRegistryConfig,
      platform: platform,
      target: target,
      outputs: outputs,
      version: version,
      inputStream: inputStream,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a new image from a container
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] container:
  ///   The ID or name of the container to commit
  ///
  /// * [String] repo:
  ///   Repository name for the created image
  ///
  /// * [String] tag:
  ///   Tag name for the create image
  ///
  /// * [String] comment:
  ///   Commit message
  ///
  /// * [String] author:
  ///   Author of the image (e.g., `John Hannibal Smith <hannibal@a-team.com>`)
  ///
  /// * [bool] pause:
  ///   Whether to pause the container before committing
  ///
  /// * [String] changes:
  ///   `Dockerfile` instructions to apply while committing
  ///
  /// * [ContainerConfig] containerConfig:
  ///   The container configuration
  Future<Response> imageCommitWithHttpInfo({
    String? container,
    String? repo,
    String? tag,
    String? comment,
    String? author,
    bool? pause,
    String? changes,
    ContainerConfig? containerConfig,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/commit';

    // ignore: prefer_final_locals
    Object? postBody = containerConfig;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (container != null) {
      queryParams.addAll(_queryParams('', 'container', container));
    }
    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (comment != null) {
      queryParams.addAll(_queryParams('', 'comment', comment));
    }
    if (author != null) {
      queryParams.addAll(_queryParams('', 'author', author));
    }
    if (pause != null) {
      queryParams.addAll(_queryParams('', 'pause', pause));
    }
    if (changes != null) {
      queryParams.addAll(_queryParams('', 'changes', changes));
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

  /// Create a new image from a container
  ///
  /// Parameters:
  ///
  /// * [String] container:
  ///   The ID or name of the container to commit
  ///
  /// * [String] repo:
  ///   Repository name for the created image
  ///
  /// * [String] tag:
  ///   Tag name for the create image
  ///
  /// * [String] comment:
  ///   Commit message
  ///
  /// * [String] author:
  ///   Author of the image (e.g., `John Hannibal Smith <hannibal@a-team.com>`)
  ///
  /// * [bool] pause:
  ///   Whether to pause the container before committing
  ///
  /// * [String] changes:
  ///   `Dockerfile` instructions to apply while committing
  ///
  /// * [ContainerConfig] containerConfig:
  ///   The container configuration
  Future<IdResponse?> imageCommit({
    String? container,
    String? repo,
    String? tag,
    String? comment,
    String? author,
    bool? pause,
    String? changes,
    ContainerConfig? containerConfig,
  }) async {
    final response = await imageCommitWithHttpInfo(
      container: container,
      repo: repo,
      tag: tag,
      comment: comment,
      author: author,
      pause: pause,
      changes: changes,
      containerConfig: containerConfig,
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

  /// Create an image
  ///
  /// Pull or import an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] fromImage:
  ///   Name of the image to pull. The name may include a tag or digest. This parameter may only be used when pulling an image. The pull is cancelled if the HTTP connection is closed.
  ///
  /// * [String] fromSrc:
  ///   Source to import. The value may be a URL from which the image can be retrieved or `-` to read the image from the request body. This parameter may only be used when importing an image.
  ///
  /// * [String] repo:
  ///   Repository name given to an image when it is imported. The repo may include a tag. This parameter may only be used when importing an image.
  ///
  /// * [String] tag:
  ///   Tag or digest. If empty when pulling an image, this causes all tags for the given image to be pulled.
  ///
  /// * [String] message:
  ///   Set commit message for imported image.
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.
  ///
  /// * [List<String>] changes:
  ///   Apply `Dockerfile` instructions to the image that is created, for example: `changes=ENV DEBUG=true`. Note that `ENV DEBUG=true` should be URI component encoded.  Supported `Dockerfile` instructions: `CMD`|`ENTRYPOINT`|`ENV`|`EXPOSE`|`ONBUILD`|`USER`|`VOLUME`|`WORKDIR`
  ///
  /// * [String] platform:
  ///   Platform in the format os[/arch[/variant]].  When used in combination with the `fromImage` option, the daemon checks if the given image is present in the local image cache with the given OS and Architecture, and otherwise attempts to pull the image. If the option is not set, the host's native OS and Architecture are used. If the given image does not exist in the local image cache, the daemon attempts to pull the image with the host's native OS and Architecture. If the given image does exists in the local image cache, but its OS or architecture does not match, a warning is produced.  When used with the `fromSrc` option to import an image from an archive, this option sets the platform information for the imported image. If the option is not set, the host's native OS and Architecture are used for the imported image.
  ///
  /// * [String] inputImage:
  ///   Image content if the value `-` has been specified in fromSrc query parameter
  Future<Response> imageCreateWithHttpInfo({
    String? fromImage,
    String? fromSrc,
    String? repo,
    String? tag,
    String? message,
    String? xRegistryAuth,
    List<String>? changes,
    String? platform,
    String? inputImage,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/create';

    // ignore: prefer_final_locals
    Object? postBody = inputImage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fromImage != null) {
      queryParams.addAll(_queryParams('', 'fromImage', fromImage));
    }
    if (fromSrc != null) {
      queryParams.addAll(_queryParams('', 'fromSrc', fromSrc));
    }
    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (message != null) {
      queryParams.addAll(_queryParams('', 'message', message));
    }
    if (changes != null) {
      queryParams.addAll(_queryParams('csv', 'changes', changes));
    }
    if (platform != null) {
      queryParams.addAll(_queryParams('', 'platform', platform));
    }

    if (xRegistryAuth != null) {
      headerParams[r'X-Registry-Auth'] = parameterToString(xRegistryAuth);
    }

    const contentTypes = <String>['text/plain', 'application/octet-stream'];

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

  /// Create an image
  ///
  /// Pull or import an image.
  ///
  /// Parameters:
  ///
  /// * [String] fromImage:
  ///   Name of the image to pull. The name may include a tag or digest. This parameter may only be used when pulling an image. The pull is cancelled if the HTTP connection is closed.
  ///
  /// * [String] fromSrc:
  ///   Source to import. The value may be a URL from which the image can be retrieved or `-` to read the image from the request body. This parameter may only be used when importing an image.
  ///
  /// * [String] repo:
  ///   Repository name given to an image when it is imported. The repo may include a tag. This parameter may only be used when importing an image.
  ///
  /// * [String] tag:
  ///   Tag or digest. If empty when pulling an image, this causes all tags for the given image to be pulled.
  ///
  /// * [String] message:
  ///   Set commit message for imported image.
  ///
  /// * [String] xRegistryAuth:
  ///   A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.
  ///
  /// * [List<String>] changes:
  ///   Apply `Dockerfile` instructions to the image that is created, for example: `changes=ENV DEBUG=true`. Note that `ENV DEBUG=true` should be URI component encoded.  Supported `Dockerfile` instructions: `CMD`|`ENTRYPOINT`|`ENV`|`EXPOSE`|`ONBUILD`|`USER`|`VOLUME`|`WORKDIR`
  ///
  /// * [String] platform:
  ///   Platform in the format os[/arch[/variant]].  When used in combination with the `fromImage` option, the daemon checks if the given image is present in the local image cache with the given OS and Architecture, and otherwise attempts to pull the image. If the option is not set, the host's native OS and Architecture are used. If the given image does not exist in the local image cache, the daemon attempts to pull the image with the host's native OS and Architecture. If the given image does exists in the local image cache, but its OS or architecture does not match, a warning is produced.  When used with the `fromSrc` option to import an image from an archive, this option sets the platform information for the imported image. If the option is not set, the host's native OS and Architecture are used for the imported image.
  ///
  /// * [String] inputImage:
  ///   Image content if the value `-` has been specified in fromSrc query parameter
  Future<void> imageCreate({
    String? fromImage,
    String? fromSrc,
    String? repo,
    String? tag,
    String? message,
    String? xRegistryAuth,
    List<String>? changes,
    String? platform,
    String? inputImage,
  }) async {
    final response = await imageCreateWithHttpInfo(
      fromImage: fromImage,
      fromSrc: fromSrc,
      repo: repo,
      tag: tag,
      message: message,
      xRegistryAuth: xRegistryAuth,
      changes: changes,
      platform: platform,
      inputImage: inputImage,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove an image
  ///
  /// Remove an image, along with any untagged parent images that were referenced by that image.  Images can't be removed if they have descendant images, are being used by a running container or are being used by a build.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID
  ///
  /// * [bool] force:
  ///   Remove the image even if it is being used by stopped containers or has other tags
  ///
  /// * [bool] noprune:
  ///   Do not delete untagged parent images
  Future<Response> imageDeleteWithHttpInfo(
    String name, {
    bool? force,
    bool? noprune,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{name}'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }
    if (noprune != null) {
      queryParams.addAll(_queryParams('', 'noprune', noprune));
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

  /// Remove an image
  ///
  /// Remove an image, along with any untagged parent images that were referenced by that image.  Images can't be removed if they have descendant images, are being used by a running container or are being used by a build.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID
  ///
  /// * [bool] force:
  ///   Remove the image even if it is being used by stopped containers or has other tags
  ///
  /// * [bool] noprune:
  ///   Do not delete untagged parent images
  Future<List<ImageDeleteResponseItem>?> imageDelete(
    String name, {
    bool? force,
    bool? noprune,
  }) async {
    final response = await imageDeleteWithHttpInfo(
      name,
      force: force,
      noprune: noprune,
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
              responseBody, 'List<ImageDeleteResponseItem>') as List)
          .cast<ImageDeleteResponseItem>()
          .toList(growable: false);
    }
    return null;
  }

  /// Export an image
  ///
  /// Get a tarball containing all images and metadata for a repository.  If `name` is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned. If `name` is an image ID, similarly only that image (and its parents) are returned, but with the exclusion of the `repositories` file in the tarball, as there were no image names referenced.  ### Image tarball format  An image tarball contains one directory per image layer (named using its long ID), each containing these files:  - `VERSION`: currently `1.0` - the file format version - `json`: detailed layer information, similar to `docker inspect layer_id` - `layer.tar`: A tarfile containing the filesystem changes in this layer  The `layer.tar` file contains `aufs` style `.wh..wh.aufs` files and directories for storing attribute changes and deletions.  If the tarball defines a repository, the tarball should also include a `repositories` file at the root that contains a list of repository and tag names mapped to layer IDs.  ```json {   \"hello-world\": {     \"latest\": \"565a9d68a73f6706862bfe8409a7f659776d4d60a8d096eb4a3cbce6999cc2a1\"   } } ```
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID
  Future<Response> imageGetWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{name}/get'.replaceAll('{name}', name);

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

  /// Export an image
  ///
  /// Get a tarball containing all images and metadata for a repository.  If `name` is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned. If `name` is an image ID, similarly only that image (and its parents) are returned, but with the exclusion of the `repositories` file in the tarball, as there were no image names referenced.  ### Image tarball format  An image tarball contains one directory per image layer (named using its long ID), each containing these files:  - `VERSION`: currently `1.0` - the file format version - `json`: detailed layer information, similar to `docker inspect layer_id` - `layer.tar`: A tarfile containing the filesystem changes in this layer  The `layer.tar` file contains `aufs` style `.wh..wh.aufs` files and directories for storing attribute changes and deletions.  If the tarball defines a repository, the tarball should also include a `repositories` file at the root that contains a list of repository and tag names mapped to layer IDs.  ```json {   \"hello-world\": {     \"latest\": \"565a9d68a73f6706862bfe8409a7f659776d4d60a8d096eb4a3cbce6999cc2a1\"   } } ```
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID
  Future<MultipartFile?> imageGet(
    String name,
  ) async {
    final response = await imageGetWithHttpInfo(
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
        'MultipartFile',
      ) as MultipartFile;
    }
    return null;
  }

  /// Export several images
  ///
  /// Get a tarball containing all images and metadata for several image repositories.  For each value of the `names` parameter: if it is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned; if it is an image ID, similarly only that image (and its parents) are returned and there would be no names referenced in the 'repositories' file for this image ID.  For details on the format, see the [export image endpoint](#operation/ImageGet).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] names:
  ///   Image names to filter by
  Future<Response> imageGetAllWithHttpInfo({
    List<String>? names,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (names != null) {
      queryParams.addAll(_queryParams('csv', 'names', names));
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

  /// Export several images
  ///
  /// Get a tarball containing all images and metadata for several image repositories.  For each value of the `names` parameter: if it is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned; if it is an image ID, similarly only that image (and its parents) are returned and there would be no names referenced in the 'repositories' file for this image ID.  For details on the format, see the [export image endpoint](#operation/ImageGet).
  ///
  /// Parameters:
  ///
  /// * [List<String>] names:
  ///   Image names to filter by
  Future<MultipartFile?> imageGetAll({
    List<String>? names,
  }) async {
    final response = await imageGetAllWithHttpInfo(
      names: names,
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

  /// Get the history of an image
  ///
  /// Return parent layers of an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID
  Future<Response> imageHistoryWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{name}/history'.replaceAll('{name}', name);

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

  /// Get the history of an image
  ///
  /// Return parent layers of an image.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID
  Future<List<HistoryResponseItem>?> imageHistory(
    String name,
  ) async {
    final response = await imageHistoryWithHttpInfo(
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
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(
              responseBody, 'List<HistoryResponseItem>') as List)
          .cast<HistoryResponseItem>()
          .toList(growable: false);
    }
    return null;
  }

  /// Inspect an image
  ///
  /// Return low-level information about an image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or id
  Future<Response> imageInspectWithHttpInfo(
    String name,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{name}/json'.replaceAll('{name}', name);

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

  /// Inspect an image
  ///
  /// Return low-level information about an image.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or id
  Future<ImageInspect?> imageInspect(
    String name,
  ) async {
    final response = await imageInspectWithHttpInfo(
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
        'ImageInspect',
      ) as ImageInspect;
    }
    return null;
  }

  /// List Images
  ///
  /// Returns a list of images on the server. Note that it uses a different, smaller representation of an image than inspecting a single image.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] all:
  ///   Show all images. Only images from a final layer (no children) are shown by default.
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the images list.  Available filters:  - `before`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`) - `dangling=true` - `label=key` or `label=\"key=value\"` of an image label - `reference`=(`<image-name>[:<tag>]`) - `since`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`) - `until=<timestamp>`
  ///
  /// * [bool] sharedSize:
  ///   Compute and show shared size as a `SharedSize` field on each image.
  ///
  /// * [bool] digests:
  ///   Show digest information as a `RepoDigests` field on each image.
  Future<Response> imageListWithHttpInfo({
    bool? all,
    String? filters,
    bool? sharedSize,
    bool? digests,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/json';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (all != null) {
      queryParams.addAll(_queryParams('', 'all', all));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (sharedSize != null) {
      queryParams.addAll(_queryParams('', 'shared-size', sharedSize));
    }
    if (digests != null) {
      queryParams.addAll(_queryParams('', 'digests', digests));
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

  /// List Images
  ///
  /// Returns a list of images on the server. Note that it uses a different, smaller representation of an image than inspecting a single image.
  ///
  /// Parameters:
  ///
  /// * [bool] all:
  ///   Show all images. Only images from a final layer (no children) are shown by default.
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the images list.  Available filters:  - `before`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`) - `dangling=true` - `label=key` or `label=\"key=value\"` of an image label - `reference`=(`<image-name>[:<tag>]`) - `since`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`) - `until=<timestamp>`
  ///
  /// * [bool] sharedSize:
  ///   Compute and show shared size as a `SharedSize` field on each image.
  ///
  /// * [bool] digests:
  ///   Show digest information as a `RepoDigests` field on each image.
  Future<List<ImageSummary>?> imageList({
    bool? all,
    String? filters,
    bool? sharedSize,
    bool? digests,
  }) async {
    final response = await imageListWithHttpInfo(
      all: all,
      filters: filters,
      sharedSize: sharedSize,
      digests: digests,
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
              responseBody, 'List<ImageSummary>') as List)
          .cast<ImageSummary>()
          .toList(growable: false);
    }
    return null;
  }

  /// Import images
  ///
  /// Load a set of images and tags into a repository.  For details on the format, see the [export image endpoint](#operation/ImageGet).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] quiet:
  ///   Suppress progress details during load.
  ///
  /// * [MultipartFile] imagesTarball:
  ///   Tar archive containing images
  Future<Response> imageLoadWithHttpInfo({
    bool? quiet,
    MultipartFile? imagesTarball,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/load';

    // ignore: prefer_final_locals
    Object? postBody = imagesTarball;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (quiet != null) {
      queryParams.addAll(_queryParams('', 'quiet', quiet));
    }

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

  /// Import images
  ///
  /// Load a set of images and tags into a repository.  For details on the format, see the [export image endpoint](#operation/ImageGet).
  ///
  /// Parameters:
  ///
  /// * [bool] quiet:
  ///   Suppress progress details during load.
  ///
  /// * [MultipartFile] imagesTarball:
  ///   Tar archive containing images
  Future<void> imageLoad({
    bool? quiet,
    MultipartFile? imagesTarball,
  }) async {
    final response = await imageLoadWithHttpInfo(
      quiet: quiet,
      imagesTarball: imagesTarball,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete unused images
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the prune list, encoded as JSON (a `map[string][]string`). Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), prune only    unused *and* untagged images. When set to `false`    (or `0`), all unused images are pruned. - `until=<string>` Prune images created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune images with (or without, in case `label!=...` is used) the specified labels.
  Future<Response> imagePruneWithHttpInfo({
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/prune';

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

  /// Delete unused images
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   Filters to process on the prune list, encoded as JSON (a `map[string][]string`). Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), prune only    unused *and* untagged images. When set to `false`    (or `0`), all unused images are pruned. - `until=<string>` Prune images created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune images with (or without, in case `label!=...` is used) the specified labels.
  Future<ImagePruneResponse?> imagePrune({
    String? filters,
  }) async {
    final response = await imagePruneWithHttpInfo(
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
        'ImagePruneResponse',
      ) as ImagePruneResponse;
    }
    return null;
  }

  /// Push an image
  ///
  /// Push an image to a registry.  If you wish to push an image on to a private registry, that image must already have a tag which references the registry. For example, `registry.example.com/myimage:latest`.  The push is cancelled if the HTTP connection is closed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID.
  ///
  /// * [String] xRegistryAuth (required):
  ///   A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.
  ///
  /// * [String] tag:
  ///   The tag to associate with the image on the registry.
  Future<Response> imagePushWithHttpInfo(
    String name,
    String xRegistryAuth, {
    String? tag,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{name}/push'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }

    headerParams[r'X-Registry-Auth'] = parameterToString(xRegistryAuth);

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

  /// Push an image
  ///
  /// Push an image to a registry.  If you wish to push an image on to a private registry, that image must already have a tag which references the registry. For example, `registry.example.com/myimage:latest`.  The push is cancelled if the HTTP connection is closed.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID.
  ///
  /// * [String] xRegistryAuth (required):
  ///   A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.
  ///
  /// * [String] tag:
  ///   The tag to associate with the image on the registry.
  Future<void> imagePush(
    String name,
    String xRegistryAuth, {
    String? tag,
  }) async {
    final response = await imagePushWithHttpInfo(
      name,
      xRegistryAuth,
      tag: tag,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search images
  ///
  /// Search for an image on Docker Hub.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] term (required):
  ///   Term to search
  ///
  /// * [int] limit:
  ///   Maximum number of results to return
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:  - `is-automated=(true|false)` (deprecated, see below) - `is-official=(true|false)` - `stars=<number>` Matches images that has at least 'number' stars.  The `is-automated` filter is deprecated. The `is_automated` field has been deprecated by Docker Hub's search API. Consequently, searching for `is-automated=true` will yield no results.
  Future<Response> imageSearchWithHttpInfo(
    String term, {
    int? limit,
    String? filters,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    queryParams.addAll(_queryParams('', 'term', term));
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Search images
  ///
  /// Search for an image on Docker Hub.
  ///
  /// Parameters:
  ///
  /// * [String] term (required):
  ///   Term to search
  ///
  /// * [int] limit:
  ///   Maximum number of results to return
  ///
  /// * [String] filters:
  ///   A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:  - `is-automated=(true|false)` (deprecated, see below) - `is-official=(true|false)` - `stars=<number>` Matches images that has at least 'number' stars.  The `is-automated` filter is deprecated. The `is_automated` field has been deprecated by Docker Hub's search API. Consequently, searching for `is-automated=true` will yield no results.
  Future<List<ImageSearchResponseItem>?> imageSearch(
    String term, {
    int? limit,
    String? filters,
  }) async {
    final response = await imageSearchWithHttpInfo(
      term,
      limit: limit,
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
              responseBody, 'List<ImageSearchResponseItem>') as List)
          .cast<ImageSearchResponseItem>()
          .toList(growable: false);
    }
    return null;
  }

  /// Tag an image
  ///
  /// Tag an image so that it becomes part of a repository.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID to tag.
  ///
  /// * [String] repo:
  ///   The repository to tag in. For example, `someuser/someimage`.
  ///
  /// * [String] tag:
  ///   The name of the new tag.
  Future<Response> imageTagWithHttpInfo(
    String name, {
    String? repo,
    String? tag,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/images/{name}/tag'.replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (repo != null) {
      queryParams.addAll(_queryParams('', 'repo', repo));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
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

  /// Tag an image
  ///
  /// Tag an image so that it becomes part of a repository.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Image name or ID to tag.
  ///
  /// * [String] repo:
  ///   The repository to tag in. For example, `someuser/someimage`.
  ///
  /// * [String] tag:
  ///   The name of the new tag.
  Future<void> imageTag(
    String name, {
    String? repo,
    String? tag,
  }) async {
    final response = await imageTagWithHttpInfo(
      name,
      repo: repo,
      tag: tag,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
