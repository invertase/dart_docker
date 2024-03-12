//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class MountVolumeOptions {
  /// Returns a new [MountVolumeOptions] instance.
  MountVolumeOptions({
    this.noCopy = false,
    this.labels = const {},
    this.driverConfig,
  });

  /// Populate volume with data from the target.
  bool noCopy;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MountVolumeOptionsDriverConfig? driverConfig;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MountVolumeOptions &&
          other.noCopy == noCopy &&
          _deepEquality.equals(other.labels, labels) &&
          other.driverConfig == driverConfig;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (noCopy.hashCode) +
      (labels.hashCode) +
      (driverConfig == null ? 0 : driverConfig!.hashCode);

  @override
  String toString() =>
      'MountVolumeOptions[noCopy=$noCopy, labels=$labels, driverConfig=$driverConfig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'NoCopy'] = this.noCopy;
    json[r'Labels'] = this.labels;
    if (this.driverConfig != null) {
      json[r'DriverConfig'] = this.driverConfig;
    } else {
      json[r'DriverConfig'] = null;
    }
    return json;
  }

  /// Returns a new [MountVolumeOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MountVolumeOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MountVolumeOptions[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MountVolumeOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MountVolumeOptions(
        noCopy: mapValueOfType<bool>(json, r'NoCopy') ?? false,
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        driverConfig:
            MountVolumeOptionsDriverConfig.fromJson(json[r'DriverConfig']),
      );
    }
    return null;
  }

  static List<MountVolumeOptions> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MountVolumeOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MountVolumeOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MountVolumeOptions> mapFromJson(dynamic json) {
    final map = <String, MountVolumeOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MountVolumeOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MountVolumeOptions-objects as value to a dart map
  static Map<String, List<MountVolumeOptions>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MountVolumeOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MountVolumeOptions.listFromJson(
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
