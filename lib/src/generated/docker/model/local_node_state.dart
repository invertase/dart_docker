//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

/// Current local status of this node.
class LocalNodeState {
  /// Instantiate a new enum with the provided [value].
  const LocalNodeState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const empty = LocalNodeState._(r'');
  static const inactive = LocalNodeState._(r'inactive');
  static const pending = LocalNodeState._(r'pending');
  static const active = LocalNodeState._(r'active');
  static const error = LocalNodeState._(r'error');
  static const locked = LocalNodeState._(r'locked');

  /// List of all possible values in this [enum][LocalNodeState].
  static const values = <LocalNodeState>[
    empty,
    inactive,
    pending,
    active,
    error,
    locked,
  ];

  static LocalNodeState? fromJson(dynamic value) =>
      LocalNodeStateTypeTransformer().decode(value);

  static List<LocalNodeState> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <LocalNodeState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalNodeState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LocalNodeState] to String,
/// and [decode] dynamic data back to [LocalNodeState].
class LocalNodeStateTypeTransformer {
  factory LocalNodeStateTypeTransformer() =>
      _instance ??= const LocalNodeStateTypeTransformer._();

  const LocalNodeStateTypeTransformer._();

  String encode(LocalNodeState data) => data.value;

  /// Decodes a [dynamic value][data] to a LocalNodeState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LocalNodeState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'':
          return LocalNodeState.empty;
        case r'inactive':
          return LocalNodeState.inactive;
        case r'pending':
          return LocalNodeState.pending;
        case r'active':
          return LocalNodeState.active;
        case r'error':
          return LocalNodeState.error;
        case r'locked':
          return LocalNodeState.locked;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LocalNodeStateTypeTransformer] instance.
  static LocalNodeStateTypeTransformer? _instance;
}
