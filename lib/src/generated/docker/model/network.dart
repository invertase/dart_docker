//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Network {
  /// Returns a new [Network] instance.
  Network({
    this.name,
    this.id,
    this.created,
    this.scope,
    this.driver,
    this.enableIPv6,
    this.ipam,
    this.internal,
    this.attachable,
    this.ingress,
    this.containers = const {},
    this.options = const {},
    this.labels = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driver;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableIPv6;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IPAM? ipam;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? internal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? attachable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ingress;

  Map<String, NetworkContainer> containers;

  Map<String, String> options;

  Map<String, String> labels;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Network &&
          other.name == name &&
          other.id == id &&
          other.created == created &&
          other.scope == scope &&
          other.driver == driver &&
          other.enableIPv6 == enableIPv6 &&
          other.ipam == ipam &&
          other.internal == internal &&
          other.attachable == attachable &&
          other.ingress == ingress &&
          _deepEquality.equals(other.containers, containers) &&
          _deepEquality.equals(other.options, options) &&
          _deepEquality.equals(other.labels, labels);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (id == null ? 0 : id!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (scope == null ? 0 : scope!.hashCode) +
      (driver == null ? 0 : driver!.hashCode) +
      (enableIPv6 == null ? 0 : enableIPv6!.hashCode) +
      (ipam == null ? 0 : ipam!.hashCode) +
      (internal == null ? 0 : internal!.hashCode) +
      (attachable == null ? 0 : attachable!.hashCode) +
      (ingress == null ? 0 : ingress!.hashCode) +
      (containers.hashCode) +
      (options.hashCode) +
      (labels.hashCode);

  @override
  String toString() =>
      'Network[name=$name, id=$id, created=$created, scope=$scope, driver=$driver, enableIPv6=$enableIPv6, IPAM=$IPAM, internal=$internal, attachable=$attachable, ingress=$ingress, containers=$containers, options=$options, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.id != null) {
      json[r'Id'] = this.id;
    } else {
      json[r'Id'] = null;
    }
    if (this.created != null) {
      json[r'Created'] = this.created;
    } else {
      json[r'Created'] = null;
    }
    if (this.scope != null) {
      json[r'Scope'] = this.scope;
    } else {
      json[r'Scope'] = null;
    }
    if (this.driver != null) {
      json[r'Driver'] = this.driver;
    } else {
      json[r'Driver'] = null;
    }
    if (this.enableIPv6 != null) {
      json[r'EnableIPv6'] = this.enableIPv6;
    } else {
      json[r'EnableIPv6'] = null;
    }
    if (this.ipam != null) {
      json[r'IPAM'] = this.ipam;
    } else {
      json[r'IPAM'] = null;
    }
    if (this.internal != null) {
      json[r'Internal'] = this.internal;
    } else {
      json[r'Internal'] = null;
    }
    if (this.attachable != null) {
      json[r'Attachable'] = this.attachable;
    } else {
      json[r'Attachable'] = null;
    }
    if (this.ingress != null) {
      json[r'Ingress'] = this.ingress;
    } else {
      json[r'Ingress'] = null;
    }
    json[r'Containers'] = this.containers;
    json[r'Options'] = this.options;
    json[r'Labels'] = this.labels;
    return json;
  }

  /// Returns a new [Network] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Network? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Network[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Network[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Network(
        name: mapValueOfType<String>(json, r'Name'),
        id: mapValueOfType<String>(json, r'Id'),
        created: mapValueOfType<String>(json, r'Created'),
        scope: mapValueOfType<String>(json, r'Scope'),
        driver: mapValueOfType<String>(json, r'Driver'),
        enableIPv6: mapValueOfType<bool>(json, r'EnableIPv6'),
        ipam: IPAM.fromJson(json[r'IPAM']),
        internal: mapValueOfType<bool>(json, r'Internal'),
        attachable: mapValueOfType<bool>(json, r'Attachable'),
        ingress: mapValueOfType<bool>(json, r'Ingress'),
        containers: NetworkContainer.mapFromJson(json[r'Containers']),
        options: mapCastOfType<String, String>(json, r'Options') ?? const {},
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
      );
    }
    return null;
  }

  static List<Network> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Network>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Network.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Network> mapFromJson(dynamic json) {
    final map = <String, Network>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Network.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Network-objects as value to a dart map
  static Map<String, List<Network>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Network>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Network.listFromJson(
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
