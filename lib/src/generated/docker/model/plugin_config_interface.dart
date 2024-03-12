//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class PluginConfigInterface {
  /// Returns a new [PluginConfigInterface] instance.
  PluginConfigInterface({
    this.types = const [],
    required this.socket,
    this.protocolScheme,
  });

  List<PluginInterfaceType> types;

  String socket;

  /// Protocol to use for clients connecting to the plugin.
  PluginConfigInterfaceProtocolSchemeEnum? protocolScheme;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PluginConfigInterface &&
          _deepEquality.equals(other.types, types) &&
          other.socket == socket &&
          other.protocolScheme == protocolScheme;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (types.hashCode) +
      (socket.hashCode) +
      (protocolScheme == null ? 0 : protocolScheme!.hashCode);

  @override
  String toString() =>
      'PluginConfigInterface[types=$types, socket=$socket, protocolScheme=$protocolScheme]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Types'] = this.types;
    json[r'Socket'] = this.socket;
    if (this.protocolScheme != null) {
      json[r'ProtocolScheme'] = this.protocolScheme;
    } else {
      json[r'ProtocolScheme'] = null;
    }
    return json;
  }

  /// Returns a new [PluginConfigInterface] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginConfigInterface? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "PluginConfigInterface[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "PluginConfigInterface[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PluginConfigInterface(
        types: PluginInterfaceType.listFromJson(json[r'Types']),
        socket: mapValueOfType<String>(json, r'Socket')!,
        protocolScheme: PluginConfigInterfaceProtocolSchemeEnum.fromJson(
            json[r'ProtocolScheme']),
      );
    }
    return null;
  }

  static List<PluginConfigInterface> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginConfigInterface>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginConfigInterface.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginConfigInterface> mapFromJson(dynamic json) {
    final map = <String, PluginConfigInterface>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginConfigInterface.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginConfigInterface-objects as value to a dart map
  static Map<String, List<PluginConfigInterface>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PluginConfigInterface>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginConfigInterface.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Types',
    'Socket',
  };
}

/// Protocol to use for clients connecting to the plugin.
class PluginConfigInterfaceProtocolSchemeEnum {
  /// Instantiate a new enum with the provided [value].
  const PluginConfigInterfaceProtocolSchemeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const empty = PluginConfigInterfaceProtocolSchemeEnum._(r'');
  static const mobyPeriodPluginsPeriodHttpSlashV1 =
      PluginConfigInterfaceProtocolSchemeEnum._(r'moby.plugins.http/v1');

  /// List of all possible values in this [enum][PluginConfigInterfaceProtocolSchemeEnum].
  static const values = <PluginConfigInterfaceProtocolSchemeEnum>[
    empty,
    mobyPeriodPluginsPeriodHttpSlashV1,
  ];

  static PluginConfigInterfaceProtocolSchemeEnum? fromJson(dynamic value) =>
      PluginConfigInterfaceProtocolSchemeEnumTypeTransformer().decode(value);

  static List<PluginConfigInterfaceProtocolSchemeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PluginConfigInterfaceProtocolSchemeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginConfigInterfaceProtocolSchemeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PluginConfigInterfaceProtocolSchemeEnum] to String,
/// and [decode] dynamic data back to [PluginConfigInterfaceProtocolSchemeEnum].
class PluginConfigInterfaceProtocolSchemeEnumTypeTransformer {
  factory PluginConfigInterfaceProtocolSchemeEnumTypeTransformer() =>
      _instance ??=
          const PluginConfigInterfaceProtocolSchemeEnumTypeTransformer._();

  const PluginConfigInterfaceProtocolSchemeEnumTypeTransformer._();

  String encode(PluginConfigInterfaceProtocolSchemeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PluginConfigInterfaceProtocolSchemeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PluginConfigInterfaceProtocolSchemeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'':
          return PluginConfigInterfaceProtocolSchemeEnum.empty;
        case r'moby.plugins.http/v1':
          return PluginConfigInterfaceProtocolSchemeEnum
              .mobyPeriodPluginsPeriodHttpSlashV1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PluginConfigInterfaceProtocolSchemeEnumTypeTransformer] instance.
  static PluginConfigInterfaceProtocolSchemeEnumTypeTransformer? _instance;
}
