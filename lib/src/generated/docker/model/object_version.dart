//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ObjectVersion {
  /// Returns a new [ObjectVersion] instance.
  ObjectVersion({
    this.index,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? index;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ObjectVersion && other.index == index;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (index == null ? 0 : index!.hashCode);

  @override
  String toString() => 'ObjectVersion[index=$index]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.index != null) {
      json[r'Index'] = this.index;
    } else {
      json[r'Index'] = null;
    }
    return json;
  }

  /// Returns a new [ObjectVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ObjectVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ObjectVersion[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ObjectVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ObjectVersion(
        index: mapValueOfType<int>(json, r'Index'),
      );
    }
    return null;
  }

  static List<ObjectVersion> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ObjectVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ObjectVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ObjectVersion> mapFromJson(dynamic json) {
    final map = <String, ObjectVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ObjectVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ObjectVersion-objects as value to a dart map
  static Map<String, List<ObjectVersion>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ObjectVersion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ObjectVersion.listFromJson(
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
