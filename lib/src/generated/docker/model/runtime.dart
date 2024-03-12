//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Runtime {
  /// Returns a new [Runtime] instance.
  Runtime({
    this.path,
    this.runtimeArgs = const [],
    this.status = const {},
  });

  /// Name and, optional, path, of the OCI executable binary.  If the path is omitted, the daemon searches the host's `$PATH` for the binary and uses the first result.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// List of command-line arguments to pass to the runtime when invoked.
  List<String>? runtimeArgs;

  /// Information specific to the runtime.  While this API specification does not define data provided by runtimes, the following well-known properties may be provided by runtimes:  `org.opencontainers.runtime-spec.features`: features structure as defined in the [OCI Runtime Specification](https://github.com/opencontainers/runtime-spec/blob/main/features.md), in a JSON string representation.  <p><br /></p>  > **Note**: The information returned in this field, including the > formatting of values and labels, should not be considered stable, > and may change without notice.
  Map<String, String>? status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Runtime &&
          other.path == path &&
          _deepEquality.equals(other.runtimeArgs, runtimeArgs) &&
          _deepEquality.equals(other.status, status);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (path == null ? 0 : path!.hashCode) +
      (runtimeArgs == null ? 0 : runtimeArgs!.hashCode) +
      (status == null ? 0 : status!.hashCode);

  @override
  String toString() =>
      'Runtime[path=$path, runtimeArgs=$runtimeArgs, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.runtimeArgs != null) {
      json[r'runtimeArgs'] = this.runtimeArgs;
    } else {
      json[r'runtimeArgs'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Runtime] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Runtime? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Runtime[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Runtime[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Runtime(
        path: mapValueOfType<String>(json, r'path'),
        runtimeArgs: json[r'runtimeArgs'] is Iterable
            ? (json[r'runtimeArgs'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        status: mapCastOfType<String, String>(json, r'status') ?? const {},
      );
    }
    return null;
  }

  static List<Runtime> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Runtime>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Runtime.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Runtime> mapFromJson(dynamic json) {
    final map = <String, Runtime>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Runtime.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Runtime-objects as value to a dart map
  static Map<String, List<Runtime>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Runtime>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Runtime.listFromJson(
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
