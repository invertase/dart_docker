//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class BuildInfo {
  /// Returns a new [BuildInfo] instance.
  BuildInfo({
    this.id,
    this.stream,
    this.error,
    this.errorDetail,
    this.status,
    this.progress,
    this.progressDetail,
    this.aux,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stream;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ErrorDetail? errorDetail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? progress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProgressDetail? progressDetail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ImageID? aux;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuildInfo &&
          other.id == id &&
          other.stream == stream &&
          other.error == error &&
          other.errorDetail == errorDetail &&
          other.status == status &&
          other.progress == progress &&
          other.progressDetail == progressDetail &&
          other.aux == aux;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (stream == null ? 0 : stream!.hashCode) +
      (error == null ? 0 : error!.hashCode) +
      (errorDetail == null ? 0 : errorDetail!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (progress == null ? 0 : progress!.hashCode) +
      (progressDetail == null ? 0 : progressDetail!.hashCode) +
      (aux == null ? 0 : aux!.hashCode);

  @override
  String toString() =>
      'BuildInfo[id=$id, stream=$stream, error=$error, errorDetail=$errorDetail, status=$status, progress=$progress, progressDetail=$progressDetail, aux=$aux]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.errorDetail != null) {
      json[r'errorDetail'] = this.errorDetail;
    } else {
      json[r'errorDetail'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.progress != null) {
      json[r'progress'] = this.progress;
    } else {
      json[r'progress'] = null;
    }
    if (this.progressDetail != null) {
      json[r'progressDetail'] = this.progressDetail;
    } else {
      json[r'progressDetail'] = null;
    }
    if (this.aux != null) {
      json[r'aux'] = this.aux;
    } else {
      json[r'aux'] = null;
    }
    return json;
  }

  /// Returns a new [BuildInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "BuildInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "BuildInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildInfo(
        id: mapValueOfType<String>(json, r'id'),
        stream: mapValueOfType<String>(json, r'stream'),
        error: mapValueOfType<String>(json, r'error'),
        errorDetail: ErrorDetail.fromJson(json[r'errorDetail']),
        status: mapValueOfType<String>(json, r'status'),
        progress: mapValueOfType<String>(json, r'progress'),
        progressDetail: ProgressDetail.fromJson(json[r'progressDetail']),
        aux: ImageID.fromJson(json[r'aux']),
      );
    }
    return null;
  }

  static List<BuildInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BuildInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildInfo> mapFromJson(dynamic json) {
    final map = <String, BuildInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildInfo-objects as value to a dart map
  static Map<String, List<BuildInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BuildInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildInfo.listFromJson(
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
