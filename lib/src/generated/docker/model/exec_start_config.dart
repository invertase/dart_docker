//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ExecStartConfig {
  /// Returns a new [ExecStartConfig] instance.
  ExecStartConfig({
    this.detach,
    this.tty,
    this.consoleSize = const [],
  });

  /// Detach from the command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? detach;

  /// Allocate a pseudo-TTY.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? tty;

  /// Initial console size, as an `[height, width]` array.
  List<int>? consoleSize;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExecStartConfig &&
          other.detach == detach &&
          other.tty == tty &&
          _deepEquality.equals(other.consoleSize, consoleSize);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (detach == null ? 0 : detach!.hashCode) +
      (tty == null ? 0 : tty!.hashCode) +
      (consoleSize == null ? 0 : consoleSize!.hashCode);

  @override
  String toString() =>
      'ExecStartConfig[detach=$detach, tty=$tty, consoleSize=$consoleSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.detach != null) {
      json[r'Detach'] = this.detach;
    } else {
      json[r'Detach'] = null;
    }
    if (this.tty != null) {
      json[r'Tty'] = this.tty;
    } else {
      json[r'Tty'] = null;
    }
    if (this.consoleSize != null) {
      json[r'ConsoleSize'] = this.consoleSize;
    } else {
      json[r'ConsoleSize'] = null;
    }
    return json;
  }

  /// Returns a new [ExecStartConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecStartConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ExecStartConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ExecStartConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecStartConfig(
        detach: mapValueOfType<bool>(json, r'Detach'),
        tty: mapValueOfType<bool>(json, r'Tty'),
        consoleSize: json[r'ConsoleSize'] is Iterable
            ? (json[r'ConsoleSize'] as Iterable)
                .cast<int>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ExecStartConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExecStartConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecStartConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecStartConfig> mapFromJson(dynamic json) {
    final map = <String, ExecStartConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecStartConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecStartConfig-objects as value to a dart map
  static Map<String, List<ExecStartConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ExecStartConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecStartConfig.listFromJson(
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
