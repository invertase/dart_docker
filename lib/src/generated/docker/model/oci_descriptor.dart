//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class OCIDescriptor {
  /// Returns a new [OCIDescriptor] instance.
  OCIDescriptor({
    this.mediaType,
    this.digest,
    this.size,
  });

  /// The media type of the object this schema refers to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mediaType;

  /// The digest of the targeted content.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digest;

  /// The size in bytes of the blob.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OCIDescriptor &&
          other.mediaType == mediaType &&
          other.digest == digest &&
          other.size == size;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (mediaType == null ? 0 : mediaType!.hashCode) +
      (digest == null ? 0 : digest!.hashCode) +
      (size == null ? 0 : size!.hashCode);

  @override
  String toString() =>
      'OCIDescriptor[mediaType=$mediaType, digest=$digest, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mediaType != null) {
      json[r'mediaType'] = this.mediaType;
    } else {
      json[r'mediaType'] = null;
    }
    if (this.digest != null) {
      json[r'digest'] = this.digest;
    } else {
      json[r'digest'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [OCIDescriptor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OCIDescriptor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OCIDescriptor[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OCIDescriptor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OCIDescriptor(
        mediaType: mapValueOfType<String>(json, r'mediaType'),
        digest: mapValueOfType<String>(json, r'digest'),
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<OCIDescriptor> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OCIDescriptor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OCIDescriptor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OCIDescriptor> mapFromJson(dynamic json) {
    final map = <String, OCIDescriptor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OCIDescriptor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OCIDescriptor-objects as value to a dart map
  static Map<String, List<OCIDescriptor>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OCIDescriptor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OCIDescriptor.listFromJson(
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
