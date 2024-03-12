//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class RestartPolicy {
  /// Returns a new [RestartPolicy] instance.
  RestartPolicy({
    this.name,
    this.maximumRetryCount,
  });

  /// - Empty string means not to restart - `no` Do not automatically restart - `always` Always restart - `unless-stopped` Restart always except when the user has manually stopped the container - `on-failure` Restart only when the container exit code is non-zero
  RestartPolicyNameEnum? name;

  /// If `on-failure` is used, the number of times to retry before giving up.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maximumRetryCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RestartPolicy &&
          other.name == name &&
          other.maximumRetryCount == maximumRetryCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (maximumRetryCount == null ? 0 : maximumRetryCount!.hashCode);

  @override
  String toString() =>
      'RestartPolicy[name=$name, maximumRetryCount=$maximumRetryCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.maximumRetryCount != null) {
      json[r'MaximumRetryCount'] = this.maximumRetryCount;
    } else {
      json[r'MaximumRetryCount'] = null;
    }
    return json;
  }

  /// Returns a new [RestartPolicy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RestartPolicy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RestartPolicy[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RestartPolicy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RestartPolicy(
        name: RestartPolicyNameEnum.fromJson(json[r'Name']),
        maximumRetryCount: mapValueOfType<int>(json, r'MaximumRetryCount'),
      );
    }
    return null;
  }

  static List<RestartPolicy> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RestartPolicy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RestartPolicy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RestartPolicy> mapFromJson(dynamic json) {
    final map = <String, RestartPolicy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RestartPolicy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RestartPolicy-objects as value to a dart map
  static Map<String, List<RestartPolicy>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RestartPolicy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RestartPolicy.listFromJson(
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

/// - Empty string means not to restart - `no` Do not automatically restart - `always` Always restart - `unless-stopped` Restart always except when the user has manually stopped the container - `on-failure` Restart only when the container exit code is non-zero
class RestartPolicyNameEnum {
  /// Instantiate a new enum with the provided [value].
  const RestartPolicyNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const empty = RestartPolicyNameEnum._(r'');
  static const no = RestartPolicyNameEnum._(r'no');
  static const always = RestartPolicyNameEnum._(r'always');
  static const unlessStopped = RestartPolicyNameEnum._(r'unless-stopped');
  static const onFailure = RestartPolicyNameEnum._(r'on-failure');

  /// List of all possible values in this [enum][RestartPolicyNameEnum].
  static const values = <RestartPolicyNameEnum>[
    empty,
    no,
    always,
    unlessStopped,
    onFailure,
  ];

  static RestartPolicyNameEnum? fromJson(dynamic value) =>
      RestartPolicyNameEnumTypeTransformer().decode(value);

  static List<RestartPolicyNameEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RestartPolicyNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RestartPolicyNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RestartPolicyNameEnum] to String,
/// and [decode] dynamic data back to [RestartPolicyNameEnum].
class RestartPolicyNameEnumTypeTransformer {
  factory RestartPolicyNameEnumTypeTransformer() =>
      _instance ??= const RestartPolicyNameEnumTypeTransformer._();

  const RestartPolicyNameEnumTypeTransformer._();

  String encode(RestartPolicyNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RestartPolicyNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RestartPolicyNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'':
          return RestartPolicyNameEnum.empty;
        case r'no':
          return RestartPolicyNameEnum.no;
        case r'always':
          return RestartPolicyNameEnum.always;
        case r'unless-stopped':
          return RestartPolicyNameEnum.unlessStopped;
        case r'on-failure':
          return RestartPolicyNameEnum.onFailure;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RestartPolicyNameEnumTypeTransformer] instance.
  static RestartPolicyNameEnumTypeTransformer? _instance;
}
