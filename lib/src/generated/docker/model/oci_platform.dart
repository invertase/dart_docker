//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class OCIPlatform {
  /// Returns a new [OCIPlatform] instance.
  OCIPlatform({
    this.architecture,
    this.os,
    this.osPeriodVersion,
    this.osPeriodFeatures = const [],
    this.variant,
  });

  /// The CPU architecture, for example `amd64` or `ppc64`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? architecture;

  /// The operating system, for example `linux` or `windows`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  /// Optional field specifying the operating system version, for example on Windows `10.0.19041.1165`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? osPeriodVersion;

  /// Optional field specifying an array of strings, each listing a required OS feature (for example on Windows `win32k`).
  List<String> osPeriodFeatures;

  /// Optional field specifying a variant of the CPU, for example `v7` to specify ARMv7 when architecture is `arm`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OCIPlatform &&
          other.architecture == architecture &&
          other.os == os &&
          other.osPeriodVersion == osPeriodVersion &&
          _deepEquality.equals(other.osPeriodFeatures, osPeriodFeatures) &&
          other.variant == variant;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (architecture == null ? 0 : architecture!.hashCode) +
      (os == null ? 0 : os!.hashCode) +
      (osPeriodVersion == null ? 0 : osPeriodVersion!.hashCode) +
      (osPeriodFeatures.hashCode) +
      (variant == null ? 0 : variant!.hashCode);

  @override
  String toString() =>
      'OCIPlatform[architecture=$architecture, os=$os, osPeriodVersion=$osPeriodVersion, osPeriodFeatures=$osPeriodFeatures, variant=$variant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.architecture != null) {
      json[r'architecture'] = this.architecture;
    } else {
      json[r'architecture'] = null;
    }
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    if (this.osPeriodVersion != null) {
      json[r'os.version'] = this.osPeriodVersion;
    } else {
      json[r'os.version'] = null;
    }
    json[r'os.features'] = this.osPeriodFeatures;
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    return json;
  }

  /// Returns a new [OCIPlatform] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OCIPlatform? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OCIPlatform[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OCIPlatform[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OCIPlatform(
        architecture: mapValueOfType<String>(json, r'architecture'),
        os: mapValueOfType<String>(json, r'os'),
        osPeriodVersion: mapValueOfType<String>(json, r'os.version'),
        osPeriodFeatures: json[r'os.features'] is Iterable
            ? (json[r'os.features'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        variant: mapValueOfType<String>(json, r'variant'),
      );
    }
    return null;
  }

  static List<OCIPlatform> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OCIPlatform>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OCIPlatform.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OCIPlatform> mapFromJson(dynamic json) {
    final map = <String, OCIPlatform>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OCIPlatform.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OCIPlatform-objects as value to a dart map
  static Map<String, List<OCIPlatform>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OCIPlatform>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OCIPlatform.listFromJson(
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
