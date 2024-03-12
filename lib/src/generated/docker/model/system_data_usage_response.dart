//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SystemDataUsageResponse {
  /// Returns a new [SystemDataUsageResponse] instance.
  SystemDataUsageResponse({
    this.layersSize,
    this.images = const [],
    this.containers = const [],
    this.volumes = const [],
    this.buildCache = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? layersSize;

  List<ImageSummary> images;

  List<ContainerSummary> containers;

  List<Volume> volumes;

  List<BuildCache> buildCache;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemDataUsageResponse &&
          other.layersSize == layersSize &&
          _deepEquality.equals(other.images, images) &&
          _deepEquality.equals(other.containers, containers) &&
          _deepEquality.equals(other.volumes, volumes) &&
          _deepEquality.equals(other.buildCache, buildCache);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (layersSize == null ? 0 : layersSize!.hashCode) +
      (images.hashCode) +
      (containers.hashCode) +
      (volumes.hashCode) +
      (buildCache.hashCode);

  @override
  String toString() =>
      'SystemDataUsageResponse[layersSize=$layersSize, images=$images, containers=$containers, volumes=$volumes, buildCache=$buildCache]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.layersSize != null) {
      json[r'LayersSize'] = this.layersSize;
    } else {
      json[r'LayersSize'] = null;
    }
    json[r'Images'] = this.images;
    json[r'Containers'] = this.containers;
    json[r'Volumes'] = this.volumes;
    json[r'BuildCache'] = this.buildCache;
    return json;
  }

  /// Returns a new [SystemDataUsageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemDataUsageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SystemDataUsageResponse[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SystemDataUsageResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemDataUsageResponse(
        layersSize: mapValueOfType<int>(json, r'LayersSize'),
        images: ImageSummary.listFromJson(json[r'Images']),
        containers: ContainerSummary.listFromJson(json[r'Containers']),
        volumes: Volume.listFromJson(json[r'Volumes']),
        buildCache: BuildCache.listFromJson(json[r'BuildCache']),
      );
    }
    return null;
  }

  static List<SystemDataUsageResponse> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemDataUsageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemDataUsageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemDataUsageResponse> mapFromJson(dynamic json) {
    final map = <String, SystemDataUsageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemDataUsageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemDataUsageResponse-objects as value to a dart map
  static Map<String, List<SystemDataUsageResponse>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SystemDataUsageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SystemDataUsageResponse.listFromJson(
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
