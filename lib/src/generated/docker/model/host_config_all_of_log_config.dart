//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class HostConfigAllOfLogConfig {
  /// Returns a new [HostConfigAllOfLogConfig] instance.
  HostConfigAllOfLogConfig({
    this.type,
    this.config = const {},
  });

  HostConfigAllOfLogConfigTypeEnum? type;

  Map<String, String> config;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HostConfigAllOfLogConfig &&
          other.type == type &&
          _deepEquality.equals(other.config, config);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) + (config.hashCode);

  @override
  String toString() => 'HostConfigAllOfLogConfig[type=$type, config=$config]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    json[r'Config'] = this.config;
    return json;
  }

  /// Returns a new [HostConfigAllOfLogConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HostConfigAllOfLogConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "HostConfigAllOfLogConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "HostConfigAllOfLogConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HostConfigAllOfLogConfig(
        type: HostConfigAllOfLogConfigTypeEnum.fromJson(json[r'Type']),
        config: mapCastOfType<String, String>(json, r'Config') ?? const {},
      );
    }
    return null;
  }

  static List<HostConfigAllOfLogConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HostConfigAllOfLogConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HostConfigAllOfLogConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HostConfigAllOfLogConfig> mapFromJson(dynamic json) {
    final map = <String, HostConfigAllOfLogConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HostConfigAllOfLogConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HostConfigAllOfLogConfig-objects as value to a dart map
  static Map<String, List<HostConfigAllOfLogConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<HostConfigAllOfLogConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HostConfigAllOfLogConfig.listFromJson(
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

class HostConfigAllOfLogConfigTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const HostConfigAllOfLogConfigTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const jsonFile = HostConfigAllOfLogConfigTypeEnum._(r'json-file');
  static const syslog = HostConfigAllOfLogConfigTypeEnum._(r'syslog');
  static const journald = HostConfigAllOfLogConfigTypeEnum._(r'journald');
  static const gelf = HostConfigAllOfLogConfigTypeEnum._(r'gelf');
  static const fluentd = HostConfigAllOfLogConfigTypeEnum._(r'fluentd');
  static const awslogs = HostConfigAllOfLogConfigTypeEnum._(r'awslogs');
  static const splunk = HostConfigAllOfLogConfigTypeEnum._(r'splunk');
  static const etwlogs = HostConfigAllOfLogConfigTypeEnum._(r'etwlogs');
  static const none = HostConfigAllOfLogConfigTypeEnum._(r'none');

  /// List of all possible values in this [enum][HostConfigAllOfLogConfigTypeEnum].
  static const values = <HostConfigAllOfLogConfigTypeEnum>[
    jsonFile,
    syslog,
    journald,
    gelf,
    fluentd,
    awslogs,
    splunk,
    etwlogs,
    none,
  ];

  static HostConfigAllOfLogConfigTypeEnum? fromJson(dynamic value) =>
      HostConfigAllOfLogConfigTypeEnumTypeTransformer().decode(value);

  static List<HostConfigAllOfLogConfigTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HostConfigAllOfLogConfigTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HostConfigAllOfLogConfigTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HostConfigAllOfLogConfigTypeEnum] to String,
/// and [decode] dynamic data back to [HostConfigAllOfLogConfigTypeEnum].
class HostConfigAllOfLogConfigTypeEnumTypeTransformer {
  factory HostConfigAllOfLogConfigTypeEnumTypeTransformer() =>
      _instance ??= const HostConfigAllOfLogConfigTypeEnumTypeTransformer._();

  const HostConfigAllOfLogConfigTypeEnumTypeTransformer._();

  String encode(HostConfigAllOfLogConfigTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HostConfigAllOfLogConfigTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HostConfigAllOfLogConfigTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'json-file':
          return HostConfigAllOfLogConfigTypeEnum.jsonFile;
        case r'syslog':
          return HostConfigAllOfLogConfigTypeEnum.syslog;
        case r'journald':
          return HostConfigAllOfLogConfigTypeEnum.journald;
        case r'gelf':
          return HostConfigAllOfLogConfigTypeEnum.gelf;
        case r'fluentd':
          return HostConfigAllOfLogConfigTypeEnum.fluentd;
        case r'awslogs':
          return HostConfigAllOfLogConfigTypeEnum.awslogs;
        case r'splunk':
          return HostConfigAllOfLogConfigTypeEnum.splunk;
        case r'etwlogs':
          return HostConfigAllOfLogConfigTypeEnum.etwlogs;
        case r'none':
          return HostConfigAllOfLogConfigTypeEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HostConfigAllOfLogConfigTypeEnumTypeTransformer] instance.
  static HostConfigAllOfLogConfigTypeEnumTypeTransformer? _instance;
}
