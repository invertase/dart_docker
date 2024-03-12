//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceUpdateStatus {
  /// Returns a new [ServiceUpdateStatus] instance.
  ServiceUpdateStatus({
    this.state,
    this.startedAt,
    this.completedAt,
    this.message,
  });

  ServiceUpdateStatusStateEnum? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? startedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? completedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceUpdateStatus &&
          other.state == state &&
          other.startedAt == startedAt &&
          other.completedAt == completedAt &&
          other.message == message;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (state == null ? 0 : state!.hashCode) +
      (startedAt == null ? 0 : startedAt!.hashCode) +
      (completedAt == null ? 0 : completedAt!.hashCode) +
      (message == null ? 0 : message!.hashCode);

  @override
  String toString() =>
      'ServiceUpdateStatus[state=$state, startedAt=$startedAt, completedAt=$completedAt, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.state != null) {
      json[r'State'] = this.state;
    } else {
      json[r'State'] = null;
    }
    if (this.startedAt != null) {
      json[r'StartedAt'] = this.startedAt;
    } else {
      json[r'StartedAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'CompletedAt'] = this.completedAt;
    } else {
      json[r'CompletedAt'] = null;
    }
    if (this.message != null) {
      json[r'Message'] = this.message;
    } else {
      json[r'Message'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceUpdateStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceUpdateStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceUpdateStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceUpdateStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceUpdateStatus(
        state: ServiceUpdateStatusStateEnum.fromJson(json[r'State']),
        startedAt: mapValueOfType<String>(json, r'StartedAt'),
        completedAt: mapValueOfType<String>(json, r'CompletedAt'),
        message: mapValueOfType<String>(json, r'Message'),
      );
    }
    return null;
  }

  static List<ServiceUpdateStatus> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceUpdateStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceUpdateStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceUpdateStatus> mapFromJson(dynamic json) {
    final map = <String, ServiceUpdateStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceUpdateStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceUpdateStatus-objects as value to a dart map
  static Map<String, List<ServiceUpdateStatus>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceUpdateStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceUpdateStatus.listFromJson(
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

class ServiceUpdateStatusStateEnum {
  /// Instantiate a new enum with the provided [value].
  const ServiceUpdateStatusStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const updating = ServiceUpdateStatusStateEnum._(r'updating');
  static const paused = ServiceUpdateStatusStateEnum._(r'paused');
  static const completed = ServiceUpdateStatusStateEnum._(r'completed');

  /// List of all possible values in this [enum][ServiceUpdateStatusStateEnum].
  static const values = <ServiceUpdateStatusStateEnum>[
    updating,
    paused,
    completed,
  ];

  static ServiceUpdateStatusStateEnum? fromJson(dynamic value) =>
      ServiceUpdateStatusStateEnumTypeTransformer().decode(value);

  static List<ServiceUpdateStatusStateEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceUpdateStatusStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceUpdateStatusStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServiceUpdateStatusStateEnum] to String,
/// and [decode] dynamic data back to [ServiceUpdateStatusStateEnum].
class ServiceUpdateStatusStateEnumTypeTransformer {
  factory ServiceUpdateStatusStateEnumTypeTransformer() =>
      _instance ??= const ServiceUpdateStatusStateEnumTypeTransformer._();

  const ServiceUpdateStatusStateEnumTypeTransformer._();

  String encode(ServiceUpdateStatusStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ServiceUpdateStatusStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServiceUpdateStatusStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'updating':
          return ServiceUpdateStatusStateEnum.updating;
        case r'paused':
          return ServiceUpdateStatusStateEnum.paused;
        case r'completed':
          return ServiceUpdateStatusStateEnum.completed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ServiceUpdateStatusStateEnumTypeTransformer] instance.
  static ServiceUpdateStatusStateEnumTypeTransformer? _instance;
}
