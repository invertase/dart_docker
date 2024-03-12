//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ProcessConfig {
  /// Returns a new [ProcessConfig] instance.
  ProcessConfig({
    this.privileged,
    this.user,
    this.tty,
    this.entrypoint,
    this.arguments = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? privileged;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? tty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entrypoint;

  List<String> arguments;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProcessConfig &&
          other.privileged == privileged &&
          other.user == user &&
          other.tty == tty &&
          other.entrypoint == entrypoint &&
          _deepEquality.equals(other.arguments, arguments);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (privileged == null ? 0 : privileged!.hashCode) +
      (user == null ? 0 : user!.hashCode) +
      (tty == null ? 0 : tty!.hashCode) +
      (entrypoint == null ? 0 : entrypoint!.hashCode) +
      (arguments.hashCode);

  @override
  String toString() =>
      'ProcessConfig[privileged=$privileged, user=$user, tty=$tty, entrypoint=$entrypoint, arguments=$arguments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.privileged != null) {
      json[r'privileged'] = this.privileged;
    } else {
      json[r'privileged'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    if (this.tty != null) {
      json[r'tty'] = this.tty;
    } else {
      json[r'tty'] = null;
    }
    if (this.entrypoint != null) {
      json[r'entrypoint'] = this.entrypoint;
    } else {
      json[r'entrypoint'] = null;
    }
    json[r'arguments'] = this.arguments;
    return json;
  }

  /// Returns a new [ProcessConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ProcessConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ProcessConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessConfig(
        privileged: mapValueOfType<bool>(json, r'privileged'),
        user: mapValueOfType<String>(json, r'user'),
        tty: mapValueOfType<bool>(json, r'tty'),
        entrypoint: mapValueOfType<String>(json, r'entrypoint'),
        arguments: json[r'arguments'] is Iterable
            ? (json[r'arguments'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ProcessConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProcessConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessConfig> mapFromJson(dynamic json) {
    final map = <String, ProcessConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessConfig-objects as value to a dart map
  static Map<String, List<ProcessConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProcessConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessConfig.listFromJson(
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
