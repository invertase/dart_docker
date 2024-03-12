//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

/// Reachability represents the reachability of a node.
class Reachability {
  /// Instantiate a new enum with the provided [value].
  const Reachability._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = Reachability._(r'unknown');
  static const unreachable = Reachability._(r'unreachable');
  static const reachable = Reachability._(r'reachable');

  /// List of all possible values in this [enum][Reachability].
  static const values = <Reachability>[
    unknown,
    unreachable,
    reachable,
  ];

  static Reachability? fromJson(dynamic value) =>
      ReachabilityTypeTransformer().decode(value);

  static List<Reachability> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Reachability>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Reachability.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Reachability] to String,
/// and [decode] dynamic data back to [Reachability].
class ReachabilityTypeTransformer {
  factory ReachabilityTypeTransformer() =>
      _instance ??= const ReachabilityTypeTransformer._();

  const ReachabilityTypeTransformer._();

  String encode(Reachability data) => data.value;

  /// Decodes a [dynamic value][data] to a Reachability.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Reachability? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unknown':
          return Reachability.unknown;
        case r'unreachable':
          return Reachability.unreachable;
        case r'reachable':
          return Reachability.reachable;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReachabilityTypeTransformer] instance.
  static ReachabilityTypeTransformer? _instance;
}
