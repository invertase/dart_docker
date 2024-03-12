//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SwarmSpec {
  /// Returns a new [SwarmSpec] instance.
  SwarmSpec({
    this.name,
    this.labels = const {},
    this.orchestration,
    this.raft,
    this.dispatcher,
    this.cAConfig,
    this.encryptionConfig,
    this.taskDefaults,
  });

  /// Name of the swarm.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  SwarmSpecOrchestration? orchestration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SwarmSpecRaft? raft;

  SwarmSpecDispatcher? dispatcher;

  SwarmSpecCAConfig? cAConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SwarmSpecEncryptionConfig? encryptionConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SwarmSpecTaskDefaults? taskDefaults;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwarmSpec &&
          other.name == name &&
          _deepEquality.equals(other.labels, labels) &&
          other.orchestration == orchestration &&
          other.raft == raft &&
          other.dispatcher == dispatcher &&
          other.cAConfig == cAConfig &&
          other.encryptionConfig == encryptionConfig &&
          other.taskDefaults == taskDefaults;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (labels.hashCode) +
      (orchestration == null ? 0 : orchestration!.hashCode) +
      (raft == null ? 0 : raft!.hashCode) +
      (dispatcher == null ? 0 : dispatcher!.hashCode) +
      (cAConfig == null ? 0 : cAConfig!.hashCode) +
      (encryptionConfig == null ? 0 : encryptionConfig!.hashCode) +
      (taskDefaults == null ? 0 : taskDefaults!.hashCode);

  @override
  String toString() =>
      'SwarmSpec[name=$name, labels=$labels, orchestration=$orchestration, raft=$raft, dispatcher=$dispatcher, cAConfig=$cAConfig, encryptionConfig=$encryptionConfig, taskDefaults=$taskDefaults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Labels'] = this.labels;
    if (this.orchestration != null) {
      json[r'Orchestration'] = this.orchestration;
    } else {
      json[r'Orchestration'] = null;
    }
    if (this.raft != null) {
      json[r'Raft'] = this.raft;
    } else {
      json[r'Raft'] = null;
    }
    if (this.dispatcher != null) {
      json[r'Dispatcher'] = this.dispatcher;
    } else {
      json[r'Dispatcher'] = null;
    }
    if (this.cAConfig != null) {
      json[r'CAConfig'] = this.cAConfig;
    } else {
      json[r'CAConfig'] = null;
    }
    if (this.encryptionConfig != null) {
      json[r'EncryptionConfig'] = this.encryptionConfig;
    } else {
      json[r'EncryptionConfig'] = null;
    }
    if (this.taskDefaults != null) {
      json[r'TaskDefaults'] = this.taskDefaults;
    } else {
      json[r'TaskDefaults'] = null;
    }
    return json;
  }

  /// Returns a new [SwarmSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwarmSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SwarmSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SwarmSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwarmSpec(
        name: mapValueOfType<String>(json, r'Name'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        orchestration: SwarmSpecOrchestration.fromJson(json[r'Orchestration']),
        raft: SwarmSpecRaft.fromJson(json[r'Raft']),
        dispatcher: SwarmSpecDispatcher.fromJson(json[r'Dispatcher']),
        cAConfig: SwarmSpecCAConfig.fromJson(json[r'CAConfig']),
        encryptionConfig:
            SwarmSpecEncryptionConfig.fromJson(json[r'EncryptionConfig']),
        taskDefaults: SwarmSpecTaskDefaults.fromJson(json[r'TaskDefaults']),
      );
    }
    return null;
  }

  static List<SwarmSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SwarmSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwarmSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwarmSpec> mapFromJson(dynamic json) {
    final map = <String, SwarmSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwarmSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwarmSpec-objects as value to a dart map
  static Map<String, List<SwarmSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SwarmSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwarmSpec.listFromJson(
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
