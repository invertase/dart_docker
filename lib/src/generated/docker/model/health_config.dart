//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class HealthConfig {
  /// Returns a new [HealthConfig] instance.
  HealthConfig({
    this.test = const [],
    this.interval,
    this.timeout,
    this.retries,
    this.startPeriod,
    this.startInterval,
  });

  /// The test to perform. Possible values are:  - `[]` inherit healthcheck from image or parent image - `[\"NONE\"]` disable healthcheck - `[\"CMD\", args...]` exec arguments directly - `[\"CMD-SHELL\", command]` run command with system's default shell
  List<String> test;

  /// The time to wait between checks in nanoseconds. It should be 0 or at least 1000000 (1 ms). 0 means inherit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? interval;

  /// The time to wait before considering the check to have hung. It should be 0 or at least 1000000 (1 ms). 0 means inherit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeout;

  /// The number of consecutive failures needed to consider a container as unhealthy. 0 means inherit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? retries;

  /// Start period for the container to initialize before starting health-retries countdown in nanoseconds. It should be 0 or at least 1000000 (1 ms). 0 means inherit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startPeriod;

  /// The time to wait between checks in nanoseconds during the start period. It should be 0 or at least 1000000 (1 ms). 0 means inherit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startInterval;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthConfig &&
          _deepEquality.equals(other.test, test) &&
          other.interval == interval &&
          other.timeout == timeout &&
          other.retries == retries &&
          other.startPeriod == startPeriod &&
          other.startInterval == startInterval;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (test.hashCode) +
      (interval == null ? 0 : interval!.hashCode) +
      (timeout == null ? 0 : timeout!.hashCode) +
      (retries == null ? 0 : retries!.hashCode) +
      (startPeriod == null ? 0 : startPeriod!.hashCode) +
      (startInterval == null ? 0 : startInterval!.hashCode);

  @override
  String toString() =>
      'HealthConfig[test=$test, interval=$interval, timeout=$timeout, retries=$retries, startPeriod=$startPeriod, startInterval=$startInterval]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Test'] = this.test;
    if (this.interval != null) {
      json[r'Interval'] = this.interval;
    } else {
      json[r'Interval'] = null;
    }
    if (this.timeout != null) {
      json[r'Timeout'] = this.timeout;
    } else {
      json[r'Timeout'] = null;
    }
    if (this.retries != null) {
      json[r'Retries'] = this.retries;
    } else {
      json[r'Retries'] = null;
    }
    if (this.startPeriod != null) {
      json[r'StartPeriod'] = this.startPeriod;
    } else {
      json[r'StartPeriod'] = null;
    }
    if (this.startInterval != null) {
      json[r'StartInterval'] = this.startInterval;
    } else {
      json[r'StartInterval'] = null;
    }
    return json;
  }

  /// Returns a new [HealthConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "HealthConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "HealthConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HealthConfig(
        test: json[r'Test'] is Iterable
            ? (json[r'Test'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        interval: mapValueOfType<int>(json, r'Interval'),
        timeout: mapValueOfType<int>(json, r'Timeout'),
        retries: mapValueOfType<int>(json, r'Retries'),
        startPeriod: mapValueOfType<int>(json, r'StartPeriod'),
        startInterval: mapValueOfType<int>(json, r'StartInterval'),
      );
    }
    return null;
  }

  static List<HealthConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HealthConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HealthConfig> mapFromJson(dynamic json) {
    final map = <String, HealthConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HealthConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HealthConfig-objects as value to a dart map
  static Map<String, List<HealthConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<HealthConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HealthConfig.listFromJson(
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
