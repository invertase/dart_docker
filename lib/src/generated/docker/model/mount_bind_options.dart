//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class MountBindOptions {
  /// Returns a new [MountBindOptions] instance.
  MountBindOptions({
    this.propagation,
    this.nonRecursive = false,
    this.createMountpoint = false,
    this.readOnlyNonRecursive = false,
    this.readOnlyForceRecursive = false,
  });

  /// A propagation mode with the value `[r]private`, `[r]shared`, or `[r]slave`.
  MountBindOptionsPropagationEnum? propagation;

  /// Disable recursive bind mount.
  bool nonRecursive;

  /// Create mount point on host if missing
  bool createMountpoint;

  /// Make the mount non-recursively read-only, but still leave the mount recursive (unless NonRecursive is set to true in conjunction).
  bool readOnlyNonRecursive;

  /// Raise an error if the mount cannot be made recursively read-only.
  bool readOnlyForceRecursive;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MountBindOptions &&
          other.propagation == propagation &&
          other.nonRecursive == nonRecursive &&
          other.createMountpoint == createMountpoint &&
          other.readOnlyNonRecursive == readOnlyNonRecursive &&
          other.readOnlyForceRecursive == readOnlyForceRecursive;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (propagation == null ? 0 : propagation!.hashCode) +
      (nonRecursive.hashCode) +
      (createMountpoint.hashCode) +
      (readOnlyNonRecursive.hashCode) +
      (readOnlyForceRecursive.hashCode);

  @override
  String toString() =>
      'MountBindOptions[propagation=$propagation, nonRecursive=$nonRecursive, createMountpoint=$createMountpoint, readOnlyNonRecursive=$readOnlyNonRecursive, readOnlyForceRecursive=$readOnlyForceRecursive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.propagation != null) {
      json[r'Propagation'] = this.propagation;
    } else {
      json[r'Propagation'] = null;
    }
    json[r'NonRecursive'] = this.nonRecursive;
    json[r'CreateMountpoint'] = this.createMountpoint;
    json[r'ReadOnlyNonRecursive'] = this.readOnlyNonRecursive;
    json[r'ReadOnlyForceRecursive'] = this.readOnlyForceRecursive;
    return json;
  }

  /// Returns a new [MountBindOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MountBindOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "MountBindOptions[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "MountBindOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MountBindOptions(
        propagation:
            MountBindOptionsPropagationEnum.fromJson(json[r'Propagation']),
        nonRecursive: mapValueOfType<bool>(json, r'NonRecursive') ?? false,
        createMountpoint:
            mapValueOfType<bool>(json, r'CreateMountpoint') ?? false,
        readOnlyNonRecursive:
            mapValueOfType<bool>(json, r'ReadOnlyNonRecursive') ?? false,
        readOnlyForceRecursive:
            mapValueOfType<bool>(json, r'ReadOnlyForceRecursive') ?? false,
      );
    }
    return null;
  }

  static List<MountBindOptions> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MountBindOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MountBindOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MountBindOptions> mapFromJson(dynamic json) {
    final map = <String, MountBindOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MountBindOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MountBindOptions-objects as value to a dart map
  static Map<String, List<MountBindOptions>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<MountBindOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MountBindOptions.listFromJson(
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

/// A propagation mode with the value `[r]private`, `[r]shared`, or `[r]slave`.
class MountBindOptionsPropagationEnum {
  /// Instantiate a new enum with the provided [value].
  const MountBindOptionsPropagationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const private = MountBindOptionsPropagationEnum._(r'private');
  static const rprivate = MountBindOptionsPropagationEnum._(r'rprivate');
  static const shared = MountBindOptionsPropagationEnum._(r'shared');
  static const rshared = MountBindOptionsPropagationEnum._(r'rshared');
  static const slave = MountBindOptionsPropagationEnum._(r'slave');
  static const rslave = MountBindOptionsPropagationEnum._(r'rslave');

  /// List of all possible values in this [enum][MountBindOptionsPropagationEnum].
  static const values = <MountBindOptionsPropagationEnum>[
    private,
    rprivate,
    shared,
    rshared,
    slave,
    rslave,
  ];

  static MountBindOptionsPropagationEnum? fromJson(dynamic value) =>
      MountBindOptionsPropagationEnumTypeTransformer().decode(value);

  static List<MountBindOptionsPropagationEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <MountBindOptionsPropagationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MountBindOptionsPropagationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MountBindOptionsPropagationEnum] to String,
/// and [decode] dynamic data back to [MountBindOptionsPropagationEnum].
class MountBindOptionsPropagationEnumTypeTransformer {
  factory MountBindOptionsPropagationEnumTypeTransformer() =>
      _instance ??= const MountBindOptionsPropagationEnumTypeTransformer._();

  const MountBindOptionsPropagationEnumTypeTransformer._();

  String encode(MountBindOptionsPropagationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MountBindOptionsPropagationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MountBindOptionsPropagationEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'private':
          return MountBindOptionsPropagationEnum.private;
        case r'rprivate':
          return MountBindOptionsPropagationEnum.rprivate;
        case r'shared':
          return MountBindOptionsPropagationEnum.shared;
        case r'rshared':
          return MountBindOptionsPropagationEnum.rshared;
        case r'slave':
          return MountBindOptionsPropagationEnum.slave;
        case r'rslave':
          return MountBindOptionsPropagationEnum.rslave;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MountBindOptionsPropagationEnumTypeTransformer] instance.
  static MountBindOptionsPropagationEnumTypeTransformer? _instance;
}
