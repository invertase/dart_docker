//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class GenericResourcesInner {
  /// Returns a new [GenericResourcesInner] instance.
  GenericResourcesInner({
    this.namedResourceSpec,
    this.discreteResourceSpec,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GenericResourcesInnerNamedResourceSpec? namedResourceSpec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GenericResourcesInnerDiscreteResourceSpec? discreteResourceSpec;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenericResourcesInner &&
          other.namedResourceSpec == namedResourceSpec &&
          other.discreteResourceSpec == discreteResourceSpec;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (namedResourceSpec == null ? 0 : namedResourceSpec!.hashCode) +
      (discreteResourceSpec == null ? 0 : discreteResourceSpec!.hashCode);

  @override
  String toString() =>
      'GenericResourcesInner[namedResourceSpec=$namedResourceSpec, discreteResourceSpec=$discreteResourceSpec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.namedResourceSpec != null) {
      json[r'NamedResourceSpec'] = this.namedResourceSpec;
    } else {
      json[r'NamedResourceSpec'] = null;
    }
    if (this.discreteResourceSpec != null) {
      json[r'DiscreteResourceSpec'] = this.discreteResourceSpec;
    } else {
      json[r'DiscreteResourceSpec'] = null;
    }
    return json;
  }

  /// Returns a new [GenericResourcesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenericResourcesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GenericResourcesInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GenericResourcesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenericResourcesInner(
        namedResourceSpec: GenericResourcesInnerNamedResourceSpec.fromJson(
            json[r'NamedResourceSpec']),
        discreteResourceSpec:
            GenericResourcesInnerDiscreteResourceSpec.fromJson(
                json[r'DiscreteResourceSpec']),
      );
    }
    return null;
  }

  static List<GenericResourcesInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GenericResourcesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenericResourcesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenericResourcesInner> mapFromJson(dynamic json) {
    final map = <String, GenericResourcesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenericResourcesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenericResourcesInner-objects as value to a dart map
  static Map<String, List<GenericResourcesInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GenericResourcesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenericResourcesInner.listFromJson(
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
