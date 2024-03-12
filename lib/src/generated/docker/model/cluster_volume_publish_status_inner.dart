//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ClusterVolumePublishStatusInner {
  /// Returns a new [ClusterVolumePublishStatusInner] instance.
  ClusterVolumePublishStatusInner({
    this.nodeID,
    this.state,
    this.publishContext = const {},
  });

  /// The ID of the Swarm node the volume is published on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nodeID;

  /// The published state of the volume. * `pending-publish` The volume should be published to this node, but the call to the controller plugin to do so has not yet been successfully completed. * `published` The volume is published successfully to the node. * `pending-node-unpublish` The volume should be unpublished from the node, and the manager is awaiting confirmation from the worker that it has done so. * `pending-controller-unpublish` The volume is successfully unpublished from the node, but has not yet been successfully unpublished on the controller.
  ClusterVolumePublishStatusInnerStateEnum? state;

  /// A map of strings to strings returned by the CSI controller plugin when a volume is published.
  Map<String, String> publishContext;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClusterVolumePublishStatusInner &&
          other.nodeID == nodeID &&
          other.state == state &&
          _deepEquality.equals(other.publishContext, publishContext);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nodeID == null ? 0 : nodeID!.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (publishContext.hashCode);

  @override
  String toString() =>
      'ClusterVolumePublishStatusInner[nodeID=$nodeID, state=$state, publishContext=$publishContext]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.nodeID != null) {
      json[r'NodeID'] = this.nodeID;
    } else {
      json[r'NodeID'] = null;
    }
    if (this.state != null) {
      json[r'State'] = this.state;
    } else {
      json[r'State'] = null;
    }
    json[r'PublishContext'] = this.publishContext;
    return json;
  }

  /// Returns a new [ClusterVolumePublishStatusInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClusterVolumePublishStatusInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ClusterVolumePublishStatusInner[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ClusterVolumePublishStatusInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClusterVolumePublishStatusInner(
        nodeID: mapValueOfType<String>(json, r'NodeID'),
        state:
            ClusterVolumePublishStatusInnerStateEnum.fromJson(json[r'State']),
        publishContext:
            mapCastOfType<String, String>(json, r'PublishContext') ?? const {},
      );
    }
    return null;
  }

  static List<ClusterVolumePublishStatusInner> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumePublishStatusInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumePublishStatusInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClusterVolumePublishStatusInner> mapFromJson(
      dynamic json) {
    final map = <String, ClusterVolumePublishStatusInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClusterVolumePublishStatusInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClusterVolumePublishStatusInner-objects as value to a dart map
  static Map<String, List<ClusterVolumePublishStatusInner>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ClusterVolumePublishStatusInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClusterVolumePublishStatusInner.listFromJson(
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

/// The published state of the volume. * `pending-publish` The volume should be published to this node, but the call to the controller plugin to do so has not yet been successfully completed. * `published` The volume is published successfully to the node. * `pending-node-unpublish` The volume should be unpublished from the node, and the manager is awaiting confirmation from the worker that it has done so. * `pending-controller-unpublish` The volume is successfully unpublished from the node, but has not yet been successfully unpublished on the controller.
class ClusterVolumePublishStatusInnerStateEnum {
  /// Instantiate a new enum with the provided [value].
  const ClusterVolumePublishStatusInnerStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pendingPublish =
      ClusterVolumePublishStatusInnerStateEnum._(r'pending-publish');
  static const published =
      ClusterVolumePublishStatusInnerStateEnum._(r'published');
  static const pendingNodeUnpublish =
      ClusterVolumePublishStatusInnerStateEnum._(r'pending-node-unpublish');
  static const pendingControllerUnpublish =
      ClusterVolumePublishStatusInnerStateEnum._(
          r'pending-controller-unpublish');

  /// List of all possible values in this [enum][ClusterVolumePublishStatusInnerStateEnum].
  static const values = <ClusterVolumePublishStatusInnerStateEnum>[
    pendingPublish,
    published,
    pendingNodeUnpublish,
    pendingControllerUnpublish,
  ];

  static ClusterVolumePublishStatusInnerStateEnum? fromJson(dynamic value) =>
      ClusterVolumePublishStatusInnerStateEnumTypeTransformer().decode(value);

  static List<ClusterVolumePublishStatusInnerStateEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ClusterVolumePublishStatusInnerStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClusterVolumePublishStatusInnerStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClusterVolumePublishStatusInnerStateEnum] to String,
/// and [decode] dynamic data back to [ClusterVolumePublishStatusInnerStateEnum].
class ClusterVolumePublishStatusInnerStateEnumTypeTransformer {
  factory ClusterVolumePublishStatusInnerStateEnumTypeTransformer() =>
      _instance ??=
          const ClusterVolumePublishStatusInnerStateEnumTypeTransformer._();

  const ClusterVolumePublishStatusInnerStateEnumTypeTransformer._();

  String encode(ClusterVolumePublishStatusInnerStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ClusterVolumePublishStatusInnerStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClusterVolumePublishStatusInnerStateEnum? decode(dynamic data,
      {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending-publish':
          return ClusterVolumePublishStatusInnerStateEnum.pendingPublish;
        case r'published':
          return ClusterVolumePublishStatusInnerStateEnum.published;
        case r'pending-node-unpublish':
          return ClusterVolumePublishStatusInnerStateEnum.pendingNodeUnpublish;
        case r'pending-controller-unpublish':
          return ClusterVolumePublishStatusInnerStateEnum
              .pendingControllerUnpublish;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClusterVolumePublishStatusInnerStateEnumTypeTransformer] instance.
  static ClusterVolumePublishStatusInnerStateEnumTypeTransformer? _instance;
}
