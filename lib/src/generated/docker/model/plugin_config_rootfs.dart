//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginConfigRootfs {
  /// Returns a new [PluginConfigRootfs] instance.
  PluginConfigRootfs({
    this.type,
    this.diffIds = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  List<String> diffIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginConfigRootfs &&
          other.type == type &&
          _deepEquality.equals(other.diffIds, diffIds);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) + (diffIds.hashCode);

  @override
  String toString() => 'PluginConfigRootfs[type=$type, diffIds=$diffIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    json[r'diff_ids'] = this.diffIds;
    return json;
  }

  /// Returns a new [PluginConfigRootfs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginConfigRootfs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginConfigRootfs[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginConfigRootfs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginConfigRootfs(
        type: mapValueOfType<String>(json, r'type'),
        diffIds: json[r'diff_ids'] is Iterable
            ? (json[r'diff_ids'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PluginConfigRootfs> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginConfigRootfs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginConfigRootfs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginConfigRootfs> mapFromJson(dynamic json) {
    final map = <String, PluginConfigRootfs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginConfigRootfs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginConfigRootfs-objects as value to a dart map
  static Map<String, List<PluginConfigRootfs>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginConfigRootfs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginConfigRootfs.listFromJson(
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
