//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ImageInspect {
  /// Returns a new [ImageInspect] instance.
  ImageInspect({
    this.id,
    this.repoTags = const [],
    this.repoDigests = const [],
    this.parent,
    this.comment,
    this.created,
    this.container,
    this.containerConfig,
    this.dockerVersion,
    this.author,
    this.config,
    this.architecture,
    this.variant,
    this.os,
    this.osVersion,
    this.size,
    this.virtualSize,
    this.graphDriver,
    this.rootFS,
    this.metadata,
  });

  /// ID is the content-addressable ID of an image.  This identifier is a content-addressable digest calculated from the image's configuration (which includes the digests of layers used by the image).  Note that this digest differs from the `RepoDigests` below, which holds digests of image manifests that reference the image.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// List of image names/tags in the local image cache that reference this image.  Multiple image tags can refer to the same image, and this list may be empty if no tags reference the image, in which case the image is \"untagged\", in which case it can still be referenced by its ID.
  List<String> repoTags;

  /// List of content-addressable digests of locally available image manifests that the image is referenced from. Multiple manifests can refer to the same image.  These digests are usually only available if the image was either pulled from a registry, or if the image was pushed to a registry, which is when the manifest is generated and its digest calculated.
  List<String> repoDigests;

  /// ID of the parent image.  Depending on how the image was created, this field may be empty and is only set for images that were built/created locally. This field is empty if the image was pulled from an image registry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parent;

  /// Optional message that was set when committing or importing the image.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  /// Date and time at which the image was created, formatted in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  This information is only available if present in the image, and omitted otherwise.
  String? created;

  /// The ID of the container that was used to create the image.  Depending on how the image was created, this field may be empty.  **Deprecated**: this field is kept for backward compatibility, but will be removed in API v1.45.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? container;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContainerConfig? containerConfig;

  /// The version of Docker that was used to build the image.  Depending on how the image was created, this field may be empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerVersion;

  /// Name of the author that was specified when committing the image, or as specified through MAINTAINER (deprecated) in the Dockerfile.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContainerConfig? config;

  /// Hardware CPU architecture that the image runs on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? architecture;

  /// CPU architecture variant (presently ARM-only).
  String? variant;

  /// Operating System the image is built to run on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  /// Operating System version the image is built to run on (especially for Windows).
  String? osVersion;

  /// Total size of the image including all layers it is composed of.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Total size of the image including all layers it is composed of.  Deprecated: this field is omitted in API v1.44, but kept for backward compatibility. Use Size instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? virtualSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GraphDriverData? graphDriver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageInspectRootFS? rootFS;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageInspectMetadata? metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageInspect &&
          other.id == id &&
          _deepEquality.equals(other.repoTags, repoTags) &&
          _deepEquality.equals(other.repoDigests, repoDigests) &&
          other.parent == parent &&
          other.comment == comment &&
          other.created == created &&
          other.container == container &&
          other.containerConfig == containerConfig &&
          other.dockerVersion == dockerVersion &&
          other.author == author &&
          other.config == config &&
          other.architecture == architecture &&
          other.variant == variant &&
          other.os == os &&
          other.osVersion == osVersion &&
          other.size == size &&
          other.virtualSize == virtualSize &&
          other.graphDriver == graphDriver &&
          other.rootFS == rootFS &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (repoTags.hashCode) +
      (repoDigests.hashCode) +
      (parent == null ? 0 : parent!.hashCode) +
      (comment == null ? 0 : comment!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (container == null ? 0 : container!.hashCode) +
      (containerConfig == null ? 0 : containerConfig!.hashCode) +
      (dockerVersion == null ? 0 : dockerVersion!.hashCode) +
      (author == null ? 0 : author!.hashCode) +
      (config == null ? 0 : config!.hashCode) +
      (architecture == null ? 0 : architecture!.hashCode) +
      (variant == null ? 0 : variant!.hashCode) +
      (os == null ? 0 : os!.hashCode) +
      (osVersion == null ? 0 : osVersion!.hashCode) +
      (size == null ? 0 : size!.hashCode) +
      (virtualSize == null ? 0 : virtualSize!.hashCode) +
      (graphDriver == null ? 0 : graphDriver!.hashCode) +
      (rootFS == null ? 0 : rootFS!.hashCode) +
      (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() =>
      'ImageInspect[id=$id, repoTags=$repoTags, repoDigests=$repoDigests, parent=$parent, comment=$comment, created=$created, container=$container, containerConfig=$containerConfig, dockerVersion=$dockerVersion, author=$author, config=$config, architecture=$architecture, variant=$variant, os=$os, osVersion=$osVersion, size=$size, virtualSize=$virtualSize, graphDriver=$graphDriver, rootFS=$rootFS, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'Id'] = this.id;
    } else {
      json[r'Id'] = null;
    }
    json[r'RepoTags'] = this.repoTags;
    json[r'RepoDigests'] = this.repoDigests;
    if (this.parent != null) {
      json[r'Parent'] = this.parent;
    } else {
      json[r'Parent'] = null;
    }
    if (this.comment != null) {
      json[r'Comment'] = this.comment;
    } else {
      json[r'Comment'] = null;
    }
    if (this.created != null) {
      json[r'Created'] = this.created;
    } else {
      json[r'Created'] = null;
    }
    if (this.container != null) {
      json[r'Container'] = this.container;
    } else {
      json[r'Container'] = null;
    }
    if (this.containerConfig != null) {
      json[r'ContainerConfig'] = this.containerConfig;
    } else {
      json[r'ContainerConfig'] = null;
    }
    if (this.dockerVersion != null) {
      json[r'DockerVersion'] = this.dockerVersion;
    } else {
      json[r'DockerVersion'] = null;
    }
    if (this.author != null) {
      json[r'Author'] = this.author;
    } else {
      json[r'Author'] = null;
    }
    if (this.config != null) {
      json[r'Config'] = this.config;
    } else {
      json[r'Config'] = null;
    }
    if (this.architecture != null) {
      json[r'Architecture'] = this.architecture;
    } else {
      json[r'Architecture'] = null;
    }
    if (this.variant != null) {
      json[r'Variant'] = this.variant;
    } else {
      json[r'Variant'] = null;
    }
    if (this.os != null) {
      json[r'Os'] = this.os;
    } else {
      json[r'Os'] = null;
    }
    if (this.osVersion != null) {
      json[r'OsVersion'] = this.osVersion;
    } else {
      json[r'OsVersion'] = null;
    }
    if (this.size != null) {
      json[r'Size'] = this.size;
    } else {
      json[r'Size'] = null;
    }
    if (this.virtualSize != null) {
      json[r'VirtualSize'] = this.virtualSize;
    } else {
      json[r'VirtualSize'] = null;
    }
    if (this.graphDriver != null) {
      json[r'GraphDriver'] = this.graphDriver;
    } else {
      json[r'GraphDriver'] = null;
    }
    if (this.rootFS != null) {
      json[r'RootFS'] = this.rootFS;
    } else {
      json[r'RootFS'] = null;
    }
    if (this.metadata != null) {
      json[r'Metadata'] = this.metadata;
    } else {
      json[r'Metadata'] = null;
    }
    return json;
  }

  /// Returns a new [ImageInspect] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageInspect? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImageInspect[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageInspect[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageInspect(
        id: mapValueOfType<String>(json, r'Id'),
        repoTags: json[r'RepoTags'] is Iterable
            ? (json[r'RepoTags'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        repoDigests: json[r'RepoDigests'] is Iterable
            ? (json[r'RepoDigests'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        parent: mapValueOfType<String>(json, r'Parent'),
        comment: mapValueOfType<String>(json, r'Comment'),
        created: mapValueOfType<String>(json, r'Created'),
        container: mapValueOfType<String>(json, r'Container'),
        containerConfig: ContainerConfig.fromJson(json[r'ContainerConfig']),
        dockerVersion: mapValueOfType<String>(json, r'DockerVersion'),
        author: mapValueOfType<String>(json, r'Author'),
        config: ContainerConfig.fromJson(json[r'Config']),
        architecture: mapValueOfType<String>(json, r'Architecture'),
        variant: mapValueOfType<String>(json, r'Variant'),
        os: mapValueOfType<String>(json, r'Os'),
        osVersion: mapValueOfType<String>(json, r'OsVersion'),
        size: mapValueOfType<int>(json, r'Size'),
        virtualSize: mapValueOfType<int>(json, r'VirtualSize'),
        graphDriver: GraphDriverData.fromJson(json[r'GraphDriver']),
        rootFS: ImageInspectRootFS.fromJson(json[r'RootFS']),
        metadata: ImageInspectMetadata.fromJson(json[r'Metadata']),
      );
    }
    return null;
  }

  static List<ImageInspect> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageInspect>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageInspect.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageInspect> mapFromJson(dynamic json) {
    final map = <String, ImageInspect>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageInspect.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageInspect-objects as value to a dart map
  static Map<String, List<ImageInspect>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageInspect>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageInspect.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
