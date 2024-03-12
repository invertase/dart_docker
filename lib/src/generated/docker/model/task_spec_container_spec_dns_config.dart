//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpecContainerSpecDNSConfig {
  /// Returns a new [TaskSpecContainerSpecDNSConfig] instance.
  TaskSpecContainerSpecDNSConfig({
    this.nameservers = const [],
    this.search = const [],
    this.options = const [],
  });

  /// The IP addresses of the name servers.
  List<String> nameservers;

  /// A search list for host-name lookup.
  List<String> search;

  /// A list of internal resolver variables to be modified (e.g., `debug`, `ndots:3`, etc.).
  List<String> options;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpecContainerSpecDNSConfig &&
          _deepEquality.equals(other.nameservers, nameservers) &&
          _deepEquality.equals(other.search, search) &&
          _deepEquality.equals(other.options, options);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nameservers.hashCode) + (search.hashCode) + (options.hashCode);

  @override
  String toString() =>
      'TaskSpecContainerSpecDNSConfig[nameservers=$nameservers, search=$search, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Nameservers'] = this.nameservers;
    json[r'Search'] = this.search;
    json[r'Options'] = this.options;
    return json;
  }

  /// Returns a new [TaskSpecContainerSpecDNSConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpecContainerSpecDNSConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpecContainerSpecDNSConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpecContainerSpecDNSConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpecContainerSpecDNSConfig(
        nameservers: json[r'Nameservers'] is Iterable
            ? (json[r'Nameservers'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        search: json[r'Search'] is Iterable
            ? (json[r'Search'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        options: json[r'Options'] is Iterable
            ? (json[r'Options'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<TaskSpecContainerSpecDNSConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpecContainerSpecDNSConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpecContainerSpecDNSConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpecContainerSpecDNSConfig> mapFromJson(dynamic json) {
    final map = <String, TaskSpecContainerSpecDNSConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpecContainerSpecDNSConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpecContainerSpecDNSConfig-objects as value to a dart map
  static Map<String, List<TaskSpecContainerSpecDNSConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpecContainerSpecDNSConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpecContainerSpecDNSConfig.listFromJson(
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
