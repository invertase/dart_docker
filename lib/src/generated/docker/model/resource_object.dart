//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ResourceObject {
  /// Returns a new [ResourceObject] instance.
  ResourceObject({
    this.nanoCPUs,
    this.memoryBytes,
    this.genericResources = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nanoCPUs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memoryBytes;

  /// User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`).
  List<GenericResourcesInner> genericResources;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceObject &&
          other.nanoCPUs == nanoCPUs &&
          other.memoryBytes == memoryBytes &&
          _deepEquality.equals(other.genericResources, genericResources);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nanoCPUs == null ? 0 : nanoCPUs!.hashCode) +
      (memoryBytes == null ? 0 : memoryBytes!.hashCode) +
      (genericResources.hashCode);

  @override
  String toString() =>
      'ResourceObject[nanoCPUs=$nanoCPUs, memoryBytes=$memoryBytes, genericResources=$genericResources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.nanoCPUs != null) {
      json[r'NanoCPUs'] = this.nanoCPUs;
    } else {
      json[r'NanoCPUs'] = null;
    }
    if (this.memoryBytes != null) {
      json[r'MemoryBytes'] = this.memoryBytes;
    } else {
      json[r'MemoryBytes'] = null;
    }
    json[r'GenericResources'] = this.genericResources;
    return json;
  }

  /// Returns a new [ResourceObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourceObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ResourceObject[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ResourceObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourceObject(
        nanoCPUs: mapValueOfType<int>(json, r'NanoCPUs'),
        memoryBytes: mapValueOfType<int>(json, r'MemoryBytes'),
        genericResources:
            GenericResourcesInner.listFromJson(json[r'GenericResources']),
      );
    }
    return null;
  }

  static List<ResourceObject> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ResourceObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourceObject> mapFromJson(dynamic json) {
    final map = <String, ResourceObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourceObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourceObject-objects as value to a dart map
  static Map<String, List<ResourceObject>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ResourceObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourceObject.listFromJson(
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
