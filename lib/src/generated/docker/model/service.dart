//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class Service {
  /// Returns a new [Service] instance.
  Service({
    this.ID,
    this.version,
    this.createdAt,
    this.updatedAt,
    this.spec,
    this.endpoint,
    this.updateStatus,
    this.serviceStatus,
    this.jobStatus,
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

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
  ServiceSpec? spec;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceEndpoint? endpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceUpdateStatus? updateStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceServiceStatus? serviceStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServiceJobStatus? jobStatus;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Service &&
          other.ID == ID &&
          other.version == version &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.spec == spec &&
          other.endpoint == endpoint &&
          other.updateStatus == updateStatus &&
          other.serviceStatus == serviceStatus &&
          other.jobStatus == jobStatus;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID == null ? 0 : ID!.hashCode) +
      (version == null ? 0 : version!.hashCode) +
      (createdAt == null ? 0 : createdAt!.hashCode) +
      (updatedAt == null ? 0 : updatedAt!.hashCode) +
      (spec == null ? 0 : spec!.hashCode) +
      (endpoint == null ? 0 : endpoint!.hashCode) +
      (updateStatus == null ? 0 : updateStatus!.hashCode) +
      (serviceStatus == null ? 0 : serviceStatus!.hashCode) +
      (jobStatus == null ? 0 : jobStatus!.hashCode);

  @override
  String toString() =>
      'Service[ID=$ID, version=$version, createdAt=$createdAt, updatedAt=$updatedAt, spec=$spec, endpoint=$endpoint, updateStatus=$updateStatus, serviceStatus=$serviceStatus, jobStatus=$jobStatus]';

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
    if (this.endpoint != null) {
      json[r'Endpoint'] = this.endpoint;
    } else {
      json[r'Endpoint'] = null;
    }
    if (this.updateStatus != null) {
      json[r'UpdateStatus'] = this.updateStatus;
    } else {
      json[r'UpdateStatus'] = null;
    }
    if (this.serviceStatus != null) {
      json[r'ServiceStatus'] = this.serviceStatus;
    } else {
      json[r'ServiceStatus'] = null;
    }
    if (this.jobStatus != null) {
      json[r'JobStatus'] = this.jobStatus;
    } else {
      json[r'JobStatus'] = null;
    }
    return json;
  }

  /// Returns a new [Service] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Service? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Service[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Service[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Service(
        ID: mapValueOfType<String>(json, r'ID'),
        version: ObjectVersion.fromJson(json[r'Version']),
        createdAt: mapValueOfType<String>(json, r'CreatedAt'),
        updatedAt: mapValueOfType<String>(json, r'UpdatedAt'),
        spec: ServiceSpec.fromJson(json[r'Spec']),
        endpoint: ServiceEndpoint.fromJson(json[r'Endpoint']),
        updateStatus: ServiceUpdateStatus.fromJson(json[r'UpdateStatus']),
        serviceStatus: ServiceServiceStatus.fromJson(json[r'ServiceStatus']),
        jobStatus: ServiceJobStatus.fromJson(json[r'JobStatus']),
      );
    }
    return null;
  }

  static List<Service> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Service>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Service.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Service> mapFromJson(dynamic json) {
    final map = <String, Service>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Service.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Service-objects as value to a dart map
  static Map<String, List<Service>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Service>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Service.listFromJson(
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
