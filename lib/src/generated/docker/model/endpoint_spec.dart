//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class EndpointSpec {
  /// Returns a new [EndpointSpec] instance.
  EndpointSpec({
    this.mode = const EndpointSpecModeEnum._('vip'),
    this.ports = const [],
  });

  /// The mode of resolution to use for internal load balancing between tasks.
  EndpointSpecModeEnum mode;

  /// List of exposed ports that this service is accessible on from the outside. Ports can only be provided if `vip` resolution mode is used.
  List<EndpointPortConfig> ports;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointSpec &&
          other.mode == mode &&
          _deepEquality.equals(other.ports, ports);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (mode.hashCode) + (ports.hashCode);

  @override
  String toString() => 'EndpointSpec[mode=$mode, ports=$ports]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Mode'] = this.mode;
    json[r'Ports'] = this.ports;
    return json;
  }

  /// Returns a new [EndpointSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EndpointSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointSpec(
        mode: EndpointSpecModeEnum.vip,
        ports: EndpointPortConfig.listFromJson(json[r'Ports']),
      );
    }
    return null;
  }

  static List<EndpointSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointSpec> mapFromJson(dynamic json) {
    final map = <String, EndpointSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointSpec-objects as value to a dart map
  static Map<String, List<EndpointSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointSpec.listFromJson(
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

/// The mode of resolution to use for internal load balancing between tasks.
class EndpointSpecModeEnum {
  /// Instantiate a new enum with the provided [value].
  const EndpointSpecModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vip = EndpointSpecModeEnum._(r'vip');
  static const dnsrr = EndpointSpecModeEnum._(r'dnsrr');

  /// List of all possible values in this [enum][EndpointSpecModeEnum].
  static const values = <EndpointSpecModeEnum>[
    vip,
    dnsrr,
  ];

  static EndpointSpecModeEnum? fromJson(dynamic value) =>
      EndpointSpecModeEnumTypeTransformer().decode(value);

  static List<EndpointSpecModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointSpecModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointSpecModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EndpointSpecModeEnum] to String,
/// and [decode] dynamic data back to [EndpointSpecModeEnum].
class EndpointSpecModeEnumTypeTransformer {
  factory EndpointSpecModeEnumTypeTransformer() =>
      _instance ??= const EndpointSpecModeEnumTypeTransformer._();

  const EndpointSpecModeEnumTypeTransformer._();

  String encode(EndpointSpecModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EndpointSpecModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EndpointSpecModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'vip':
          return EndpointSpecModeEnum.vip;
        case r'dnsrr':
          return EndpointSpecModeEnum.dnsrr;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EndpointSpecModeEnumTypeTransformer] instance.
  static EndpointSpecModeEnumTypeTransformer? _instance;
}
