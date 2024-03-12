//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SystemAuthResponse {
  /// Returns a new [SystemAuthResponse] instance.
  SystemAuthResponse({
    required this.status,
    this.identityToken,
  });

  /// The status of the authentication
  String status;

  /// An opaque token used to authenticate a user after a successful login
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identityToken;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemAuthResponse &&
          other.status == status &&
          other.identityToken == identityToken;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status.hashCode) + (identityToken == null ? 0 : identityToken!.hashCode);

  @override
  String toString() =>
      'SystemAuthResponse[status=$status, identityToken=$identityToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Status'] = this.status;
    if (this.identityToken != null) {
      json[r'IdentityToken'] = this.identityToken;
    } else {
      json[r'IdentityToken'] = null;
    }
    return json;
  }

  /// Returns a new [SystemAuthResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemAuthResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SystemAuthResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SystemAuthResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemAuthResponse(
        status: mapValueOfType<String>(json, r'Status')!,
        identityToken: mapValueOfType<String>(json, r'IdentityToken'),
      );
    }
    return null;
  }

  static List<SystemAuthResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemAuthResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemAuthResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemAuthResponse> mapFromJson(dynamic json) {
    final map = <String, SystemAuthResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemAuthResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemAuthResponse-objects as value to a dart map
  static Map<String, List<SystemAuthResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SystemAuthResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SystemAuthResponse.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Status',
  };
}
