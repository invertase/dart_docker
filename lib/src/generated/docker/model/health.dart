//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Health {
  /// Returns a new [Health] instance.
  Health({
    this.status,
    this.failingStreak,
    this.log = const [],
  });

  /// Status is one of `none`, `starting`, `healthy` or `unhealthy`  - \"none\"      Indicates there is no healthcheck - \"starting\"  Starting indicates that the container is not yet ready - \"healthy\"   Healthy indicates that the container is running correctly - \"unhealthy\" Unhealthy indicates that the container has a problem
  HealthStatusEnum? status;

  /// FailingStreak is the number of consecutive failures
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failingStreak;

  /// Log contains the last few results (oldest first)
  List<HealthcheckResult> log;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Health &&
          other.status == status &&
          other.failingStreak == failingStreak &&
          _deepEquality.equals(other.log, log);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (status == null ? 0 : status!.hashCode) +
      (failingStreak == null ? 0 : failingStreak!.hashCode) +
      (log.hashCode);

  @override
  String toString() =>
      'Health[status=$status, failingStreak=$failingStreak, log=$log]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'Status'] = this.status;
    } else {
      json[r'Status'] = null;
    }
    if (this.failingStreak != null) {
      json[r'FailingStreak'] = this.failingStreak;
    } else {
      json[r'FailingStreak'] = null;
    }
    json[r'Log'] = this.log;
    return json;
  }

  /// Returns a new [Health] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Health? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Health[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Health[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Health(
        status: HealthStatusEnum.fromJson(json[r'Status']),
        failingStreak: mapValueOfType<int>(json, r'FailingStreak'),
        log: HealthcheckResult.listFromJson(json[r'Log']),
      );
    }
    return null;
  }

  static List<Health> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Health>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Health.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Health> mapFromJson(dynamic json) {
    final map = <String, Health>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Health.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Health-objects as value to a dart map
  static Map<String, List<Health>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Health>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Health.listFromJson(
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

/// Status is one of `none`, `starting`, `healthy` or `unhealthy`  - \"none\"      Indicates there is no healthcheck - \"starting\"  Starting indicates that the container is not yet ready - \"healthy\"   Healthy indicates that the container is running correctly - \"unhealthy\" Unhealthy indicates that the container has a problem
class HealthStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const HealthStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = HealthStatusEnum._(r'none');
  static const starting = HealthStatusEnum._(r'starting');
  static const healthy = HealthStatusEnum._(r'healthy');
  static const unhealthy = HealthStatusEnum._(r'unhealthy');

  /// List of all possible values in this [enum][HealthStatusEnum].
  static const values = <HealthStatusEnum>[
    none,
    starting,
    healthy,
    unhealthy,
  ];

  static HealthStatusEnum? fromJson(dynamic value) =>
      HealthStatusEnumTypeTransformer().decode(value);

  static List<HealthStatusEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HealthStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HealthStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HealthStatusEnum] to String,
/// and [decode] dynamic data back to [HealthStatusEnum].
class HealthStatusEnumTypeTransformer {
  factory HealthStatusEnumTypeTransformer() =>
      _instance ??= const HealthStatusEnumTypeTransformer._();

  const HealthStatusEnumTypeTransformer._();

  String encode(HealthStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HealthStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HealthStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'none':
          return HealthStatusEnum.none;
        case r'starting':
          return HealthStatusEnum.starting;
        case r'healthy':
          return HealthStatusEnum.healthy;
        case r'unhealthy':
          return HealthStatusEnum.unhealthy;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HealthStatusEnumTypeTransformer] instance.
  static HealthStatusEnumTypeTransformer? _instance;
}
