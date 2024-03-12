//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ImageSummary {
  /// Returns a new [ImageSummary] instance.
  ImageSummary({
    required this.id,
    required this.parentId,
    this.repoTags = const [],
    this.repoDigests = const [],
    required this.created,
    required this.size,
    required this.sharedSize,
    this.virtualSize,
    this.labels = const {},
    required this.containers,
  });

  /// ID is the content-addressable ID of an image.  This identifier is a content-addressable digest calculated from the image's configuration (which includes the digests of layers used by the image).  Note that this digest differs from the `RepoDigests` below, which holds digests of image manifests that reference the image.
  String id;

  /// ID of the parent image.  Depending on how the image was created, this field may be empty and is only set for images that were built/created locally. This field is empty if the image was pulled from an image registry.
  String parentId;

  /// List of image names/tags in the local image cache that reference this image.  Multiple image tags can refer to the same image, and this list may be empty if no tags reference the image, in which case the image is \"untagged\", in which case it can still be referenced by its ID.
  List<String> repoTags;

  /// List of content-addressable digests of locally available image manifests that the image is referenced from. Multiple manifests can refer to the same image.  These digests are usually only available if the image was either pulled from a registry, or if the image was pushed to a registry, which is when the manifest is generated and its digest calculated.
  List<String> repoDigests;

  /// Date and time at which the image was created as a Unix timestamp (number of seconds sinds EPOCH).
  int created;

  /// Total size of the image including all layers it is composed of.
  int size;

  /// Total size of image layers that are shared between this image and other images.  This size is not calculated by default. `-1` indicates that the value has not been set / calculated.
  int sharedSize;

  /// Total size of the image including all layers it is composed of.  Deprecated: this field is omitted in API v1.44, but kept for backward compatibility. Use Size instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? virtualSize;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  /// Number of containers using this image. Includes both stopped and running containers.  This size is not calculated by default, and depends on which API endpoint is used. `-1` indicates that the value has not been set / calculated.
  int containers;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageSummary &&
          other.id == id &&
          other.parentId == parentId &&
          _deepEquality.equals(other.repoTags, repoTags) &&
          _deepEquality.equals(other.repoDigests, repoDigests) &&
          other.created == created &&
          other.size == size &&
          other.sharedSize == sharedSize &&
          other.virtualSize == virtualSize &&
          _deepEquality.equals(other.labels, labels) &&
          other.containers == containers;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (parentId.hashCode) +
      (repoTags.hashCode) +
      (repoDigests.hashCode) +
      (created.hashCode) +
      (size.hashCode) +
      (sharedSize.hashCode) +
      (virtualSize == null ? 0 : virtualSize!.hashCode) +
      (labels.hashCode) +
      (containers.hashCode);

  @override
  String toString() =>
      'ImageSummary[id=$id, parentId=$parentId, repoTags=$repoTags, repoDigests=$repoDigests, created=$created, size=$size, sharedSize=$sharedSize, virtualSize=$virtualSize, labels=$labels, containers=$containers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Id'] = this.id;
    json[r'ParentId'] = this.parentId;
    json[r'RepoTags'] = this.repoTags;
    json[r'RepoDigests'] = this.repoDigests;
    json[r'Created'] = this.created;
    json[r'Size'] = this.size;
    json[r'SharedSize'] = this.sharedSize;
    if (this.virtualSize != null) {
      json[r'VirtualSize'] = this.virtualSize;
    } else {
      json[r'VirtualSize'] = null;
    }
    json[r'Labels'] = this.labels;
    json[r'Containers'] = this.containers;
    return json;
  }

  /// Returns a new [ImageSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImageSummary[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageSummary(
        id: mapValueOfType<String>(json, r'Id')!,
        parentId: mapValueOfType<String>(json, r'ParentId')!,
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
        created: mapValueOfType<int>(json, r'Created')!,
        size: mapValueOfType<int>(json, r'Size')!,
        sharedSize: mapValueOfType<int>(json, r'SharedSize')!,
        virtualSize: mapValueOfType<int>(json, r'VirtualSize'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? {},
        containers: mapValueOfType<int>(json, r'Containers')!,
      );
    }
    return null;
  }

  static List<ImageSummary> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageSummary> mapFromJson(dynamic json) {
    final map = <String, ImageSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageSummary-objects as value to a dart map
  static Map<String, List<ImageSummary>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageSummary.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Id',
    'ParentId',
    'RepoTags',
    'RepoDigests',
    'Created',
    'Size',
    'SharedSize',
    'Labels',
    'Containers',
  };
}
