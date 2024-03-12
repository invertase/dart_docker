//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Volume {
  /// Returns a new [Volume] instance.
  Volume({
    required this.name,
    required this.driver,
    required this.mountpoint,
    this.createdAt,
    this.status = const {},
    this.labels = const {},
    this.scope = const VolumeScopeEnum._('local'),
    this.clusterVolume,
    this.options = const {},
    this.usageData,
  });

  /// Name of the volume.
  String name;

  /// Name of the volume driver used by the volume.
  String driver;

  /// Mount path of the volume on the host.
  String mountpoint;

  /// Date/Time the volume was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Low-level details about the volume, provided by the volume driver. Details are returned as a map with key/value pairs: `{\"key\":\"value\",\"key2\":\"value2\"}`.  The `Status` field is optional, and is omitted if the volume driver does not support this feature.
  Map<String, Object> status;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  /// The level at which the volume exists. Either `global` for cluster-wide, or `local` for machine level.
  VolumeScopeEnum scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClusterVolume? clusterVolume;

  /// The driver specific options used when creating the volume.
  Map<String, String> options;

  VolumeUsageData? usageData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Volume &&
          other.name == name &&
          other.driver == driver &&
          other.mountpoint == mountpoint &&
          other.createdAt == createdAt &&
          _deepEquality.equals(other.status, status) &&
          _deepEquality.equals(other.labels, labels) &&
          other.scope == scope &&
          other.clusterVolume == clusterVolume &&
          _deepEquality.equals(other.options, options) &&
          other.usageData == usageData;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name.hashCode) +
      (driver.hashCode) +
      (mountpoint.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (status.hashCode) +
      (labels.hashCode) +
      (scope.hashCode) +
      (clusterVolume == null ? 0 : clusterVolume!.hashCode) +
      (options.hashCode) +
      (usageData == null ? 0 : usageData!.hashCode);

  @override
  String toString() =>
      'Volume[name=$name, driver=$driver, mountpoint=$mountpoint, createdAt=$createdAt, status=$status, labels=$labels, scope=$scope, clusterVolume=$clusterVolume, options=$options, usageData=$usageData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Name'] = this.name;
    json[r'Driver'] = this.driver;
    json[r'Mountpoint'] = this.mountpoint;
    if (this.createdAt != null) {
      json[r'CreatedAt'] = this.createdAt;
    } else {
      json[r'CreatedAt'] = null;
    }
    json[r'Status'] = this.status;
    json[r'Labels'] = this.labels;
    json[r'Scope'] = this.scope;
    if (this.clusterVolume != null) {
      json[r'ClusterVolume'] = this.clusterVolume;
    } else {
      json[r'ClusterVolume'] = null;
    }
    json[r'Options'] = this.options;
    if (this.usageData != null) {
      json[r'UsageData'] = this.usageData;
    } else {
      json[r'UsageData'] = null;
    }
    return json;
  }

  /// Returns a new [Volume] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Volume? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Volume[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Volume[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Volume(
        name: mapValueOfType<String>(json, r'Name')!,
        driver: mapValueOfType<String>(json, r'Driver')!,
        mountpoint: mapValueOfType<String>(json, r'Mountpoint')!,
        createdAt: mapValueOfType<String>(json, r'CreatedAt'),
        status: mapCastOfType<String, Object>(json, r'Status') ?? const {},
        labels: mapCastOfType<String, String>(json, r'Labels')!,
        scope: VolumeScopeEnum.fromJson(json[r'Scope'])!,
        clusterVolume: ClusterVolume.fromJson(json[r'ClusterVolume']),
        options: mapCastOfType<String, String>(json, r'Options')!,
        usageData: VolumeUsageData.fromJson(json[r'UsageData']),
      );
    }
    return null;
  }

  static List<Volume> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Volume>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Volume.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Volume> mapFromJson(dynamic json) {
    final map = <String, Volume>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Volume.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Volume-objects as value to a dart map
  static Map<String, List<Volume>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Volume>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Volume.listFromJson(
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
    'Driver',
    'Mountpoint',
    'Labels',
    'Scope',
    'Options',
  };
}

/// The level at which the volume exists. Either `global` for cluster-wide, or `local` for machine level.
class VolumeScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const VolumeScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const local = VolumeScopeEnum._(r'local');
  static const global = VolumeScopeEnum._(r'global');

  /// List of all possible values in this [enum][VolumeScopeEnum].
  static const values = <VolumeScopeEnum>[
    local,
    global,
  ];

  static VolumeScopeEnum? fromJson(dynamic value) =>
      VolumeScopeEnumTypeTransformer().decode(value);

  static List<VolumeScopeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VolumeScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VolumeScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VolumeScopeEnum] to String,
/// and [decode] dynamic data back to [VolumeScopeEnum].
class VolumeScopeEnumTypeTransformer {
  factory VolumeScopeEnumTypeTransformer() =>
      _instance ??= const VolumeScopeEnumTypeTransformer._();

  const VolumeScopeEnumTypeTransformer._();

  String encode(VolumeScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VolumeScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VolumeScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'local':
          return VolumeScopeEnum.local;
        case r'global':
          return VolumeScopeEnum.global;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VolumeScopeEnumTypeTransformer] instance.
  static VolumeScopeEnumTypeTransformer? _instance;
}
