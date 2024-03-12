//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class MountPoint {
  /// Returns a new [MountPoint] instance.
  MountPoint({
    this.type,
    this.name,
    this.source_,
    this.destination,
    this.driver,
    this.mode,
    this.RW,
    this.propagation,
  });

  /// The mount type:  - `bind` a mount of a file or directory from the host into the container. - `volume` a docker volume with the given `Name`. - `tmpfs` a `tmpfs`. - `npipe` a named pipe from the host into the container. - `cluster` a Swarm cluster volume
  MountPointTypeEnum? type;

  /// Name is the name reference to the underlying data defined by `Source` e.g., the volume name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Source location of the mount.  For volumes, this contains the storage location of the volume (within `/var/lib/docker/volumes/`). For bind-mounts, and `npipe`, this contains the source (host) part of the bind-mount. For `tmpfs` mount points, this field is empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Destination is the path relative to the container root (`/`) where the `Source` is mounted inside the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destination;

  /// Driver is the volume driver used to create the volume (if it is a volume).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driver;

  /// Mode is a comma separated list of options supplied by the user when creating the bind/volume mount.  The default is platform-specific (`\"z\"` on Linux, empty on Windows).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mode;

  /// Whether the mount is mounted writable (read-write).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? RW;

  /// Propagation describes how mounts are propagated from the host into the mount point, and vice-versa. Refer to the [Linux kernel documentation](https://www.kernel.org/doc/Documentation/filesystems/sharedsubtree.txt) for details. This field is not used on Windows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? propagation;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MountPoint &&
          other.type == type &&
          other.name == name &&
          other.source_ == source_ &&
          other.destination == destination &&
          other.driver == driver &&
          other.mode == mode &&
          other.RW == RW &&
          other.propagation == propagation;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (source_ == null ? 0 : source_!.hashCode) +
      (destination == null ? 0 : destination!.hashCode) +
      (driver == null ? 0 : driver!.hashCode) +
      (mode == null ? 0 : mode!.hashCode) +
      (RW == null ? 0 : RW!.hashCode) +
      (propagation == null ? 0 : propagation!.hashCode);

  @override
  String toString() =>
      'MountPoint[type=$type, name=$name, source_=$source_, destination=$destination, driver=$driver, mode=$mode, RW=$RW, propagation=$propagation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.source_ != null) {
      json[r'Source'] = this.source_;
    } else {
      json[r'Source'] = null;
    }
    if (this.destination != null) {
      json[r'Destination'] = this.destination;
    } else {
      json[r'Destination'] = null;
    }
    if (this.driver != null) {
      json[r'Driver'] = this.driver;
    } else {
      json[r'Driver'] = null;
    }
    if (this.mode != null) {
      json[r'Mode'] = this.mode;
    } else {
      json[r'Mode'] = null;
    }
    if (this.RW != null) {
      json[r'RW'] = this.RW;
    } else {
      json[r'RW'] = null;
    }
    if (this.propagation != null) {
      json[r'Propagation'] = this.propagation;
    } else {
      json[r'Propagation'] = null;
    }
    return json;
  }

  /// Returns a new [MountPoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MountPoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MountPoint[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MountPoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MountPoint(
        type: MountPointTypeEnum.fromJson(json[r'Type']),
        name: mapValueOfType<String>(json, r'Name'),
        source_: mapValueOfType<String>(json, r'Source'),
        destination: mapValueOfType<String>(json, r'Destination'),
        driver: mapValueOfType<String>(json, r'Driver'),
        mode: mapValueOfType<String>(json, r'Mode'),
        RW: mapValueOfType<bool>(json, r'RW'),
        propagation: mapValueOfType<String>(json, r'Propagation'),
      );
    }
    return null;
  }

  static List<MountPoint> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MountPoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MountPoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MountPoint> mapFromJson(dynamic json) {
    final map = <String, MountPoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MountPoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MountPoint-objects as value to a dart map
  static Map<String, List<MountPoint>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MountPoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MountPoint.listFromJson(
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

/// The mount type:  - `bind` a mount of a file or directory from the host into the container. - `volume` a docker volume with the given `Name`. - `tmpfs` a `tmpfs`. - `npipe` a named pipe from the host into the container. - `cluster` a Swarm cluster volume
class MountPointTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MountPointTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const bind = MountPointTypeEnum._(r'bind');
  static const volume = MountPointTypeEnum._(r'volume');
  static const tmpfs = MountPointTypeEnum._(r'tmpfs');
  static const npipe = MountPointTypeEnum._(r'npipe');
  static const cluster = MountPointTypeEnum._(r'cluster');

  /// List of all possible values in this [enum][MountPointTypeEnum].
  static const values = <MountPointTypeEnum>[
    bind,
    volume,
    tmpfs,
    npipe,
    cluster,
  ];

  static MountPointTypeEnum? fromJson(dynamic value) =>
      MountPointTypeEnumTypeTransformer().decode(value);

  static List<MountPointTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MountPointTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MountPointTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MountPointTypeEnum] to String,
/// and [decode] dynamic data back to [MountPointTypeEnum].
class MountPointTypeEnumTypeTransformer {
  factory MountPointTypeEnumTypeTransformer() =>
      _instance ??= const MountPointTypeEnumTypeTransformer._();

  const MountPointTypeEnumTypeTransformer._();

  String encode(MountPointTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MountPointTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MountPointTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'bind':
          return MountPointTypeEnum.bind;
        case r'volume':
          return MountPointTypeEnum.volume;
        case r'tmpfs':
          return MountPointTypeEnum.tmpfs;
        case r'npipe':
          return MountPointTypeEnum.npipe;
        case r'cluster':
          return MountPointTypeEnum.cluster;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MountPointTypeEnumTypeTransformer] instance.
  static MountPointTypeEnumTypeTransformer? _instance;
}
