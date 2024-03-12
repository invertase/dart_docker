//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class BuildCache {
  /// Returns a new [BuildCache] instance.
  BuildCache({
    this.ID,
    this.parent,
    this.parents = const [],
    this.type,
    this.description,
    this.inUse,
    this.shared,
    this.size,
    this.createdAt,
    this.lastUsedAt,
    this.usageCount,
  });

  /// Unique ID of the build cache record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

  /// ID of the parent build cache record.  > **Deprecated**: This field is deprecated, and omitted if empty.
  String? parent;

  /// List of parent build cache record IDs.
  List<String>? parents;

  /// Cache record type.
  BuildCacheTypeEnum? type;

  /// Description of the build-step that produced the build cache.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Indicates if the build cache is in use.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inUse;

  /// Indicates if the build cache is shared.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? shared;

  /// Amount of disk space used by the build cache (in bytes).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Date and time at which the build cache was created in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Date and time at which the build cache was last used in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  String? lastUsedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? usageCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuildCache &&
          other.ID == ID &&
          other.parent == parent &&
          _deepEquality.equals(other.parents, parents) &&
          other.type == type &&
          other.description == description &&
          other.inUse == inUse &&
          other.shared == shared &&
          other.size == size &&
          other.createdAt == createdAt &&
          other.lastUsedAt == lastUsedAt &&
          other.usageCount == usageCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID == null ? 0 : ID!.hashCode) +
      (parent == null ? 0 : parent!.hashCode) +
      (parents == null ? 0 : parents!.hashCode) +
      (type == null ? 0 : type!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (inUse == null ? 0 : inUse!.hashCode) +
      (shared == null ? 0 : shared!.hashCode) +
      (size == null ? 0 : size!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (lastUsedAt == null ? 0 : lastUsedAt!.hashCode) +
      (usageCount == null ? 0 : usageCount!.hashCode);

  @override
  String toString() =>
      'BuildCache[ID=$ID, parent=$parent, parents=$parents, type=$type, description=$description, inUse=$inUse, shared=$shared, size=$size, createdAt=$createdAt, lastUsedAt=$lastUsedAt, usageCount=$usageCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.parent != null) {
      json[r'Parent'] = this.parent;
    } else {
      json[r'Parent'] = null;
    }
    if (this.parents != null) {
      json[r'Parents'] = this.parents;
    } else {
      json[r'Parents'] = null;
    }
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.description != null) {
      json[r'Description'] = this.description;
    } else {
      json[r'Description'] = null;
    }
    if (this.inUse != null) {
      json[r'InUse'] = this.inUse;
    } else {
      json[r'InUse'] = null;
    }
    if (this.shared != null) {
      json[r'Shared'] = this.shared;
    } else {
      json[r'Shared'] = null;
    }
    if (this.size != null) {
      json[r'Size'] = this.size;
    } else {
      json[r'Size'] = null;
    }
    if (this.createdAt != null) {
      json[r'CreatedAt'] = this.createdAt;
    } else {
      json[r'CreatedAt'] = null;
    }
    if (this.lastUsedAt != null) {
      json[r'LastUsedAt'] = this.lastUsedAt;
    } else {
      json[r'LastUsedAt'] = null;
    }
    if (this.usageCount != null) {
      json[r'UsageCount'] = this.usageCount;
    } else {
      json[r'UsageCount'] = null;
    }
    return json;
  }

  /// Returns a new [BuildCache] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildCache? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "BuildCache[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "BuildCache[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildCache(
        ID: mapValueOfType<String>(json, r'ID'),
        parent: mapValueOfType<String>(json, r'Parent'),
        parents: json[r'Parents'] is Iterable
            ? (json[r'Parents'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        type: BuildCacheTypeEnum.fromJson(json[r'Type']),
        description: mapValueOfType<String>(json, r'Description'),
        inUse: mapValueOfType<bool>(json, r'InUse'),
        shared: mapValueOfType<bool>(json, r'Shared'),
        size: mapValueOfType<int>(json, r'Size'),
        createdAt: mapValueOfType<String>(json, r'CreatedAt'),
        lastUsedAt: mapValueOfType<String>(json, r'LastUsedAt'),
        usageCount: mapValueOfType<int>(json, r'UsageCount'),
      );
    }
    return null;
  }

  static List<BuildCache> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BuildCache>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildCache.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildCache> mapFromJson(dynamic json) {
    final map = <String, BuildCache>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildCache.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildCache-objects as value to a dart map
  static Map<String, List<BuildCache>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BuildCache>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildCache.listFromJson(
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

/// Cache record type.
class BuildCacheTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const BuildCacheTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const internal = BuildCacheTypeEnum._(r'internal');
  static const frontend = BuildCacheTypeEnum._(r'frontend');
  static const sourcePeriodLocal = BuildCacheTypeEnum._(r'source.local');
  static const sourcePeriodGitPeriodCheckout =
      BuildCacheTypeEnum._(r'source.git.checkout');
  static const execPeriodCachemount = BuildCacheTypeEnum._(r'exec.cachemount');
  static const regular = BuildCacheTypeEnum._(r'regular');

  /// List of all possible values in this [enum][BuildCacheTypeEnum].
  static const values = <BuildCacheTypeEnum>[
    internal,
    frontend,
    sourcePeriodLocal,
    sourcePeriodGitPeriodCheckout,
    execPeriodCachemount,
    regular,
  ];

  static BuildCacheTypeEnum? fromJson(dynamic value) =>
      BuildCacheTypeEnumTypeTransformer().decode(value);

  static List<BuildCacheTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BuildCacheTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildCacheTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BuildCacheTypeEnum] to String,
/// and [decode] dynamic data back to [BuildCacheTypeEnum].
class BuildCacheTypeEnumTypeTransformer {
  factory BuildCacheTypeEnumTypeTransformer() =>
      _instance ??= const BuildCacheTypeEnumTypeTransformer._();

  const BuildCacheTypeEnumTypeTransformer._();

  String encode(BuildCacheTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BuildCacheTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BuildCacheTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'internal':
          return BuildCacheTypeEnum.internal;
        case r'frontend':
          return BuildCacheTypeEnum.frontend;
        case r'source.local':
          return BuildCacheTypeEnum.sourcePeriodLocal;
        case r'source.git.checkout':
          return BuildCacheTypeEnum.sourcePeriodGitPeriodCheckout;
        case r'exec.cachemount':
          return BuildCacheTypeEnum.execPeriodCachemount;
        case r'regular':
          return BuildCacheTypeEnum.regular;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BuildCacheTypeEnumTypeTransformer] instance.
  static BuildCacheTypeEnumTypeTransformer? _instance;
}
