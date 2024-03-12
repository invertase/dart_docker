//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class TaskSpec {
  /// Returns a new [TaskSpec] instance.
  TaskSpec({
    this.pluginSpec,
    this.containerSpec,
    this.networkAttachmentSpec,
    this.resources,
    this.restartPolicy,
    this.placement,
    this.forceUpdate,
    this.runtime,
    this.networks = const [],
    this.logDriver,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecPluginSpec? pluginSpec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecContainerSpec? containerSpec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecNetworkAttachmentSpec? networkAttachmentSpec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecResources? resources;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecRestartPolicy? restartPolicy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecPlacement? placement;

  /// A counter that triggers an update even if no relevant parameters have been changed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? forceUpdate;

  /// Runtime is the type of runtime specified for the task executor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// Specifies which networks the service should attach to.
  List<NetworkAttachmentConfig> networks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpecLogDriver? logDriver;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskSpec &&
          other.pluginSpec == pluginSpec &&
          other.containerSpec == containerSpec &&
          other.networkAttachmentSpec == networkAttachmentSpec &&
          other.resources == resources &&
          other.restartPolicy == restartPolicy &&
          other.placement == placement &&
          other.forceUpdate == forceUpdate &&
          other.runtime == runtime &&
          _deepEquality.equals(other.networks, networks) &&
          other.logDriver == logDriver;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (pluginSpec == null ? 0 : pluginSpec!.hashCode) +
      (containerSpec == null ? 0 : containerSpec!.hashCode) +
      (networkAttachmentSpec == null ? 0 : networkAttachmentSpec!.hashCode) +
      (resources == null ? 0 : resources!.hashCode) +
      (restartPolicy == null ? 0 : restartPolicy!.hashCode) +
      (placement == null ? 0 : placement!.hashCode) +
      (forceUpdate == null ? 0 : forceUpdate!.hashCode) +
      (runtime == null ? 0 : runtime!.hashCode) +
      (networks.hashCode) +
      (logDriver == null ? 0 : logDriver!.hashCode);

  @override
  String toString() =>
      'TaskSpec[pluginSpec=$pluginSpec, containerSpec=$containerSpec, networkAttachmentSpec=$networkAttachmentSpec, resources=$resources, restartPolicy=$restartPolicy, placement=$placement, forceUpdate=$forceUpdate, runtime=$runtime, networks=$networks, logDriver=$logDriver]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pluginSpec != null) {
      json[r'PluginSpec'] = this.pluginSpec;
    } else {
      json[r'PluginSpec'] = null;
    }
    if (this.containerSpec != null) {
      json[r'ContainerSpec'] = this.containerSpec;
    } else {
      json[r'ContainerSpec'] = null;
    }
    if (this.networkAttachmentSpec != null) {
      json[r'NetworkAttachmentSpec'] = this.networkAttachmentSpec;
    } else {
      json[r'NetworkAttachmentSpec'] = null;
    }
    if (this.resources != null) {
      json[r'Resources'] = this.resources;
    } else {
      json[r'Resources'] = null;
    }
    if (this.restartPolicy != null) {
      json[r'RestartPolicy'] = this.restartPolicy;
    } else {
      json[r'RestartPolicy'] = null;
    }
    if (this.placement != null) {
      json[r'Placement'] = this.placement;
    } else {
      json[r'Placement'] = null;
    }
    if (this.forceUpdate != null) {
      json[r'ForceUpdate'] = this.forceUpdate;
    } else {
      json[r'ForceUpdate'] = null;
    }
    if (this.runtime != null) {
      json[r'Runtime'] = this.runtime;
    } else {
      json[r'Runtime'] = null;
    }
    json[r'Networks'] = this.networks;
    if (this.logDriver != null) {
      json[r'LogDriver'] = this.logDriver;
    } else {
      json[r'LogDriver'] = null;
    }
    return json;
  }

  /// Returns a new [TaskSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TaskSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TaskSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TaskSpec(
        pluginSpec: TaskSpecPluginSpec.fromJson(json[r'PluginSpec']),
        containerSpec: TaskSpecContainerSpec.fromJson(json[r'ContainerSpec']),
        networkAttachmentSpec: TaskSpecNetworkAttachmentSpec.fromJson(
            json[r'NetworkAttachmentSpec']),
        resources: TaskSpecResources.fromJson(json[r'Resources']),
        restartPolicy: TaskSpecRestartPolicy.fromJson(json[r'RestartPolicy']),
        placement: TaskSpecPlacement.fromJson(json[r'Placement']),
        forceUpdate: mapValueOfType<int>(json, r'ForceUpdate'),
        runtime: mapValueOfType<String>(json, r'Runtime'),
        networks: NetworkAttachmentConfig.listFromJson(json[r'Networks']),
        logDriver: TaskSpecLogDriver.fromJson(json[r'LogDriver']),
      );
    }
    return null;
  }

  static List<TaskSpec> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TaskSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskSpec> mapFromJson(dynamic json) {
    final map = <String, TaskSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskSpec-objects as value to a dart map
  static Map<String, List<TaskSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TaskSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskSpec.listFromJson(
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
