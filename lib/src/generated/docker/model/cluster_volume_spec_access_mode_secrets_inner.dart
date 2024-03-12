//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ClusterVolumeSpecAccessModeSecretsInner {
  /// Returns a new [ClusterVolumeSpecAccessModeSecretsInner] instance.
  ClusterVolumeSpecAccessModeSecretsInner({
    this.key,
    this.secret,
  });

  /// Key is the name of the key of the key-value pair passed to the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Secret is the swarm Secret object from which to read data. This can be a Secret name or ID. The Secret data is retrieved by swarm and used as the value of the key-value pair passed to the plugin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterVolumeSpecAccessModeSecretsInner &&
          other.key == key &&
          other.secret == secret;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (key == null ? 0 : key!.hashCode) +
      (secret == null ? 0 : secret!.hashCode);

  @override
  String toString() =>
      'ClusterVolumeSpecAccessModeSecretsInner[key=$key, secret=$secret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'Key'] = this.key;
    } else {
      json[r'Key'] = null;
    }
    if (this.secret != null) {
      json[r'Secret'] = this.secret;
    } else {
      json[r'Secret'] = null;
    }
    return json;
  }

  /// Returns a new [ClusterVolumeSpecAccessModeSecretsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterVolumeSpecAccessModeSecretsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterVolumeSpecAccessModeSecretsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterVolumeSpecAccessModeSecretsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterVolumeSpecAccessModeSecretsInner(
        key: mapValueOfType<String>(json, r'Key'),
        secret: mapValueOfType<String>(json, r'Secret'),
      );
    }
    return null;
  }

  static List<ClusterVolumeSpecAccessModeSecretsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeSpecAccessModeSecretsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumeSpecAccessModeSecretsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterVolumeSpecAccessModeSecretsInner> mapFromJson(
      dynamic json) {
    final map = <String, ClusterVolumeSpecAccessModeSecretsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            ClusterVolumeSpecAccessModeSecretsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterVolumeSpecAccessModeSecretsInner-objects as value to a dart map
  static Map<String, List<ClusterVolumeSpecAccessModeSecretsInner>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterVolumeSpecAccessModeSecretsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterVolumeSpecAccessModeSecretsInner.listFromJson(
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
