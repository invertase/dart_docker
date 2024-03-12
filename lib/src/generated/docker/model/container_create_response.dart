//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerCreateResponse {
  /// Returns a new [ContainerCreateResponse] instance.
  ContainerCreateResponse({
    required this.id,
    this.warnings = const [],
  });

  /// The ID of the created container
  String id;

  /// Warnings encountered when creating the container
  List<String> warnings;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerCreateResponse &&
          other.id == id &&
          _deepEquality.equals(other.warnings, warnings);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) + (warnings.hashCode);

  @override
  String toString() => 'ContainerCreateResponse[id=$id, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Id'] = this.id;
    json[r'Warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [ContainerCreateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerCreateResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerCreateResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerCreateResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerCreateResponse(
        id: mapValueOfType<String>(json, r'Id')!,
        warnings: json[r'Warnings'] is Iterable
            ? (json[r'Warnings'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ContainerCreateResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerCreateResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerCreateResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerCreateResponse> mapFromJson(dynamic json) {
    final map = <String, ContainerCreateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerCreateResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerCreateResponse-objects as value to a dart map
  static Map<String, List<ContainerCreateResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerCreateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerCreateResponse.listFromJson(
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
    'Warnings',
  };
}
