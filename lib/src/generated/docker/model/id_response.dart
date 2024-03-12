//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class IdResponse {
  /// Returns a new [IdResponse] instance.
  IdResponse({
    required this.id,
  });

  /// The id of the newly created object.
  String id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is IdResponse && other.id == id;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode);

  @override
  String toString() => 'IdResponse[id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Id'] = this.id;
    return json;
  }

  /// Returns a new [IdResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IdResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IdResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IdResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IdResponse(
        id: mapValueOfType<String>(json, r'Id')!,
      );
    }
    return null;
  }

  static List<IdResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IdResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IdResponse> mapFromJson(dynamic json) {
    final map = <String, IdResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IdResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IdResponse-objects as value to a dart map
  static Map<String, List<IdResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IdResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IdResponse.listFromJson(
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
  };
}
