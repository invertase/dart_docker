//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Node {
  /// Returns a new [Node] instance.
  Node({
    this.ID,
    this.version,
    this.createdAt,
    this.updatedAt,
    this.spec,
    this.description,
    this.status,
    this.managerStatus,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ObjectVersion? version;

  /// Date and time at which the node was added to the swarm in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Date and time at which the node was last updated in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeSpec? spec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeDescription? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NodeStatus? status;

  ManagerStatus? managerStatus;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Node &&
          other.ID == ID &&
          other.version == version &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.spec == spec &&
          other.description == description &&
          other.status == status &&
          other.managerStatus == managerStatus;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID == null ? 0 : ID!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (spec == null ? 0 : spec!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (managerStatus == null ? 0 : managerStatus!.hashCode);

  @override
  String toString() =>
      'Node[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, spec=$spec, description=$description, status=$status, managerStatus=$managerStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.version != null) {
      json[r'Version'] = this.version;
    } else {
      json[r'Version'] = null;
    }
    if (this.createdAt != null) {
      json[r'CreatedAt'] = this.createdAt;
    } else {
      json[r'CreatedAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'UpdatedAt'] = this.updatedAt;
    } else {
      json[r'UpdatedAt'] = null;
    }
    if (this.spec != null) {
      json[r'Spec'] = this.spec;
    } else {
      json[r'Spec'] = null;
    }
    if (this.description != null) {
      json[r'Description'] = this.description;
    } else {
      json[r'Description'] = null;
    }
    if (this.status != null) {
      json[r'Status'] = this.status;
    } else {
      json[r'Status'] = null;
    }
    if (this.managerStatus != null) {
      json[r'ManagerStatus'] = this.managerStatus;
    } else {
      json[r'ManagerStatus'] = null;
    }
    return json;
  }

  /// Returns a new [Node] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Node? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Node[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Node[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Node(
        ID: mapValueOfType<String>(json, r'ID'),
        version: ObjectVersion.fromJson(json[r'Version']),
        createdAt: mapValueOfType<String>(json, r'CreatedAt'),
        updatedAt: mapValueOfType<String>(json, r'UpdatedAt'),
        spec: NodeSpec.fromJson(json[r'Spec']),
        description: NodeDescription.fromJson(json[r'Description']),
        status: NodeStatus.fromJson(json[r'Status']),
        managerStatus: ManagerStatus.fromJson(json[r'ManagerStatus']),
      );
    }
    return null;
  }

  static List<Node> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Node>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Node.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Node> mapFromJson(dynamic json) {
    final map = <String, Node>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Node.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Node-objects as value to a dart map
  static Map<String, List<Node>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Node>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Node.listFromJson(
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
