//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ImageInspectMetadata {
  /// Returns a new [ImageInspectMetadata] instance.
  ImageInspectMetadata({
    this.lastTagTime,
  });

  /// Date and time at which the image was last tagged in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  This information is only available if the image was tagged locally, and omitted otherwise.
  String? lastTagTime;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageInspectMetadata && other.lastTagTime == lastTagTime;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (lastTagTime == null ? 0 : lastTagTime!.hashCode);

  @override
  String toString() => 'ImageInspectMetadata[lastTagTime=$lastTagTime]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.lastTagTime != null) {
      json[r'LastTagTime'] = this.lastTagTime;
    } else {
      json[r'LastTagTime'] = null;
    }
    return json;
  }

  /// Returns a new [ImageInspectMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageInspectMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImageInspectMetadata[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageInspectMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageInspectMetadata(
        lastTagTime: mapValueOfType<String>(json, r'LastTagTime'),
      );
    }
    return null;
  }

  static List<ImageInspectMetadata> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageInspectMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageInspectMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageInspectMetadata> mapFromJson(dynamic json) {
    final map = <String, ImageInspectMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageInspectMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageInspectMetadata-objects as value to a dart map
  static Map<String, List<ImageInspectMetadata>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageInspectMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageInspectMetadata.listFromJson(
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
