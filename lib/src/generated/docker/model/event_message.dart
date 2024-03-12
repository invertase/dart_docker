//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class EventMessage {
  /// Returns a new [EventMessage] instance.
  EventMessage({
    this.type,
    this.action,
    this.actor,
    this.scope,
    this.time,
    this.timeNano,
  });

  /// The type of object emitting the event
  EventMessageTypeEnum? type;

  /// The type of event
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EventActor? actor;

  /// Scope of the event. Engine events are `local` scope. Cluster (Swarm) events are `swarm` scope.
  EventMessageScopeEnum? scope;

  /// Timestamp of event
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? time;

  /// Timestamp of event, with nanosecond accuracy
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? timeNano;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventMessage &&
          other.type == type &&
          other.action == action &&
          other.actor == actor &&
          other.scope == scope &&
          other.time == time &&
          other.timeNano == timeNano;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type == null ? 0 : type!.hashCode) +
      (action == null ? 0 : action!.hashCode) +
      (actor == null ? 0 : actor!.hashCode) +
      (scope == null ? 0 : scope!.hashCode) +
      (time == null ? 0 : time!.hashCode) +
      (timeNano == null ? 0 : timeNano!.hashCode);

  @override
  String toString() =>
      'EventMessage[type=$type, action=$action, actor=$actor, scope=$scope, time=$time, timeNano=$timeNano]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.action != null) {
      json[r'Action'] = this.action;
    } else {
      json[r'Action'] = null;
    }
    if (this.actor != null) {
      json[r'Actor'] = this.actor;
    } else {
      json[r'Actor'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    if (this.timeNano != null) {
      json[r'timeNano'] = this.timeNano;
    } else {
      json[r'timeNano'] = null;
    }
    return json;
  }

  /// Returns a new [EventMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "EventMessage[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "EventMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventMessage(
        type: EventMessageTypeEnum.fromJson(json[r'Type']),
        action: mapValueOfType<String>(json, r'Action'),
        actor: EventActor.fromJson(json[r'Actor']),
        scope: EventMessageScopeEnum.fromJson(json[r'scope']),
        time: mapValueOfType<int>(json, r'time'),
        timeNano: mapValueOfType<int>(json, r'timeNano'),
      );
    }
    return null;
  }

  static List<EventMessage> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EventMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventMessage> mapFromJson(dynamic json) {
    final map = <String, EventMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventMessage-objects as value to a dart map
  static Map<String, List<EventMessage>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<EventMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventMessage.listFromJson(
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

/// The type of object emitting the event
class EventMessageTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EventMessageTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const builder = EventMessageTypeEnum._(r'builder');
  static const config = EventMessageTypeEnum._(r'config');
  static const container = EventMessageTypeEnum._(r'container');
  static const daemon = EventMessageTypeEnum._(r'daemon');
  static const image = EventMessageTypeEnum._(r'image');
  static const network = EventMessageTypeEnum._(r'network');
  static const node = EventMessageTypeEnum._(r'node');
  static const plugin = EventMessageTypeEnum._(r'plugin');
  static const secret = EventMessageTypeEnum._(r'secret');
  static const service = EventMessageTypeEnum._(r'service');
  static const volume = EventMessageTypeEnum._(r'volume');

  /// List of all possible values in this [enum][EventMessageTypeEnum].
  static const values = <EventMessageTypeEnum>[
    builder,
    config,
    container,
    daemon,
    image,
    network,
    node,
    plugin,
    secret,
    service,
    volume,
  ];

  static EventMessageTypeEnum? fromJson(dynamic value) =>
      EventMessageTypeEnumTypeTransformer().decode(value);

  static List<EventMessageTypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EventMessageTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventMessageTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventMessageTypeEnum] to String,
/// and [decode] dynamic data back to [EventMessageTypeEnum].
class EventMessageTypeEnumTypeTransformer {
  factory EventMessageTypeEnumTypeTransformer() =>
      _instance ??= const EventMessageTypeEnumTypeTransformer._();

  const EventMessageTypeEnumTypeTransformer._();

  String encode(EventMessageTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EventMessageTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventMessageTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'builder':
          return EventMessageTypeEnum.builder;
        case r'config':
          return EventMessageTypeEnum.config;
        case r'container':
          return EventMessageTypeEnum.container;
        case r'daemon':
          return EventMessageTypeEnum.daemon;
        case r'image':
          return EventMessageTypeEnum.image;
        case r'network':
          return EventMessageTypeEnum.network;
        case r'node':
          return EventMessageTypeEnum.node;
        case r'plugin':
          return EventMessageTypeEnum.plugin;
        case r'secret':
          return EventMessageTypeEnum.secret;
        case r'service':
          return EventMessageTypeEnum.service;
        case r'volume':
          return EventMessageTypeEnum.volume;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventMessageTypeEnumTypeTransformer] instance.
  static EventMessageTypeEnumTypeTransformer? _instance;
}

/// Scope of the event. Engine events are `local` scope. Cluster (Swarm) events are `swarm` scope.
class EventMessageScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const EventMessageScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const local = EventMessageScopeEnum._(r'local');
  static const swarm = EventMessageScopeEnum._(r'swarm');

  /// List of all possible values in this [enum][EventMessageScopeEnum].
  static const values = <EventMessageScopeEnum>[
    local,
    swarm,
  ];

  static EventMessageScopeEnum? fromJson(dynamic value) =>
      EventMessageScopeEnumTypeTransformer().decode(value);

  static List<EventMessageScopeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <EventMessageScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventMessageScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EventMessageScopeEnum] to String,
/// and [decode] dynamic data back to [EventMessageScopeEnum].
class EventMessageScopeEnumTypeTransformer {
  factory EventMessageScopeEnumTypeTransformer() =>
      _instance ??= const EventMessageScopeEnumTypeTransformer._();

  const EventMessageScopeEnumTypeTransformer._();

  String encode(EventMessageScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EventMessageScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EventMessageScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'local':
          return EventMessageScopeEnum.local;
        case r'swarm':
          return EventMessageScopeEnum.swarm;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EventMessageScopeEnumTypeTransformer] instance.
  static EventMessageScopeEnumTypeTransformer? _instance;
}
