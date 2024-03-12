//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class NodeSpec {
  /// Returns a new [NodeSpec] instance.
  NodeSpec({
    this.name,
    this.labels = const {},
    this.role,
    this.availability,
  });

  /// Name for the node.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  /// Role of the node.
  NodeSpecRoleEnum? role;

  /// Availability of the node.
  NodeSpecAvailabilityEnum? availability;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NodeSpec &&
          other.name == name &&
          _deepEquality.equals(other.labels, labels) &&
          other.role == role &&
          other.availability == availability;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (labels.hashCode) +
      (role == null ? 0 : role!.hashCode) +
      (availability == null ? 0 : availability!.hashCode);

  @override
  String toString() =>
      'NodeSpec[name=$name, labels=$labels, role=$role, availability=$availability]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Labels'] = this.labels;
    if (this.role != null) {
      json[r'Role'] = this.role;
    } else {
      json[r'Role'] = null;
    }
    if (this.availability != null) {
      json[r'Availability'] = this.availability;
    } else {
      json[r'Availability'] = null;
    }
    return json;
  }

  /// Returns a new [NodeSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NodeSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "NodeSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "NodeSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NodeSpec(
        name: mapValueOfType<String>(json, r'Name'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        role: NodeSpecRoleEnum.fromJson(json[r'Role']),
        availability: NodeSpecAvailabilityEnum.fromJson(json[r'Availability']),
      );
    }
    return null;
  }

  static List<NodeSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NodeSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NodeSpec> mapFromJson(dynamic json) {
    final map = <String, NodeSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NodeSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NodeSpec-objects as value to a dart map
  static Map<String, List<NodeSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<NodeSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NodeSpec.listFromJson(
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

/// Role of the node.
class NodeSpecRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const NodeSpecRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const worker = NodeSpecRoleEnum._(r'worker');
  static const manager = NodeSpecRoleEnum._(r'manager');

  /// List of all possible values in this [enum][NodeSpecRoleEnum].
  static const values = <NodeSpecRoleEnum>[
    worker,
    manager,
  ];

  static NodeSpecRoleEnum? fromJson(dynamic value) =>
      NodeSpecRoleEnumTypeTransformer().decode(value);

  static List<NodeSpecRoleEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NodeSpecRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeSpecRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NodeSpecRoleEnum] to String,
/// and [decode] dynamic data back to [NodeSpecRoleEnum].
class NodeSpecRoleEnumTypeTransformer {
  factory NodeSpecRoleEnumTypeTransformer() =>
      _instance ??= const NodeSpecRoleEnumTypeTransformer._();

  const NodeSpecRoleEnumTypeTransformer._();

  String encode(NodeSpecRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NodeSpecRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NodeSpecRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'worker':
          return NodeSpecRoleEnum.worker;
        case r'manager':
          return NodeSpecRoleEnum.manager;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NodeSpecRoleEnumTypeTransformer] instance.
  static NodeSpecRoleEnumTypeTransformer? _instance;
}

/// Availability of the node.
class NodeSpecAvailabilityEnum {
  /// Instantiate a new enum with the provided [value].
  const NodeSpecAvailabilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = NodeSpecAvailabilityEnum._(r'active');
  static const pause = NodeSpecAvailabilityEnum._(r'pause');
  static const drain = NodeSpecAvailabilityEnum._(r'drain');

  /// List of all possible values in this [enum][NodeSpecAvailabilityEnum].
  static const values = <NodeSpecAvailabilityEnum>[
    active,
    pause,
    drain,
  ];

  static NodeSpecAvailabilityEnum? fromJson(dynamic value) =>
      NodeSpecAvailabilityEnumTypeTransformer().decode(value);

  static List<NodeSpecAvailabilityEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <NodeSpecAvailabilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeSpecAvailabilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NodeSpecAvailabilityEnum] to String,
/// and [decode] dynamic data back to [NodeSpecAvailabilityEnum].
class NodeSpecAvailabilityEnumTypeTransformer {
  factory NodeSpecAvailabilityEnumTypeTransformer() =>
      _instance ??= const NodeSpecAvailabilityEnumTypeTransformer._();

  const NodeSpecAvailabilityEnumTypeTransformer._();

  String encode(NodeSpecAvailabilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NodeSpecAvailabilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NodeSpecAvailabilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active':
          return NodeSpecAvailabilityEnum.active;
        case r'pause':
          return NodeSpecAvailabilityEnum.pause;
        case r'drain':
          return NodeSpecAvailabilityEnum.drain;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NodeSpecAvailabilityEnumTypeTransformer] instance.
  static NodeSpecAvailabilityEnumTypeTransformer? _instance;
}
