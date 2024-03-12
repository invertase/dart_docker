//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NetworkAttachmentConfig {
  /// Returns a new [NetworkAttachmentConfig] instance.
  NetworkAttachmentConfig({
    this.target,
    this.aliases = const [],
    this.driverOpts = const {},
  });

  /// The target network for attachment. Must be a network name or ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// Discoverable alternate names for the service on this network.
  List<String> aliases;

  /// Driver attachment options for the network target.
  Map<String, String> driverOpts;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetworkAttachmentConfig &&
          other.target == target &&
          _deepEquality.equals(other.aliases, aliases) &&
          _deepEquality.equals(other.driverOpts, driverOpts);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (target == null ? 0 : target!.hashCode) +
      (aliases.hashCode) +
      (driverOpts.hashCode);

  @override
  String toString() =>
      'NetworkAttachmentConfig[target=$target, aliases=$aliases, driverOpts=$driverOpts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.target != null) {
      json[r'Target'] = this.target;
    } else {
      json[r'Target'] = null;
    }
    json[r'Aliases'] = this.aliases;
    json[r'DriverOpts'] = this.driverOpts;
    return json;
  }

  /// Returns a new [NetworkAttachmentConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkAttachmentConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NetworkAttachmentConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NetworkAttachmentConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkAttachmentConfig(
        target: mapValueOfType<String>(json, r'Target'),
        aliases: json[r'Aliases'] is Iterable
            ? (json[r'Aliases'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        driverOpts:
            mapCastOfType<String, String>(json, r'DriverOpts') ?? const {},
      );
    }
    return null;
  }

  static List<NetworkAttachmentConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NetworkAttachmentConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkAttachmentConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkAttachmentConfig> mapFromJson(dynamic json) {
    final map = <String, NetworkAttachmentConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkAttachmentConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkAttachmentConfig-objects as value to a dart map
  static Map<String, List<NetworkAttachmentConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NetworkAttachmentConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkAttachmentConfig.listFromJson(
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
