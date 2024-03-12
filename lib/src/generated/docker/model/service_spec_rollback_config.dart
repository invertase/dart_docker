//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceSpecRollbackConfig {
  /// Returns a new [ServiceSpecRollbackConfig] instance.
  ServiceSpecRollbackConfig({
    this.parallelism,
    this.delay,
    this.failureAction,
    this.monitor,
    this.maxFailureRatio,
    this.order,
  });

  /// Maximum number of tasks to be rolled back in one iteration (0 means unlimited parallelism).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parallelism;

  /// Amount of time between rollback iterations, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delay;

  /// Action to take if an rolled back task fails to run, or stops running during the rollback.
  ServiceSpecRollbackConfigFailureActionEnum? failureAction;

  /// Amount of time to monitor each rolled back task for failures, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monitor;

  /// The fraction of tasks that may fail during a rollback before the failure action is invoked, specified as a floating point number between 0 and 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? maxFailureRatio;

  /// The order of operations when rolling back a task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down.
  ServiceSpecRollbackConfigOrderEnum? order;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceSpecRollbackConfig &&
          other.parallelism == parallelism &&
          other.delay == delay &&
          other.failureAction == failureAction &&
          other.monitor == monitor &&
          other.maxFailureRatio == maxFailureRatio &&
          other.order == order;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (parallelism == null ? 0 : parallelism!.hashCode) +
      (delay == null ? 0 : delay!.hashCode) +
      (failureAction == null ? 0 : failureAction!.hashCode) +
      (monitor == null ? 0 : monitor!.hashCode) +
      (maxFailureRatio == null ? 0 : maxFailureRatio!.hashCode) +
      (order == null ? 0 : order!.hashCode);

  @override
  String toString() =>
      'ServiceSpecRollbackConfig[parallelism=$parallelism, delay=$delay, failureAction=$failureAction, monitor=$monitor, maxFailureRatio=$maxFailureRatio, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.parallelism != null) {
      json[r'Parallelism'] = this.parallelism;
    } else {
      json[r'Parallelism'] = null;
    }
    if (this.delay != null) {
      json[r'Delay'] = this.delay;
    } else {
      json[r'Delay'] = null;
    }
    if (this.failureAction != null) {
      json[r'FailureAction'] = this.failureAction;
    } else {
      json[r'FailureAction'] = null;
    }
    if (this.monitor != null) {
      json[r'Monitor'] = this.monitor;
    } else {
      json[r'Monitor'] = null;
    }
    if (this.maxFailureRatio != null) {
      json[r'MaxFailureRatio'] = this.maxFailureRatio;
    } else {
      json[r'MaxFailureRatio'] = null;
    }
    if (this.order != null) {
      json[r'Order'] = this.order;
    } else {
      json[r'Order'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceSpecRollbackConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceSpecRollbackConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceSpecRollbackConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceSpecRollbackConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceSpecRollbackConfig(
        parallelism: mapValueOfType<int>(json, r'Parallelism'),
        delay: mapValueOfType<int>(json, r'Delay'),
        failureAction: ServiceSpecRollbackConfigFailureActionEnum.fromJson(
            json[r'FailureAction']),
        monitor: mapValueOfType<int>(json, r'Monitor'),
        maxFailureRatio: num.parse('${json[r'MaxFailureRatio']}'),
        order: ServiceSpecRollbackConfigOrderEnum.fromJson(json[r'Order']),
      );
    }
    return null;
  }

  static List<ServiceSpecRollbackConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceSpecRollbackConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceSpecRollbackConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceSpecRollbackConfig> mapFromJson(dynamic json) {
    final map = <String, ServiceSpecRollbackConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceSpecRollbackConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceSpecRollbackConfig-objects as value to a dart map
  static Map<String, List<ServiceSpecRollbackConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceSpecRollbackConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceSpecRollbackConfig.listFromJson(
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

/// Action to take if an rolled back task fails to run, or stops running during the rollback.
class ServiceSpecRollbackConfigFailureActionEnum {
  /// Instantiate a new enum with the provided [value].
  const ServiceSpecRollbackConfigFailureActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const continue_ =
      ServiceSpecRollbackConfigFailureActionEnum._(r'continue');
  static const pause = ServiceSpecRollbackConfigFailureActionEnum._(r'pause');

  /// List of all possible values in this [enum][ServiceSpecRollbackConfigFailureActionEnum].
  static const values = <ServiceSpecRollbackConfigFailureActionEnum>[
    continue_,
    pause,
  ];

  static ServiceSpecRollbackConfigFailureActionEnum? fromJson(dynamic value) =>
      ServiceSpecRollbackConfigFailureActionEnumTypeTransformer().decode(value);

  static List<ServiceSpecRollbackConfigFailureActionEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceSpecRollbackConfigFailureActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceSpecRollbackConfigFailureActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServiceSpecRollbackConfigFailureActionEnum] to String,
/// and [decode] dynamic data back to [ServiceSpecRollbackConfigFailureActionEnum].
class ServiceSpecRollbackConfigFailureActionEnumTypeTransformer {
  factory ServiceSpecRollbackConfigFailureActionEnumTypeTransformer() =>
      _instance ??=
          const ServiceSpecRollbackConfigFailureActionEnumTypeTransformer._();

  const ServiceSpecRollbackConfigFailureActionEnumTypeTransformer._();

  String encode(ServiceSpecRollbackConfigFailureActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServiceSpecRollbackConfigFailureActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServiceSpecRollbackConfigFailureActionEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'continue':
          return ServiceSpecRollbackConfigFailureActionEnum.continue_;
        case r'pause':
          return ServiceSpecRollbackConfigFailureActionEnum.pause;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServiceSpecRollbackConfigFailureActionEnumTypeTransformer] instance.
  static ServiceSpecRollbackConfigFailureActionEnumTypeTransformer? _instance;
}

/// The order of operations when rolling back a task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down.
class ServiceSpecRollbackConfigOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const ServiceSpecRollbackConfigOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const stopFirst = ServiceSpecRollbackConfigOrderEnum._(r'stop-first');
  static const startFirst =
      ServiceSpecRollbackConfigOrderEnum._(r'start-first');

  /// List of all possible values in this [enum][ServiceSpecRollbackConfigOrderEnum].
  static const values = <ServiceSpecRollbackConfigOrderEnum>[
    stopFirst,
    startFirst,
  ];

  static ServiceSpecRollbackConfigOrderEnum? fromJson(dynamic value) =>
      ServiceSpecRollbackConfigOrderEnumTypeTransformer().decode(value);

  static List<ServiceSpecRollbackConfigOrderEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceSpecRollbackConfigOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceSpecRollbackConfigOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServiceSpecRollbackConfigOrderEnum] to String,
/// and [decode] dynamic data back to [ServiceSpecRollbackConfigOrderEnum].
class ServiceSpecRollbackConfigOrderEnumTypeTransformer {
  factory ServiceSpecRollbackConfigOrderEnumTypeTransformer() =>
      _instance ??= const ServiceSpecRollbackConfigOrderEnumTypeTransformer._();

  const ServiceSpecRollbackConfigOrderEnumTypeTransformer._();

  String encode(ServiceSpecRollbackConfigOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServiceSpecRollbackConfigOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServiceSpecRollbackConfigOrderEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'stop-first':
          return ServiceSpecRollbackConfigOrderEnum.stopFirst;
        case r'start-first':
          return ServiceSpecRollbackConfigOrderEnum.startFirst;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServiceSpecRollbackConfigOrderEnumTypeTransformer] instance.
  static ServiceSpecRollbackConfigOrderEnumTypeTransformer? _instance;
}
