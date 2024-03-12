//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceCreateResponse {
  /// Returns a new [ServiceCreateResponse] instance.
  ServiceCreateResponse({
    this.ID,
    this.warnings = const [],
  });

  /// The ID of the created service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

  /// Optional warning message.  FIXME(thaJeztah): this should have \"omitempty\" in the generated type.
  List<String>? warnings;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceCreateResponse &&
          other.ID == ID &&
          _deepEquality.equals(other.warnings, warnings);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID == null ? 0 : ID!.hashCode) +
      (warnings == null ? 0 : warnings!.hashCode);

  @override
  String toString() => 'ServiceCreateResponse[ID=$ID, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.warnings != null) {
      json[r'Warnings'] = this.warnings;
    } else {
      json[r'Warnings'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceCreateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceCreateResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceCreateResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceCreateResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceCreateResponse(
        ID: mapValueOfType<String>(json, r'ID'),
        warnings: json[r'Warnings'] is Iterable
            ? (json[r'Warnings'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ServiceCreateResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceCreateResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceCreateResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceCreateResponse> mapFromJson(dynamic json) {
    final map = <String, ServiceCreateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceCreateResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceCreateResponse-objects as value to a dart map
  static Map<String, List<ServiceCreateResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceCreateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceCreateResponse.listFromJson(
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
