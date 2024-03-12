//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceSpecUpdateConfig {
  /// Returns a new [ServiceSpecUpdateConfig] instance.
  ServiceSpecUpdateConfig({
    this.parallelism,
    this.delay,
    this.failureAction,
    this.monitor,
    this.maxFailureRatio,
    this.order,
  });

  /// Maximum number of tasks to be updated in one iteration (0 means unlimited parallelism).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parallelism;

  /// Amount of time between updates, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delay;

  /// Action to take if an updated task fails to run, or stops running during the update.
  ServiceSpecUpdateConfigFailureActionEnum? failureAction;

  /// Amount of time to monitor each updated task for failures, in nanoseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monitor;

  /// The fraction of tasks that may fail during an update before the failure action is invoked, specified as a floating point number between 0 and 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? maxFailureRatio;

  /// The order of operations when rolling out an updated task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down.
  ServiceSpecUpdateConfigOrderEnum? order;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceSpecUpdateConfig &&
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
      'ServiceSpecUpdateConfig[parallelism=$parallelism, delay=$delay, failureAction=$failureAction, monitor=$monitor, maxFailureRatio=$maxFailureRatio, order=$order]';

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

  /// Returns a new [ServiceSpecUpdateConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceSpecUpdateConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceSpecUpdateConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceSpecUpdateConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceSpecUpdateConfig(
        parallelism: mapValueOfType<int>(json, r'Parallelism'),
        delay: mapValueOfType<int>(json, r'Delay'),
        failureAction: ServiceSpecUpdateConfigFailureActionEnum.fromJson(
            json[r'FailureAction']),
        monitor: mapValueOfType<int>(json, r'Monitor'),
        maxFailureRatio: num.parse('${json[r'MaxFailureRatio']}'),
        order: ServiceSpecUpdateConfigOrderEnum.fromJson(json[r'Order']),
      );
    }
    return null;
  }

  static List<ServiceSpecUpdateConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceSpecUpdateConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceSpecUpdateConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceSpecUpdateConfig> mapFromJson(dynamic json) {
    final map = <String, ServiceSpecUpdateConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceSpecUpdateConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceSpecUpdateConfig-objects as value to a dart map
  static Map<String, List<ServiceSpecUpdateConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceSpecUpdateConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceSpecUpdateConfig.listFromJson(
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

/// Action to take if an updated task fails to run, or stops running during the update.
class ServiceSpecUpdateConfigFailureActionEnum {
  /// Instantiate a new enum with the provided [value].
  const ServiceSpecUpdateConfigFailureActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const continue_ =
      ServiceSpecUpdateConfigFailureActionEnum._(r'continue');
  static const pause = ServiceSpecUpdateConfigFailureActionEnum._(r'pause');
  static const rollback =
      ServiceSpecUpdateConfigFailureActionEnum._(r'rollback');

  /// List of all possible values in this [enum][ServiceSpecUpdateConfigFailureActionEnum].
  static const values = <ServiceSpecUpdateConfigFailureActionEnum>[
    continue_,
    pause,
    rollback,
  ];

  static ServiceSpecUpdateConfigFailureActionEnum? fromJson(dynamic value) =>
      ServiceSpecUpdateConfigFailureActionEnumTypeTransformer().decode(value);

  static List<ServiceSpecUpdateConfigFailureActionEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceSpecUpdateConfigFailureActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceSpecUpdateConfigFailureActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServiceSpecUpdateConfigFailureActionEnum] to String,
/// and [decode] dynamic data back to [ServiceSpecUpdateConfigFailureActionEnum].
class ServiceSpecUpdateConfigFailureActionEnumTypeTransformer {
  factory ServiceSpecUpdateConfigFailureActionEnumTypeTransformer() =>
      _instance ??=
          const ServiceSpecUpdateConfigFailureActionEnumTypeTransformer._();

  const ServiceSpecUpdateConfigFailureActionEnumTypeTransformer._();

  String encode(ServiceSpecUpdateConfigFailureActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServiceSpecUpdateConfigFailureActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServiceSpecUpdateConfigFailureActionEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'continue':
          return ServiceSpecUpdateConfigFailureActionEnum.continue_;
        case r'pause':
          return ServiceSpecUpdateConfigFailureActionEnum.pause;
        case r'rollback':
          return ServiceSpecUpdateConfigFailureActionEnum.rollback;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServiceSpecUpdateConfigFailureActionEnumTypeTransformer] instance.
  static ServiceSpecUpdateConfigFailureActionEnumTypeTransformer? _instance;
}

/// The order of operations when rolling out an updated task. Either the old task is shut down before the new task is started, or the new task is started before the old task is shut down.
class ServiceSpecUpdateConfigOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const ServiceSpecUpdateConfigOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const stopFirst = ServiceSpecUpdateConfigOrderEnum._(r'stop-first');
  static const startFirst = ServiceSpecUpdateConfigOrderEnum._(r'start-first');

  /// List of all possible values in this [enum][ServiceSpecUpdateConfigOrderEnum].
  static const values = <ServiceSpecUpdateConfigOrderEnum>[
    stopFirst,
    startFirst,
  ];

  static ServiceSpecUpdateConfigOrderEnum? fromJson(dynamic value) =>
      ServiceSpecUpdateConfigOrderEnumTypeTransformer().decode(value);

  static List<ServiceSpecUpdateConfigOrderEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceSpecUpdateConfigOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceSpecUpdateConfigOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServiceSpecUpdateConfigOrderEnum] to String,
/// and [decode] dynamic data back to [ServiceSpecUpdateConfigOrderEnum].
class ServiceSpecUpdateConfigOrderEnumTypeTransformer {
  factory ServiceSpecUpdateConfigOrderEnumTypeTransformer() =>
      _instance ??= const ServiceSpecUpdateConfigOrderEnumTypeTransformer._();

  const ServiceSpecUpdateConfigOrderEnumTypeTransformer._();

  String encode(ServiceSpecUpdateConfigOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServiceSpecUpdateConfigOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServiceSpecUpdateConfigOrderEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'stop-first':
          return ServiceSpecUpdateConfigOrderEnum.stopFirst;
        case r'start-first':
          return ServiceSpecUpdateConfigOrderEnum.startFirst;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServiceSpecUpdateConfigOrderEnumTypeTransformer] instance.
  static ServiceSpecUpdateConfigOrderEnumTypeTransformer? _instance;
}
