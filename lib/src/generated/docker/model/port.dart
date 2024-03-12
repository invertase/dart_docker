//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Port {
  /// Returns a new [Port] instance.
  Port({
    this.IP,
    required this.privatePort,
    this.publicPort,
    required this.type,
  });

  /// Host IP address that the container's port is mapped to
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? IP;

  /// Port on the container
  int privatePort;

  /// Port exposed on the host
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publicPort;

  PortTypeEnum type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Port &&
          other.IP == IP &&
          other.privatePort == privatePort &&
          other.publicPort == publicPort &&
          other.type == type;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (IP == null ? 0 : IP!.hashCode) +
      (privatePort.hashCode) +
      (publicPort == null ? 0 : publicPort!.hashCode) +
      (type.hashCode);

  @override
  String toString() =>
      'Port[IP=$IP, privatePort=$privatePort, publicPort=$publicPort, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.IP != null) {
      json[r'IP'] = this.IP;
    } else {
      json[r'IP'] = null;
    }
    json[r'PrivatePort'] = this.privatePort;
    if (this.publicPort != null) {
      json[r'PublicPort'] = this.publicPort;
    } else {
      json[r'PublicPort'] = null;
    }
    json[r'Type'] = this.type;
    return json;
  }

  /// Returns a new [Port] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Port? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Port[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Port[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Port(
        IP: mapValueOfType<String>(json, r'IP'),
        privatePort: mapValueOfType<int>(json, r'PrivatePort')!,
        publicPort: mapValueOfType<int>(json, r'PublicPort'),
        type: PortTypeEnum.fromJson(json[r'Type'])!,
      );
    }
    return null;
  }

  static List<Port> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Port>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Port.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Port> mapFromJson(dynamic json) {
    final map = <String, Port>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Port.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Port-objects as value to a dart map
  static Map<String, List<Port>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Port>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Port.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'PrivatePort',
    'Type',
  };
}

class PortTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PortTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const tcp = PortTypeEnum._(r'tcp');
  static const udp = PortTypeEnum._(r'udp');
  static const sctp = PortTypeEnum._(r'sctp');

  /// List of all possible values in this [enum][PortTypeEnum].
  static const values = <PortTypeEnum>[
    tcp,
    udp,
    sctp,
  ];

  static PortTypeEnum? fromJson(dynamic value) =>
      PortTypeEnumTypeTransformer().decode(value);

  static List<PortTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PortTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PortTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PortTypeEnum] to String,
/// and [decode] dynamic data back to [PortTypeEnum].
class PortTypeEnumTypeTransformer {
  factory PortTypeEnumTypeTransformer() =>
      _instance ??= const PortTypeEnumTypeTransformer._();

  const PortTypeEnumTypeTransformer._();

  String encode(PortTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PortTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PortTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'tcp':
          return PortTypeEnum.tcp;
        case r'udp':
          return PortTypeEnum.udp;
        case r'sctp':
          return PortTypeEnum.sctp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PortTypeEnumTypeTransformer] instance.
  static PortTypeEnumTypeTransformer? _instance;
}
