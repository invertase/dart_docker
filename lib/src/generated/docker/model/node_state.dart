//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

/// NodeState represents the state of a node.
class NodeState {
  /// Instantiate a new enum with the provided [value].
  const NodeState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unknown = NodeState._(r'unknown');
  static const down = NodeState._(r'down');
  static const ready = NodeState._(r'ready');
  static const disconnected = NodeState._(r'disconnected');

  /// List of all possible values in this [enum][NodeState].
  static const values = <NodeState>[
    unknown,
    down,
    ready,
    disconnected,
  ];

  static NodeState? fromJson(dynamic value) =>
      NodeStateTypeTransformer().decode(value);

  static List<NodeState> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NodeState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NodeState] to String,
/// and [decode] dynamic data back to [NodeState].
class NodeStateTypeTransformer {
  factory NodeStateTypeTransformer() =>
      _instance ??= const NodeStateTypeTransformer._();

  const NodeStateTypeTransformer._();

  String encode(NodeState data) => data.value;

  /// Decodes a [dynamic value][data] to a NodeState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NodeState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'unknown':
          return NodeState.unknown;
        case r'down':
          return NodeState.down;
        case r'ready':
          return NodeState.ready;
        case r'disconnected':
          return NodeState.disconnected;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NodeStateTypeTransformer] instance.
  static NodeStateTypeTransformer? _instance;
}
