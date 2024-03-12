//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class GraphDriverData {
  /// Returns a new [GraphDriverData] instance.
  GraphDriverData({
    required this.name,
    this.data = const {},
  });

  /// Name of the storage driver.
  String name;

  /// Low-level storage metadata, provided as key/value pairs.  This information is driver-specific, and depends on the storage-driver in use, and should be used for informational purposes only.
  Map<String, String> data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GraphDriverData &&
          other.name == name &&
          _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) + (data.hashCode);

  @override
  String toString() => 'GraphDriverData[name=$name, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Name'] = this.name;
    json[r'Data'] = this.data;
    return json;
  }

  /// Returns a new [GraphDriverData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphDriverData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "GraphDriverData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "GraphDriverData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphDriverData(
        name: mapValueOfType<String>(json, r'Name')!,
        data: mapCastOfType<String, String>(json, r'Data')!,
      );
    }
    return null;
  }

  static List<GraphDriverData> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GraphDriverData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphDriverData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphDriverData> mapFromJson(dynamic json) {
    final map = <String, GraphDriverData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphDriverData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphDriverData-objects as value to a dart map
  static Map<String, List<GraphDriverData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GraphDriverData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphDriverData.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Name',
    'Data',
  };
}
