//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerTopResponse {
  /// Returns a new [ContainerTopResponse] instance.
  ContainerTopResponse({
    this.titles = const [],
    this.processes = const [],
  });

  /// The ps column titles
  List<String> titles;

  /// Each process running in the container, where each is process is an array of values corresponding to the titles.
  List<List<String>> processes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerTopResponse &&
          _deepEquality.equals(other.titles, titles) &&
          _deepEquality.equals(other.processes, processes);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (titles.hashCode) + (processes.hashCode);

  @override
  String toString() =>
      'ContainerTopResponse[titles=$titles, processes=$processes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Titles'] = this.titles;
    json[r'Processes'] = this.processes;
    return json;
  }

  /// Returns a new [ContainerTopResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerTopResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerTopResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerTopResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerTopResponse(
        titles: json[r'Titles'] is Iterable
            ? (json[r'Titles'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        processes: json[r'Processes'] is List
            ? (json[r'Processes'] as List)
                .map((e) =>
                    e == null ? const <String>[] : (e as List).cast<String>())
                .toList()
            : const [],
      );
    }
    return null;
  }

  static List<ContainerTopResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerTopResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerTopResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerTopResponse> mapFromJson(dynamic json) {
    final map = <String, ContainerTopResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerTopResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerTopResponse-objects as value to a dart map
  static Map<String, List<ContainerTopResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerTopResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerTopResponse.listFromJson(
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
