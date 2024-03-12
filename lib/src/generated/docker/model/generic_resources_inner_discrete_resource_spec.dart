//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class GenericResourcesInnerDiscreteResourceSpec {
  /// Returns a new [GenericResourcesInnerDiscreteResourceSpec] instance.
  GenericResourcesInnerDiscreteResourceSpec({
    this.kind,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenericResourcesInnerDiscreteResourceSpec &&
          other.kind == kind &&
          other.value == value;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (kind == null ? 0 : kind!.hashCode) +
      (value == null ? 0 : value!.hashCode);

  @override
  String toString() =>
      'GenericResourcesInnerDiscreteResourceSpec[kind=$kind, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.kind != null) {
      json[r'Kind'] = this.kind;
    } else {
      json[r'Kind'] = null;
    }
    if (this.value != null) {
      json[r'Value'] = this.value;
    } else {
      json[r'Value'] = null;
    }
    return json;
  }

  /// Returns a new [GenericResourcesInnerDiscreteResourceSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenericResourcesInnerDiscreteResourceSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GenericResourcesInnerDiscreteResourceSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GenericResourcesInnerDiscreteResourceSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenericResourcesInnerDiscreteResourceSpec(
        kind: mapValueOfType<String>(json, r'Kind'),
        value: mapValueOfType<int>(json, r'Value'),
      );
    }
    return null;
  }

  static List<GenericResourcesInnerDiscreteResourceSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GenericResourcesInnerDiscreteResourceSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenericResourcesInnerDiscreteResourceSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenericResourcesInnerDiscreteResourceSpec> mapFromJson(
      dynamic json) {
    final map = <String, GenericResourcesInnerDiscreteResourceSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            GenericResourcesInnerDiscreteResourceSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenericResourcesInnerDiscreteResourceSpec-objects as value to a dart map
  static Map<String, List<GenericResourcesInnerDiscreteResourceSpec>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GenericResourcesInnerDiscreteResourceSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenericResourcesInnerDiscreteResourceSpec.listFromJson(
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
