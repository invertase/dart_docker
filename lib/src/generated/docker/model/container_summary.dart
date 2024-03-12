//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerSummary {
  /// Returns a new [ContainerSummary] instance.
  ContainerSummary({
    this.id,
    this.names = const [],
    this.image,
    this.imageID,
    this.command,
    this.created,
    this.ports = const [],
    this.sizeRw,
    this.sizeRootFs,
    this.labels = const {},
    this.state,
    this.status,
    this.hostConfig,
    this.networkSettings,
    this.mounts = const [],
  });

  /// The ID of this container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The names that this container has been given
  List<String> names;

  /// The name of the image used when creating this container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? image;

  /// The ID of the image that this container was created from
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imageID;

  /// Command to run when starting the container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? command;

  /// When the container was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? created;

  /// The ports exposed by this container
  List<Port> ports;

  /// The size of files that have been created or changed by this container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeRw;

  /// The total size of all the files in this container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeRootFs;

  /// User-defined key/value metadata.
  Map<String, String> labels;

  /// The state of this container (e.g. `Exited`)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Additional human-readable status of this container (e.g. `Exit 0`)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContainerSummaryHostConfig? hostConfig;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContainerSummaryNetworkSettings? networkSettings;

  List<MountPoint> mounts;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerSummary &&
          other.id == id &&
          _deepEquality.equals(other.names, names) &&
          other.image == image &&
          other.imageID == imageID &&
          other.command == command &&
          other.created == created &&
          _deepEquality.equals(other.ports, ports) &&
          other.sizeRw == sizeRw &&
          other.sizeRootFs == sizeRootFs &&
          _deepEquality.equals(other.labels, labels) &&
          other.state == state &&
          other.status == status &&
          other.hostConfig == hostConfig &&
          other.networkSettings == networkSettings &&
          _deepEquality.equals(other.mounts, mounts);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id == null ? 0 : id!.hashCode) +
      (names.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (imageID == null ? 0 : imageID!.hashCode) +
      (command == null ? 0 : command!.hashCode) +
      (created == null ? 0 : created!.hashCode) +
      (ports.hashCode) +
      (sizeRw == null ? 0 : sizeRw!.hashCode) +
      (sizeRootFs == null ? 0 : sizeRootFs!.hashCode) +
      (labels.hashCode) +
      (state == null ? 0 : state!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (hostConfig == null ? 0 : hostConfig!.hashCode) +
      (networkSettings == null ? 0 : networkSettings!.hashCode) +
      (mounts.hashCode);

  @override
  String toString() =>
      'ContainerSummary[id=$id, names=$names, image=$image, imageID=$imageID, command=$command, created=$created, ports=$ports, sizeRw=$sizeRw, sizeRootFs=$sizeRootFs, labels=$labels, state=$state, status=$status, hostConfig=$hostConfig, networkSettings=$networkSettings, mounts=$mounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'Id'] = this.id;
    } else {
      json[r'Id'] = null;
    }
    json[r'Names'] = this.names;
    if (this.image != null) {
      json[r'Image'] = this.image;
    } else {
      json[r'Image'] = null;
    }
    if (this.imageID != null) {
      json[r'ImageID'] = this.imageID;
    } else {
      json[r'ImageID'] = null;
    }
    if (this.command != null) {
      json[r'Command'] = this.command;
    } else {
      json[r'Command'] = null;
    }
    if (this.created != null) {
      json[r'Created'] = this.created;
    } else {
      json[r'Created'] = null;
    }
    json[r'Ports'] = this.ports;
    if (this.sizeRw != null) {
      json[r'SizeRw'] = this.sizeRw;
    } else {
      json[r'SizeRw'] = null;
    }
    if (this.sizeRootFs != null) {
      json[r'SizeRootFs'] = this.sizeRootFs;
    } else {
      json[r'SizeRootFs'] = null;
    }
    json[r'Labels'] = this.labels;
    if (this.state != null) {
      json[r'State'] = this.state;
    } else {
      json[r'State'] = null;
    }
    if (this.status != null) {
      json[r'Status'] = this.status;
    } else {
      json[r'Status'] = null;
    }
    if (this.hostConfig != null) {
      json[r'HostConfig'] = this.hostConfig;
    } else {
      json[r'HostConfig'] = null;
    }
    if (this.networkSettings != null) {
      json[r'NetworkSettings'] = this.networkSettings;
    } else {
      json[r'NetworkSettings'] = null;
    }
    json[r'Mounts'] = this.mounts;
    return json;
  }

  /// Returns a new [ContainerSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerSummary[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerSummary(
        id: mapValueOfType<String>(json, r'Id'),
        names: json[r'Names'] is Iterable
            ? (json[r'Names'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        image: mapValueOfType<String>(json, r'Image'),
        imageID: mapValueOfType<String>(json, r'ImageID'),
        command: mapValueOfType<String>(json, r'Command'),
        created: mapValueOfType<int>(json, r'Created'),
        ports: Port.listFromJson(json[r'Ports']),
        sizeRw: mapValueOfType<int>(json, r'SizeRw'),
        sizeRootFs: mapValueOfType<int>(json, r'SizeRootFs'),
        labels: mapCastOfType<String, String>(json, r'Labels') ?? const {},
        state: mapValueOfType<String>(json, r'State'),
        status: mapValueOfType<String>(json, r'Status'),
        hostConfig: ContainerSummaryHostConfig.fromJson(json[r'HostConfig']),
        networkSettings:
            ContainerSummaryNetworkSettings.fromJson(json[r'NetworkSettings']),
        mounts: MountPoint.listFromJson(json[r'Mounts']),
      );
    }
    return null;
  }

  static List<ContainerSummary> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerSummary> mapFromJson(dynamic json) {
    final map = <String, ContainerSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerSummary-objects as value to a dart map
  static Map<String, List<ContainerSummary>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerSummary.listFromJson(
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
