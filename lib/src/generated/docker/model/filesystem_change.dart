//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class FilesystemChange {
  /// Returns a new [FilesystemChange] instance.
  FilesystemChange({
    required this.path,
    required this.kind,
  });

  /// Path to file or directory that has changed.
  String path;

  ChangeType kind;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilesystemChange && other.path == path && other.kind == kind;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (path.hashCode) + (kind.hashCode);

  @override
  String toString() => 'FilesystemChange[path=$path, kind=$kind]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Path'] = this.path;
    json[r'Kind'] = this.kind;
    return json;
  }

  /// Returns a new [FilesystemChange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilesystemChange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "FilesystemChange[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "FilesystemChange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilesystemChange(
        path: mapValueOfType<String>(json, r'Path')!,
        kind: ChangeType.fromJson(json[r'Kind'])!,
      );
    }
    return null;
  }

  static List<FilesystemChange> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <FilesystemChange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilesystemChange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilesystemChange> mapFromJson(dynamic json) {
    final map = <String, FilesystemChange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilesystemChange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilesystemChange-objects as value to a dart map
  static Map<String, List<FilesystemChange>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<FilesystemChange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilesystemChange.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Path',
    'Kind',
  };
}
