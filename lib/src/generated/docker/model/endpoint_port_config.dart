//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class EndpointPortConfig {
  /// Returns a new [EndpointPortConfig] instance.
  EndpointPortConfig({
    this.name,
    this.protocol,
    this.targetPort,
    this.publishedPort,
    this.publishMode = const EndpointPortConfigPublishModeEnum._('ingress'),
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  EndpointPortConfigProtocolEnum? protocol;

  /// The port inside the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? targetPort;

  /// The port on the swarm hosts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? publishedPort;

  /// The mode in which port is published.  <p><br /></p>  - \"ingress\" makes the target port accessible on every node,   regardless of whether there is a task for the service running on   that node or not. - \"host\" bypasses the routing mesh and publish the port directly on   the swarm node where that service is running.
  EndpointPortConfigPublishModeEnum publishMode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EndpointPortConfig &&
          other.name == name &&
          other.protocol == protocol &&
          other.targetPort == targetPort &&
          other.publishedPort == publishedPort &&
          other.publishMode == publishMode;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (protocol == null ? 0 : protocol!.hashCode) +
      (targetPort == null ? 0 : targetPort!.hashCode) +
      (publishedPort == null ? 0 : publishedPort!.hashCode) +
      (publishMode.hashCode);

  @override
  String toString() =>
      'EndpointPortConfig[name=$name, protocol=$protocol, targetPort=$targetPort, publishedPort=$publishedPort, publishMode=$publishMode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.protocol != null) {
      json[r'Protocol'] = this.protocol;
    } else {
      json[r'Protocol'] = null;
    }
    if (this.targetPort != null) {
      json[r'TargetPort'] = this.targetPort;
    } else {
      json[r'TargetPort'] = null;
    }
    if (this.publishedPort != null) {
      json[r'PublishedPort'] = this.publishedPort;
    } else {
      json[r'PublishedPort'] = null;
    }
    json[r'PublishMode'] = this.publishMode;
    return json;
  }

  /// Returns a new [EndpointPortConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointPortConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EndpointPortConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EndpointPortConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointPortConfig(
        name: mapValueOfType<String>(json, r'Name'),
        protocol: EndpointPortConfigProtocolEnum.fromJson(json[r'Protocol']),
        targetPort: mapValueOfType<int>(json, r'TargetPort'),
        publishedPort: mapValueOfType<int>(json, r'PublishedPort'),
        publishMode: EndpointPortConfigPublishModeEnum.ingress,
      );
    }
    return null;
  }

  static List<EndpointPortConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointPortConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointPortConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointPortConfig> mapFromJson(dynamic json) {
    final map = <String, EndpointPortConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointPortConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointPortConfig-objects as value to a dart map
  static Map<String, List<EndpointPortConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EndpointPortConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointPortConfig.listFromJson(
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

class EndpointPortConfigProtocolEnum {
  /// Instantiate a new enum with the provided [value].
  const EndpointPortConfigProtocolEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const tcp = EndpointPortConfigProtocolEnum._(r'tcp');
  static const udp = EndpointPortConfigProtocolEnum._(r'udp');
  static const sctp = EndpointPortConfigProtocolEnum._(r'sctp');

  /// List of all possible values in this [enum][EndpointPortConfigProtocolEnum].
  static const values = <EndpointPortConfigProtocolEnum>[
    tcp,
    udp,
    sctp,
  ];

  static EndpointPortConfigProtocolEnum? fromJson(dynamic value) =>
      EndpointPortConfigProtocolEnumTypeTransformer().decode(value);

  static List<EndpointPortConfigProtocolEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointPortConfigProtocolEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointPortConfigProtocolEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EndpointPortConfigProtocolEnum] to String,
/// and [decode] dynamic data back to [EndpointPortConfigProtocolEnum].
class EndpointPortConfigProtocolEnumTypeTransformer {
  factory EndpointPortConfigProtocolEnumTypeTransformer() =>
      _instance ??= const EndpointPortConfigProtocolEnumTypeTransformer._();

  const EndpointPortConfigProtocolEnumTypeTransformer._();

  String encode(EndpointPortConfigProtocolEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EndpointPortConfigProtocolEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EndpointPortConfigProtocolEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'tcp':
          return EndpointPortConfigProtocolEnum.tcp;
        case r'udp':
          return EndpointPortConfigProtocolEnum.udp;
        case r'sctp':
          return EndpointPortConfigProtocolEnum.sctp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EndpointPortConfigProtocolEnumTypeTransformer] instance.
  static EndpointPortConfigProtocolEnumTypeTransformer? _instance;
}

/// The mode in which port is published.  <p><br /></p>  - \"ingress\" makes the target port accessible on every node,   regardless of whether there is a task for the service running on   that node or not. - \"host\" bypasses the routing mesh and publish the port directly on   the swarm node where that service is running.
class EndpointPortConfigPublishModeEnum {
  /// Instantiate a new enum with the provided [value].
  const EndpointPortConfigPublishModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ingress = EndpointPortConfigPublishModeEnum._(r'ingress');
  static const host = EndpointPortConfigPublishModeEnum._(r'host');

  /// List of all possible values in this [enum][EndpointPortConfigPublishModeEnum].
  static const values = <EndpointPortConfigPublishModeEnum>[
    ingress,
    host,
  ];

  static EndpointPortConfigPublishModeEnum? fromJson(dynamic value) =>
      EndpointPortConfigPublishModeEnumTypeTransformer().decode(value);

  static List<EndpointPortConfigPublishModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EndpointPortConfigPublishModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointPortConfigPublishModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EndpointPortConfigPublishModeEnum] to String,
/// and [decode] dynamic data back to [EndpointPortConfigPublishModeEnum].
class EndpointPortConfigPublishModeEnumTypeTransformer {
  factory EndpointPortConfigPublishModeEnumTypeTransformer() =>
      _instance ??= const EndpointPortConfigPublishModeEnumTypeTransformer._();

  const EndpointPortConfigPublishModeEnumTypeTransformer._();

  String encode(EndpointPortConfigPublishModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EndpointPortConfigPublishModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EndpointPortConfigPublishModeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ingress':
          return EndpointPortConfigPublishModeEnum.ingress;
        case r'host':
          return EndpointPortConfigPublishModeEnum.host;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EndpointPortConfigPublishModeEnumTypeTransformer] instance.
  static EndpointPortConfigPublishModeEnumTypeTransformer? _instance;
}
