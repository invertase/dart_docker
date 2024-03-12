//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ServiceCreateRequest {
  /// Returns a new [ServiceCreateRequest] instance.
  ServiceCreateRequest({
    this.name,
    this.labels = const {},
    this.taskTemplate,
    this.mode,
    this.updateConfig,
    this.rollbackConfig,
    this.networks = const [],
    this.endpointSpec,
  });

  /// Name of the service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TaskSpec? taskTemplate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceSpecMode? mode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceSpecUpdateConfig? updateConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceSpecRollbackConfig? rollbackConfig;

  /// Specifies which networks the service should attach to.  Deprecated: This field is deprecated since v1.44. The Networks field in TaskSpec should be used instead.
  List<NetworkAttachmentConfig> networks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EndpointSpec? endpointSpec;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceCreateRequest &&
          other.name == name &&
          _deepEquality.equals(other.labels, labels) &&
          other.taskTemplate == taskTemplate &&
          other.mode == mode &&
          other.updateConfig == updateConfig &&
          other.rollbackConfig == rollbackConfig &&
          _deepEquality.equals(other.networks, networks) &&
          other.endpointSpec == endpointSpec;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) +
      (labels.hashCode) +
      (taskTemplate == null ? 0 : taskTemplate!.hashCode) +
      (mode == null ? 0 : mode!.hashCode) +
      (updateConfig == null ? 0 : updateConfig!.hashCode) +
      (rollbackConfig == null ? 0 : rollbackConfig!.hashCode) +
      (networks.hashCode) +
      (endpointSpec == null ? 0 : endpointSpec!.hashCode);

  @override
  String toString() =>
      'ServiceCreateRequest[name=$name, labels=$labels, taskTemplate=$taskTemplate, mode=$mode, updateConfig=$updateConfig, rollbackConfig=$rollbackConfig, networks=$networks, endpointSpec=$endpointSpec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Labels'] = this.labels;
    if (this.taskTemplate != null) {
      json[r'TaskTemplate'] = this.taskTemplate;
    } else {
      json[r'TaskTemplate'] = null;
    }
    if (this.mode != null) {
      json[r'Mode'] = this.mode;
    } else {
      json[r'Mode'] = null;
    }
    if (this.updateConfig != null) {
      json[r'UpdateConfig'] = this.updateConfig;
    } else {
      json[r'UpdateConfig'] = null;
    }
    if (this.rollbackConfig != null) {
      json[r'RollbackConfig'] = this.rollbackConfig;
    } else {
      json[r'RollbackConfig'] = null;
    }
    json[r'Networks'] = this.networks;
    if (this.endpointSpec != null) {
      json[r'EndpointSpec'] = this.endpointSpec;
    } else {
      json[r'EndpointSpec'] = null;
    }
    return json;
  }

  /// Returns a new [ServiceCreateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceCreateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ServiceCreateRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ServiceCreateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceCreateRequest(
        name: mapValueOfType<String>(json, r'Name'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        taskTemplate: TaskSpec.fromJson(json[r'TaskTemplate']),
        mode: ServiceSpecMode.fromJson(json[r'Mode']),
        updateConfig: ServiceSpecUpdateConfig.fromJson(json[r'UpdateConfig']),
        rollbackConfig:
            ServiceSpecRollbackConfig.fromJson(json[r'RollbackConfig']),
        networks: NetworkAttachmentConfig.listFromJson(json[r'Networks']),
        endpointSpec: EndpointSpec.fromJson(json[r'EndpointSpec']),
      );
    }
    return null;
  }

  static List<ServiceCreateRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ServiceCreateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceCreateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceCreateRequest> mapFromJson(dynamic json) {
    final map = <String, ServiceCreateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceCreateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceCreateRequest-objects as value to a dart map
  static Map<String, List<ServiceCreateRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ServiceCreateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceCreateRequest.listFromJson(
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
