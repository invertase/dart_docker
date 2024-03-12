//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class IndexInfo {
  /// Returns a new [IndexInfo] instance.
  IndexInfo({
    this.name,
    this.mirrors = const [],
    this.secure,
    this.official,
  });

  /// Name of the registry, such as \"docker.io\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// List of mirrors, expressed as URIs.
  List<String> mirrors;

  /// Indicates if the registry is part of the list of insecure registries.  If `false`, the registry is insecure. Insecure registries accept un-encrypted (HTTP) and/or untrusted (HTTPS with certificates from unknown CAs) communication.  > **Warning**: Insecure registries can be useful when running a local > registry. However, because its use creates security vulnerabilities > it should ONLY be enabled for testing purposes. For increased > security, users should add their CA to their system's list of > trusted CAs instead of enabling this option.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? secure;

  /// Indicates whether this is an official registry (i.e., Docker Hub / docker.io)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? official;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IndexInfo &&
          other.name == name &&
          _deepEquality.equals(other.mirrors, mirrors) &&
          other.secure == secure &&
          other.official == official;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (mirrors.hashCode) +
      (secure == null ? 0 : secure!.hashCode) +
      (official == null ? 0 : official!.hashCode);

  @override
  String toString() =>
      'IndexInfo[name=$name, mirrors=$mirrors, secure=$secure, official=$official]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Mirrors'] = this.mirrors;
    if (this.secure != null) {
      json[r'Secure'] = this.secure;
    } else {
      json[r'Secure'] = null;
    }
    if (this.official != null) {
      json[r'Official'] = this.official;
    } else {
      json[r'Official'] = null;
    }
    return json;
  }

  /// Returns a new [IndexInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IndexInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IndexInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexInfo(
        name: mapValueOfType<String>(json, r'Name'),
        mirrors: json[r'Mirrors'] is Iterable
            ? (json[r'Mirrors'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        secure: mapValueOfType<bool>(json, r'Secure'),
        official: mapValueOfType<bool>(json, r'Official'),
      );
    }
    return null;
  }

  static List<IndexInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IndexInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexInfo> mapFromJson(dynamic json) {
    final map = <String, IndexInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexInfo-objects as value to a dart map
  static Map<String, List<IndexInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IndexInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexInfo.listFromJson(
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
