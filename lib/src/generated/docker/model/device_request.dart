//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class DeviceRequest {
  /// Returns a new [DeviceRequest] instance.
  DeviceRequest({
    this.driver,
    this.count,
    this.deviceIDs = const [],
    this.capabilities = const [],
    this.options = const {},
  });

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
  int? count;

  List<String> deviceIDs;

  /// A list of capabilities; an OR list of AND lists of capabilities.
  List<List<String>> capabilities;

  /// Driver-specific options, specified as a key/value pairs. These options are passed directly to the driver.
  Map<String, String> options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceRequest &&
          other.driver == driver &&
          other.count == count &&
          _deepEquality.equals(other.deviceIDs, deviceIDs) &&
          _deepEquality.equals(other.capabilities, capabilities) &&
          _deepEquality.equals(other.options, options);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (driver == null ? 0 : driver!.hashCode) +
      (count == null ? 0 : count!.hashCode) +
      (deviceIDs.hashCode) +
      (capabilities.hashCode) +
      (options.hashCode);

  @override
  String toString() =>
      'DeviceRequest[driver=$driver, count=$count, deviceIDs=$deviceIDs, capabilities=$capabilities, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.driver != null) {
      json[r'Driver'] = this.driver;
    } else {
      json[r'Driver'] = null;
    }
    if (this.count != null) {
      json[r'Count'] = this.count;
    } else {
      json[r'Count'] = null;
    }
    json[r'DeviceIDs'] = this.deviceIDs;
    json[r'Capabilities'] = this.capabilities;
    json[r'Options'] = this.options;
    return json;
  }

  /// Returns a new [DeviceRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DeviceRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DeviceRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceRequest(
        driver: mapValueOfType<String>(json, r'Driver'),
        count: mapValueOfType<int>(json, r'Count'),
        deviceIDs: json[r'DeviceIDs'] is Iterable
            ? (json[r'DeviceIDs'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        capabilities: json[r'Capabilities'] is List
            ? (json[r'Capabilities'] as List)
                .map((e) =>
                    e == null ? const <String>[] : (e as List).cast<String>())
                .toList()
            : const [],
        options: mapCastOfType<String, String>(json, r'Options') ?? const {},
      );
    }
    return null;
  }

  static List<DeviceRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DeviceRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceRequest> mapFromJson(dynamic json) {
    final map = <String, DeviceRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceRequest-objects as value to a dart map
  static Map<String, List<DeviceRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DeviceRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceRequest.listFromJson(
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
