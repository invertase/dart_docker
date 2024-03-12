//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class HealthcheckResult {
  /// Returns a new [HealthcheckResult] instance.
  HealthcheckResult({
    this.start,
    this.end,
    this.exitCode,
    this.output,
  });

  /// Date and time at which this check started in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? start;

  /// Date and time at which this check ended in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// ExitCode meanings:  - `0` healthy - `1` unhealthy - `2` reserved (considered unhealthy) - other values: error running probe
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exitCode;

  /// Output from last check
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? output;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthcheckResult &&
          other.start == start &&
          other.end == end &&
          other.exitCode == exitCode &&
          other.output == output;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (start == null ? 0 : start!.hashCode) +
      (end == null ? 0 : end!.hashCode) +
      (exitCode == null ? 0 : exitCode!.hashCode) +
      (output == null ? 0 : output!.hashCode);

  @override
  String toString() =>
      'HealthcheckResult[start=$start, end=$end, exitCode=$exitCode, output=$output]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.start != null) {
      json[r'Start'] = this.start!.toUtc().toIso8601String();
    } else {
      json[r'Start'] = null;
    }
    if (this.end != null) {
      json[r'End'] = this.end;
    } else {
      json[r'End'] = null;
    }
    if (this.exitCode != null) {
      json[r'ExitCode'] = this.exitCode;
    } else {
      json[r'ExitCode'] = null;
    }
    if (this.output != null) {
      json[r'Output'] = this.output;
    } else {
      json[r'Output'] = null;
    }
    return json;
  }

  /// Returns a new [HealthcheckResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthcheckResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "HealthcheckResult[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "HealthcheckResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthcheckResult(
        start: mapDateTime(json, r'Start', r''),
        end: mapValueOfType<String>(json, r'End'),
        exitCode: mapValueOfType<int>(json, r'ExitCode'),
        output: mapValueOfType<String>(json, r'Output'),
      );
    }
    return null;
  }

  static List<HealthcheckResult> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HealthcheckResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthcheckResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthcheckResult> mapFromJson(dynamic json) {
    final map = <String, HealthcheckResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthcheckResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthcheckResult-objects as value to a dart map
  static Map<String, List<HealthcheckResult>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<HealthcheckResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HealthcheckResult.listFromJson(
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
