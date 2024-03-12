//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ClusterVolumeSpecAccessMode {
  /// Returns a new [ClusterVolumeSpecAccessMode] instance.
  ClusterVolumeSpecAccessMode({
    this.scope = const ClusterVolumeSpecAccessModeScopeEnum._('single'),
    this.sharing = const ClusterVolumeSpecAccessModeSharingEnum._('none'),
    this.mountVolume,
    this.secrets = const [],
    this.accessibilityRequirements,
    this.capacityRange,
    this.availability =
        const ClusterVolumeSpecAccessModeAvailabilityEnum._('active'),
  });

  /// The set of nodes this volume can be used on at one time. - `single` The volume may only be scheduled to one node at a time. - `multi` the volume may be scheduled to any supported number of nodes at a time.
  ClusterVolumeSpecAccessModeScopeEnum scope;

  /// The number and way that different tasks can use this volume at one time. - `none` The volume may only be used by one task at a time. - `readonly` The volume may be used by any number of tasks, but they all must mount the volume as readonly - `onewriter` The volume may be used by any number of tasks, but only one may mount it as read/write. - `all` The volume may have any number of readers and writers.
  ClusterVolumeSpecAccessModeSharingEnum sharing;

  /// Options for using this volume as a Mount-type volume.      Either MountVolume or BlockVolume, but not both, must be     present.   properties:     FsType:       type: \"string\"       description: |         Specifies the filesystem type for the mount volume.         Optional.     MountFlags:       type: \"array\"       description: |         Flags to pass when mounting the volume. Optional.       items:         type: \"string\" BlockVolume:   type: \"object\"   description: |     Options for using this volume as a Block-type volume.     Intentionally empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? mountVolume;

  /// Swarm Secrets that are passed to the CSI storage plugin when operating on this volume.
  List<ClusterVolumeSpecAccessModeSecretsInner> secrets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClusterVolumeSpecAccessModeAccessibilityRequirements?
      accessibilityRequirements;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ClusterVolumeSpecAccessModeCapacityRange? capacityRange;

  /// The availability of the volume for use in tasks. - `active` The volume is fully available for scheduling on the cluster - `pause` No new workloads should use the volume, but existing workloads are not stopped. - `drain` All workloads using this volume should be stopped and rescheduled, and no new ones should be started.
  ClusterVolumeSpecAccessModeAvailabilityEnum availability;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterVolumeSpecAccessMode &&
          other.scope == scope &&
          other.sharing == sharing &&
          other.mountVolume == mountVolume &&
          _deepEquality.equals(other.secrets, secrets) &&
          other.accessibilityRequirements == accessibilityRequirements &&
          other.capacityRange == capacityRange &&
          other.availability == availability;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (scope.hashCode) +
      (sharing.hashCode) +
      (mountVolume == null ? 0 : mountVolume!.hashCode) +
      (secrets.hashCode) +
      (accessibilityRequirements == null
          ? 0
          : accessibilityRequirements!.hashCode) +
      (capacityRange == null ? 0 : capacityRange!.hashCode) +
      (availability.hashCode);

  @override
  String toString() =>
      'ClusterVolumeSpecAccessMode[scope=$scope, sharing=$sharing, mountVolume=$mountVolume, secrets=$secrets, accessibilityRequirements=$accessibilityRequirements, capacityRange=$capacityRange, availability=$availability]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Scope'] = this.scope;
    json[r'Sharing'] = this.sharing;
    if (this.mountVolume != null) {
      json[r'MountVolume'] = this.mountVolume;
    } else {
      json[r'MountVolume'] = null;
    }
    json[r'Secrets'] = this.secrets;
    if (this.accessibilityRequirements != null) {
      json[r'AccessibilityRequirements'] = this.accessibilityRequirements;
    } else {
      json[r'AccessibilityRequirements'] = null;
    }
    if (this.capacityRange != null) {
      json[r'CapacityRange'] = this.capacityRange;
    } else {
      json[r'CapacityRange'] = null;
    }
    json[r'Availability'] = this.availability;
    return json;
  }

  /// Returns a new [ClusterVolumeSpecAccessMode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterVolumeSpecAccessMode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterVolumeSpecAccessMode[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterVolumeSpecAccessMode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterVolumeSpecAccessMode(
        scope: ClusterVolumeSpecAccessModeScopeEnum.single,
        sharing: ClusterVolumeSpecAccessModeSharingEnum.none,
        mountVolume: mapValueOfType<Object>(json, r'MountVolume'),
        secrets: ClusterVolumeSpecAccessModeSecretsInner.listFromJson(
            json[r'Secrets']),
        accessibilityRequirements:
            ClusterVolumeSpecAccessModeAccessibilityRequirements.fromJson(
                json[r'AccessibilityRequirements']),
        capacityRange: ClusterVolumeSpecAccessModeCapacityRange.fromJson(
            json[r'CapacityRange']),
        availability: ClusterVolumeSpecAccessModeAvailabilityEnum.active,
      );
    }
    return null;
  }

  static List<ClusterVolumeSpecAccessMode> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeSpecAccessMode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumeSpecAccessMode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterVolumeSpecAccessMode> mapFromJson(dynamic json) {
    final map = <String, ClusterVolumeSpecAccessMode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterVolumeSpecAccessMode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterVolumeSpecAccessMode-objects as value to a dart map
  static Map<String, List<ClusterVolumeSpecAccessMode>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterVolumeSpecAccessMode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterVolumeSpecAccessMode.listFromJson(
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

/// The set of nodes this volume can be used on at one time. - `single` The volume may only be scheduled to one node at a time. - `multi` the volume may be scheduled to any supported number of nodes at a time.
class ClusterVolumeSpecAccessModeScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const ClusterVolumeSpecAccessModeScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const single = ClusterVolumeSpecAccessModeScopeEnum._(r'single');
  static const multi = ClusterVolumeSpecAccessModeScopeEnum._(r'multi');

  /// List of all possible values in this [enum][ClusterVolumeSpecAccessModeScopeEnum].
  static const values = <ClusterVolumeSpecAccessModeScopeEnum>[
    single,
    multi,
  ];

  static ClusterVolumeSpecAccessModeScopeEnum? fromJson(dynamic value) =>
      ClusterVolumeSpecAccessModeScopeEnumTypeTransformer().decode(value);

  static List<ClusterVolumeSpecAccessModeScopeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeSpecAccessModeScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumeSpecAccessModeScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClusterVolumeSpecAccessModeScopeEnum] to String,
/// and [decode] dynamic data back to [ClusterVolumeSpecAccessModeScopeEnum].
class ClusterVolumeSpecAccessModeScopeEnumTypeTransformer {
  factory ClusterVolumeSpecAccessModeScopeEnumTypeTransformer() => _instance ??=
      const ClusterVolumeSpecAccessModeScopeEnumTypeTransformer._();

  const ClusterVolumeSpecAccessModeScopeEnumTypeTransformer._();

  String encode(ClusterVolumeSpecAccessModeScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ClusterVolumeSpecAccessModeScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClusterVolumeSpecAccessModeScopeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'single':
          return ClusterVolumeSpecAccessModeScopeEnum.single;
        case r'multi':
          return ClusterVolumeSpecAccessModeScopeEnum.multi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClusterVolumeSpecAccessModeScopeEnumTypeTransformer] instance.
  static ClusterVolumeSpecAccessModeScopeEnumTypeTransformer? _instance;
}

/// The number and way that different tasks can use this volume at one time. - `none` The volume may only be used by one task at a time. - `readonly` The volume may be used by any number of tasks, but they all must mount the volume as readonly - `onewriter` The volume may be used by any number of tasks, but only one may mount it as read/write. - `all` The volume may have any number of readers and writers.
class ClusterVolumeSpecAccessModeSharingEnum {
  /// Instantiate a new enum with the provided [value].
  const ClusterVolumeSpecAccessModeSharingEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = ClusterVolumeSpecAccessModeSharingEnum._(r'none');
  static const readonly = ClusterVolumeSpecAccessModeSharingEnum._(r'readonly');
  static const onewriter =
      ClusterVolumeSpecAccessModeSharingEnum._(r'onewriter');
  static const all = ClusterVolumeSpecAccessModeSharingEnum._(r'all');

  /// List of all possible values in this [enum][ClusterVolumeSpecAccessModeSharingEnum].
  static const values = <ClusterVolumeSpecAccessModeSharingEnum>[
    none,
    readonly,
    onewriter,
    all,
  ];

  static ClusterVolumeSpecAccessModeSharingEnum? fromJson(dynamic value) =>
      ClusterVolumeSpecAccessModeSharingEnumTypeTransformer().decode(value);

  static List<ClusterVolumeSpecAccessModeSharingEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeSpecAccessModeSharingEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumeSpecAccessModeSharingEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClusterVolumeSpecAccessModeSharingEnum] to String,
/// and [decode] dynamic data back to [ClusterVolumeSpecAccessModeSharingEnum].
class ClusterVolumeSpecAccessModeSharingEnumTypeTransformer {
  factory ClusterVolumeSpecAccessModeSharingEnumTypeTransformer() =>
      _instance ??=
          const ClusterVolumeSpecAccessModeSharingEnumTypeTransformer._();

  const ClusterVolumeSpecAccessModeSharingEnumTypeTransformer._();

  String encode(ClusterVolumeSpecAccessModeSharingEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ClusterVolumeSpecAccessModeSharingEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClusterVolumeSpecAccessModeSharingEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'none':
          return ClusterVolumeSpecAccessModeSharingEnum.none;
        case r'readonly':
          return ClusterVolumeSpecAccessModeSharingEnum.readonly;
        case r'onewriter':
          return ClusterVolumeSpecAccessModeSharingEnum.onewriter;
        case r'all':
          return ClusterVolumeSpecAccessModeSharingEnum.all;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClusterVolumeSpecAccessModeSharingEnumTypeTransformer] instance.
  static ClusterVolumeSpecAccessModeSharingEnumTypeTransformer? _instance;
}

/// The availability of the volume for use in tasks. - `active` The volume is fully available for scheduling on the cluster - `pause` No new workloads should use the volume, but existing workloads are not stopped. - `drain` All workloads using this volume should be stopped and rescheduled, and no new ones should be started.
class ClusterVolumeSpecAccessModeAvailabilityEnum {
  /// Instantiate a new enum with the provided [value].
  const ClusterVolumeSpecAccessModeAvailabilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active =
      ClusterVolumeSpecAccessModeAvailabilityEnum._(r'active');
  static const pause = ClusterVolumeSpecAccessModeAvailabilityEnum._(r'pause');
  static const drain = ClusterVolumeSpecAccessModeAvailabilityEnum._(r'drain');

  /// List of all possible values in this [enum][ClusterVolumeSpecAccessModeAvailabilityEnum].
  static const values = <ClusterVolumeSpecAccessModeAvailabilityEnum>[
    active,
    pause,
    drain,
  ];

  static ClusterVolumeSpecAccessModeAvailabilityEnum? fromJson(dynamic value) =>
      ClusterVolumeSpecAccessModeAvailabilityEnumTypeTransformer()
          .decode(value);

  static List<ClusterVolumeSpecAccessModeAvailabilityEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumeSpecAccessModeAvailabilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumeSpecAccessModeAvailabilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClusterVolumeSpecAccessModeAvailabilityEnum] to String,
/// and [decode] dynamic data back to [ClusterVolumeSpecAccessModeAvailabilityEnum].
class ClusterVolumeSpecAccessModeAvailabilityEnumTypeTransformer {
  factory ClusterVolumeSpecAccessModeAvailabilityEnumTypeTransformer() =>
      _instance ??=
          const ClusterVolumeSpecAccessModeAvailabilityEnumTypeTransformer._();

  const ClusterVolumeSpecAccessModeAvailabilityEnumTypeTransformer._();

  String encode(ClusterVolumeSpecAccessModeAvailabilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ClusterVolumeSpecAccessModeAvailabilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClusterVolumeSpecAccessModeAvailabilityEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active':
          return ClusterVolumeSpecAccessModeAvailabilityEnum.active;
        case r'pause':
          return ClusterVolumeSpecAccessModeAvailabilityEnum.pause;
        case r'drain':
          return ClusterVolumeSpecAccessModeAvailabilityEnum.drain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClusterVolumeSpecAccessModeAvailabilityEnumTypeTransformer] instance.
  static ClusterVolumeSpecAccessModeAvailabilityEnumTypeTransformer? _instance;
}
