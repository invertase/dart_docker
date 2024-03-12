//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PushImageInfo {
  /// Returns a new [PushImageInfo] instance.
  PushImageInfo({
    this.error,
    this.status,
    this.progress,
    this.progressDetail,
  });

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PushImageInfo &&
          other.error == error &&
          other.status == status &&
          other.progress == progress &&
          other.progressDetail == progressDetail;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (error == null ? 0 : error!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (progress == null ? 0 : progress!.hashCode) +
      (progressDetail == null ? 0 : progressDetail!.hashCode);

  @override
  String toString() =>
      'PushImageInfo[error=$error, status=$status, progress=$progress, progressDetail=$progressDetail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
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
    return json;
  }

  /// Returns a new [PushImageInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PushImageInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PushImageInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PushImageInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PushImageInfo(
        error: mapValueOfType<String>(json, r'error'),
        status: mapValueOfType<String>(json, r'status'),
        progress: mapValueOfType<String>(json, r'progress'),
        progressDetail: ProgressDetail.fromJson(json[r'progressDetail']),
      );
    }
    return null;
  }

  static List<PushImageInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PushImageInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PushImageInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PushImageInfo> mapFromJson(dynamic json) {
    final map = <String, PushImageInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PushImageInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PushImageInfo-objects as value to a dart map
  static Map<String, List<PushImageInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PushImageInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PushImageInfo.listFromJson(
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
