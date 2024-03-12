//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Mount {
  /// Returns a new [Mount] instance.
  Mount({
    this.target,
    this.source_,
    this.type,
    this.readOnly,
    this.consistency,
    this.bindOptions,
    this.volumeOptions,
    this.tmpfsOptions,
  });

  /// Container path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// Mount source (e.g. a volume name, a host path).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// The mount type. Available types:  - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container. - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed. - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs. - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container. - `cluster` a Swarm cluster volume
  MountTypeEnum? type;

  /// Whether the mount should be read-only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readOnly;

  /// The consistency requirement for the mount: `default`, `consistent`, `cached`, or `delegated`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? consistency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MountBindOptions? bindOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MountVolumeOptions? volumeOptions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MountTmpfsOptions? tmpfsOptions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mount &&
          other.target == target &&
          other.source_ == source_ &&
          other.type == type &&
          other.readOnly == readOnly &&
          other.consistency == consistency &&
          other.bindOptions == bindOptions &&
          other.volumeOptions == volumeOptions &&
          other.tmpfsOptions == tmpfsOptions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (target == null ? 0 : target!.hashCode) +
      (source_ == null ? 0 : source_!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (readOnly == null ? 0 : readOnly!.hashCode) +
      (consistency == null ? 0 : consistency!.hashCode) +
      (bindOptions == null ? 0 : bindOptions!.hashCode) +
      (volumeOptions == null ? 0 : volumeOptions!.hashCode) +
      (tmpfsOptions == null ? 0 : tmpfsOptions!.hashCode);

  @override
  String toString() =>
      'Mount[target=$target, source_=$source_, type=$type, readOnly=$readOnly, consistency=$consistency, bindOptions=$bindOptions, volumeOptions=$volumeOptions, tmpfsOptions=$tmpfsOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.target != null) {
      json[r'Target'] = this.target;
    } else {
      json[r'Target'] = null;
    }
    if (this.source_ != null) {
      json[r'Source'] = this.source_;
    } else {
      json[r'Source'] = null;
    }
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.readOnly != null) {
      json[r'ReadOnly'] = this.readOnly;
    } else {
      json[r'ReadOnly'] = null;
    }
    if (this.consistency != null) {
      json[r'Consistency'] = this.consistency;
    } else {
      json[r'Consistency'] = null;
    }
    if (this.bindOptions != null) {
      json[r'BindOptions'] = this.bindOptions;
    } else {
      json[r'BindOptions'] = null;
    }
    if (this.volumeOptions != null) {
      json[r'VolumeOptions'] = this.volumeOptions;
    } else {
      json[r'VolumeOptions'] = null;
    }
    if (this.tmpfsOptions != null) {
      json[r'TmpfsOptions'] = this.tmpfsOptions;
    } else {
      json[r'TmpfsOptions'] = null;
    }
    return json;
  }

  /// Returns a new [Mount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Mount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Mount[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Mount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Mount(
        target: mapValueOfType<String>(json, r'Target'),
        source_: mapValueOfType<String>(json, r'Source'),
        type: MountTypeEnum.fromJson(json[r'Type']),
        readOnly: mapValueOfType<bool>(json, r'ReadOnly'),
        consistency: mapValueOfType<String>(json, r'Consistency'),
        bindOptions: MountBindOptions.fromJson(json[r'BindOptions']),
        volumeOptions: MountVolumeOptions.fromJson(json[r'VolumeOptions']),
        tmpfsOptions: MountTmpfsOptions.fromJson(json[r'TmpfsOptions']),
      );
    }
    return null;
  }

  static List<Mount> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Mount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Mount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Mount> mapFromJson(dynamic json) {
    final map = <String, Mount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Mount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Mount-objects as value to a dart map
  static Map<String, List<Mount>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Mount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Mount.listFromJson(
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

/// The mount type. Available types:  - `bind` Mounts a file or directory from the host into the container. Must exist prior to creating the container. - `volume` Creates a volume with the given name and options (or uses a pre-existing volume with the same name and options). These are **not** removed when the container is removed. - `tmpfs` Create a tmpfs with the given options. The mount source cannot be specified for tmpfs. - `npipe` Mounts a named pipe from the host into the container. Must exist prior to creating the container. - `cluster` a Swarm cluster volume
class MountTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MountTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const bind = MountTypeEnum._(r'bind');
  static const volume = MountTypeEnum._(r'volume');
  static const tmpfs = MountTypeEnum._(r'tmpfs');
  static const npipe = MountTypeEnum._(r'npipe');
  static const cluster = MountTypeEnum._(r'cluster');

  /// List of all possible values in this [enum][MountTypeEnum].
  static const values = <MountTypeEnum>[
    bind,
    volume,
    tmpfs,
    npipe,
    cluster,
  ];

  static MountTypeEnum? fromJson(dynamic value) =>
      MountTypeEnumTypeTransformer().decode(value);

  static List<MountTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MountTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MountTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MountTypeEnum] to String,
/// and [decode] dynamic data back to [MountTypeEnum].
class MountTypeEnumTypeTransformer {
  factory MountTypeEnumTypeTransformer() =>
      _instance ??= const MountTypeEnumTypeTransformer._();

  const MountTypeEnumTypeTransformer._();

  String encode(MountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MountTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'bind':
          return MountTypeEnum.bind;
        case r'volume':
          return MountTypeEnum.volume;
        case r'tmpfs':
          return MountTypeEnum.tmpfs;
        case r'npipe':
          return MountTypeEnum.npipe;
        case r'cluster':
          return MountTypeEnum.cluster;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MountTypeEnumTypeTransformer] instance.
  static MountTypeEnumTypeTransformer? _instance;
}
