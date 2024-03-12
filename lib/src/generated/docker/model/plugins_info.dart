//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginsInfo {
  /// Returns a new [PluginsInfo] instance.
  PluginsInfo({
    this.volume = const [],
    this.network = const [],
    this.authorization = const [],
    this.log = const [],
  });

  /// Names of available volume-drivers, and network-driver plugins.
  List<String> volume;

  /// Names of available network-drivers, and network-driver plugins.
  List<String> network;

  /// Names of available authorization plugins.
  List<String> authorization;

  /// Names of available logging-drivers, and logging-driver plugins.
  List<String> log;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginsInfo &&
          _deepEquality.equals(other.volume, volume) &&
          _deepEquality.equals(other.network, network) &&
          _deepEquality.equals(other.authorization, authorization) &&
          _deepEquality.equals(other.log, log);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (volume.hashCode) +
      (network.hashCode) +
      (authorization.hashCode) +
      (log.hashCode);

  @override
  String toString() =>
      'PluginsInfo[volume=$volume, network=$network, authorization=$authorization, log=$log]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Volume'] = this.volume;
    json[r'Network'] = this.network;
    json[r'Authorization'] = this.authorization;
    json[r'Log'] = this.log;
    return json;
  }

  /// Returns a new [PluginsInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginsInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginsInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginsInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginsInfo(
        volume: json[r'Volume'] is Iterable
            ? (json[r'Volume'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        network: json[r'Network'] is Iterable
            ? (json[r'Network'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        authorization: json[r'Authorization'] is Iterable
            ? (json[r'Authorization'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        log: json[r'Log'] is Iterable
            ? (json[r'Log'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PluginsInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginsInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginsInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginsInfo> mapFromJson(dynamic json) {
    final map = <String, PluginsInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginsInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginsInfo-objects as value to a dart map
  static Map<String, List<PluginsInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginsInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginsInfo.listFromJson(
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
