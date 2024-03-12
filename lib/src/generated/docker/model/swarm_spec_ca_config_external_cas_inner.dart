//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmSpecCAConfigExternalCAsInner {
  /// Returns a new [SwarmSpecCAConfigExternalCAsInner] instance.
  SwarmSpecCAConfigExternalCAsInner({
    this.protocol =
        const SwarmSpecCAConfigExternalCAsInnerProtocolEnum._('cfssl'),
    this.URL,
    this.options = const {},
    this.cACert,
  });

  /// Protocol for communication with the external CA (currently only `cfssl` is supported).
  SwarmSpecCAConfigExternalCAsInnerProtocolEnum protocol;

  /// URL where certificate signing requests should be sent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? URL;

  /// An object with key/value pairs that are interpreted as protocol-specific options for the external CA driver.
  Map<String, String> options;

  /// The root CA certificate (in PEM format) this external CA uses to issue TLS certificates (assumed to be to the current swarm root CA certificate if not provided).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cACert;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmSpecCAConfigExternalCAsInner &&
          other.protocol == protocol &&
          other.URL == URL &&
          _deepEquality.equals(other.options, options) &&
          other.cACert == cACert;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (protocol.hashCode) +
      (URL == null ? 0 : URL!.hashCode) +
      (options.hashCode) +
      (cACert == null ? 0 : cACert!.hashCode);

  @override
  String toString() =>
      'SwarmSpecCAConfigExternalCAsInner[protocol=$protocol, URL=$URL, options=$options, cACert=$cACert]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Protocol'] = this.protocol;
    if (this.URL != null) {
      json[r'URL'] = this.URL;
    } else {
      json[r'URL'] = null;
    }
    json[r'Options'] = this.options;
    if (this.cACert != null) {
      json[r'CACert'] = this.cACert;
    } else {
      json[r'CACert'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmSpecCAConfigExternalCAsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmSpecCAConfigExternalCAsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmSpecCAConfigExternalCAsInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmSpecCAConfigExternalCAsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmSpecCAConfigExternalCAsInner(
        // TODO enum convert
        protocol: SwarmSpecCAConfigExternalCAsInnerProtocolEnum.cfssl,
        URL: mapValueOfType<String>(json, r'URL'),
        options: mapCastOfType<String, String>(json, r'Options') ?? const {},
        cACert: mapValueOfType<String>(json, r'CACert'),
      );
    }
    return null;
  }

  static List<SwarmSpecCAConfigExternalCAsInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmSpecCAConfigExternalCAsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmSpecCAConfigExternalCAsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmSpecCAConfigExternalCAsInner> mapFromJson(
      dynamic json) {
    final map = <String, SwarmSpecCAConfigExternalCAsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmSpecCAConfigExternalCAsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmSpecCAConfigExternalCAsInner-objects as value to a dart map
  static Map<String, List<SwarmSpecCAConfigExternalCAsInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmSpecCAConfigExternalCAsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmSpecCAConfigExternalCAsInner.listFromJson(
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

/// Protocol for communication with the external CA (currently only `cfssl` is supported).
class SwarmSpecCAConfigExternalCAsInnerProtocolEnum {
  /// Instantiate a new enum with the provided [value].
  const SwarmSpecCAConfigExternalCAsInnerProtocolEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cfssl =
      SwarmSpecCAConfigExternalCAsInnerProtocolEnum._(r'cfssl');

  /// List of all possible values in this [enum][SwarmSpecCAConfigExternalCAsInnerProtocolEnum].
  static const values = <SwarmSpecCAConfigExternalCAsInnerProtocolEnum>[
    cfssl,
  ];

  static SwarmSpecCAConfigExternalCAsInnerProtocolEnum? fromJson(
          dynamic value) =>
      SwarmSpecCAConfigExternalCAsInnerProtocolEnumTypeTransformer()
          .decode(value);

  static List<SwarmSpecCAConfigExternalCAsInnerProtocolEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmSpecCAConfigExternalCAsInnerProtocolEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            SwarmSpecCAConfigExternalCAsInnerProtocolEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SwarmSpecCAConfigExternalCAsInnerProtocolEnum] to String,
/// and [decode] dynamic data back to [SwarmSpecCAConfigExternalCAsInnerProtocolEnum].
class SwarmSpecCAConfigExternalCAsInnerProtocolEnumTypeTransformer {
  factory SwarmSpecCAConfigExternalCAsInnerProtocolEnumTypeTransformer() =>
      _instance ??=
          const SwarmSpecCAConfigExternalCAsInnerProtocolEnumTypeTransformer
              ._();

  const SwarmSpecCAConfigExternalCAsInnerProtocolEnumTypeTransformer._();

  String encode(SwarmSpecCAConfigExternalCAsInnerProtocolEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a SwarmSpecCAConfigExternalCAsInnerProtocolEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SwarmSpecCAConfigExternalCAsInnerProtocolEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cfssl':
          return SwarmSpecCAConfigExternalCAsInnerProtocolEnum.cfssl;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SwarmSpecCAConfigExternalCAsInnerProtocolEnumTypeTransformer] instance.
  static SwarmSpecCAConfigExternalCAsInnerProtocolEnumTypeTransformer?
      _instance;
}
