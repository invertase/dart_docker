//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ImagePruneResponse {
  /// Returns a new [ImagePruneResponse] instance.
  ImagePruneResponse({
    this.imagesDeleted = const [],
    this.spaceReclaimed,
  });

  /// Images that were deleted
  List<ImageDeleteResponseItem> imagesDeleted;

  /// Disk space reclaimed in bytes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spaceReclaimed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImagePruneResponse &&
          _deepEquality.equals(other.imagesDeleted, imagesDeleted) &&
          other.spaceReclaimed == spaceReclaimed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (imagesDeleted.hashCode) +
      (spaceReclaimed == null ? 0 : spaceReclaimed!.hashCode);

  @override
  String toString() =>
      'ImagePruneResponse[imagesDeleted=$imagesDeleted, spaceReclaimed=$spaceReclaimed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'ImagesDeleted'] = this.imagesDeleted;
    if (this.spaceReclaimed != null) {
      json[r'SpaceReclaimed'] = this.spaceReclaimed;
    } else {
      json[r'SpaceReclaimed'] = null;
    }
    return json;
  }

  /// Returns a new [ImagePruneResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImagePruneResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImagePruneResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImagePruneResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImagePruneResponse(
        imagesDeleted:
            ImageDeleteResponseItem.listFromJson(json[r'ImagesDeleted']),
        spaceReclaimed: mapValueOfType<int>(json, r'SpaceReclaimed'),
      );
    }
    return null;
  }

  static List<ImagePruneResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImagePruneResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImagePruneResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImagePruneResponse> mapFromJson(dynamic json) {
    final map = <String, ImagePruneResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImagePruneResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImagePruneResponse-objects as value to a dart map
  static Map<String, List<ImagePruneResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImagePruneResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImagePruneResponse.listFromJson(
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
