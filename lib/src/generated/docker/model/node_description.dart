//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NodeDescription {
  /// Returns a new [NodeDescription] instance.
  NodeDescription({
    this.hostname,
    this.platform,
    this.resources,
    this.engine,
    this.tLSInfo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Platform? platform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ResourceObject? resources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EngineDescription? engine;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TLSInfo? tLSInfo;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeDescription &&
          other.hostname == hostname &&
          other.platform == platform &&
          other.resources == resources &&
          other.engine == engine &&
          other.tLSInfo == tLSInfo;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hostname == null ? 0 : hostname!.hashCode) +
      (platform == null ? 0 : platform!.hashCode) +
      (resources == null ? 0 : resources!.hashCode) +
      (engine == null ? 0 : engine!.hashCode) +
      (tLSInfo == null ? 0 : tLSInfo!.hashCode);

  @override
  String toString() =>
      'NodeDescription[hostname=$hostname, platform=$platform, resources=$resources, engine=$engine, tLSInfo=$tLSInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hostname != null) {
      json[r'Hostname'] = this.hostname;
    } else {
      json[r'Hostname'] = null;
    }
    if (this.platform != null) {
      json[r'Platform'] = this.platform;
    } else {
      json[r'Platform'] = null;
    }
    if (this.resources != null) {
      json[r'Resources'] = this.resources;
    } else {
      json[r'Resources'] = null;
    }
    if (this.engine != null) {
      json[r'Engine'] = this.engine;
    } else {
      json[r'Engine'] = null;
    }
    if (this.tLSInfo != null) {
      json[r'TLSInfo'] = this.tLSInfo;
    } else {
      json[r'TLSInfo'] = null;
    }
    return json;
  }

  /// Returns a new [NodeDescription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NodeDescription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NodeDescription[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NodeDescription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NodeDescription(
        hostname: mapValueOfType<String>(json, r'Hostname'),
        platform: Platform.fromJson(json[r'Platform']),
        resources: ResourceObject.fromJson(json[r'Resources']),
        engine: EngineDescription.fromJson(json[r'Engine']),
        tLSInfo: TLSInfo.fromJson(json[r'TLSInfo']),
      );
    }
    return null;
  }

  static List<NodeDescription> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NodeDescription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeDescription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NodeDescription> mapFromJson(dynamic json) {
    final map = <String, NodeDescription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NodeDescription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NodeDescription-objects as value to a dart map
  static Map<String, List<NodeDescription>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NodeDescription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NodeDescription.listFromJson(
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
