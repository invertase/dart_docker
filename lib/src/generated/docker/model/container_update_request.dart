//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ContainerUpdateRequest {
  /// Returns a new [ContainerUpdateRequest] instance.
  ContainerUpdateRequest({
    this.cpuShares,
    this.memory = 0,
    this.cgroupParent,
    this.blkioWeight,
    this.blkioWeightDevice = const [],
    this.blkioDeviceReadBps = const [],
    this.blkioDeviceWriteBps = const [],
    this.blkioDeviceReadIOps = const [],
    this.blkioDeviceWriteIOps = const [],
    this.cpuPeriod,
    this.cpuQuota,
    this.cpuRealtimePeriod,
    this.cpuRealtimeRuntime,
    this.cpusetCpus,
    this.cpusetMems,
    this.devices = const [],
    this.deviceCgroupRules = const [],
    this.deviceRequests = const [],
    this.kernelMemoryTCP,
    this.memoryReservation,
    this.memorySwap,
    this.memorySwappiness,
    this.nanoCpus,
    this.oomKillDisable,
    this.init,
    this.pidsLimit,
    this.ulimits = const [],
    this.cpuCount,
    this.cpuPercent,
    this.iOMaximumIOps,
    this.iOMaximumBandwidth,
    this.restartPolicy,
  });

  /// An integer value representing this container's relative CPU weight versus other containers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpuShares;

  /// Memory limit in bytes.
  int memory;

  /// Path to `cgroups` under which the container's `cgroup` is created. If the path is not absolute, the path is considered to be relative to the `cgroups` path of the init process. Cgroups are created if they do not already exist.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cgroupParent;

  /// Block IO weight (relative weight).
  ///
  /// Minimum value: 0
  /// Maximum value: 1000
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? blkioWeight;

  /// Block IO weight (relative device weight) in the form:  ``` [{\"Path\": \"device_path\", \"Weight\": weight}] ```
  List<ResourcesBlkioWeightDeviceInner> blkioWeightDevice;

  /// Limit read rate (bytes per second) from a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ```
  List<ThrottleDevice> blkioDeviceReadBps;

  /// Limit write rate (bytes per second) to a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ```
  List<ThrottleDevice> blkioDeviceWriteBps;

  /// Limit read rate (IO per second) from a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ```
  List<ThrottleDevice> blkioDeviceReadIOps;

  /// Limit write rate (IO per second) to a device, in the form:  ``` [{\"Path\": \"device_path\", \"Rate\": rate}] ```
  List<ThrottleDevice> blkioDeviceWriteIOps;

  /// The length of a CPU period in microseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpuPeriod;

  /// Microseconds of CPU time that the container can get in a CPU period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpuQuota;

  /// The length of a CPU real-time period in microseconds. Set to 0 to allocate no time allocated to real-time tasks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpuRealtimePeriod;

  /// The length of a CPU real-time runtime in microseconds. Set to 0 to allocate no time allocated to real-time tasks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpuRealtimeRuntime;

  /// CPUs in which to allow execution (e.g., `0-3`, `0,1`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cpusetCpus;

  /// Memory nodes (MEMs) in which to allow execution (0-3, 0,1). Only effective on NUMA systems.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cpusetMems;

  /// A list of devices to add to the container.
  List<DeviceMapping> devices;

  /// a list of cgroup rules to apply to the container
  List<String> deviceCgroupRules;

  /// A list of requests for devices to be sent to device drivers.
  List<DeviceRequest> deviceRequests;

  /// Hard limit for kernel TCP buffer memory (in bytes). Depending on the OCI runtime in use, this option may be ignored. It is no longer supported by the default (runc) runtime.  This field is omitted when empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? kernelMemoryTCP;

  /// Memory soft limit in bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memoryReservation;

  /// Total memory limit (memory + swap). Set as `-1` to enable unlimited swap.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memorySwap;

  /// Tune a container's memory swappiness behavior. Accepts an integer between 0 and 100.
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memorySwappiness;

  /// CPU quota in units of 10<sup>-9</sup> CPUs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nanoCpus;

  /// Disable OOM Killer for the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? oomKillDisable;

  /// Run an init inside the container that forwards signals and reaps processes. This field is omitted if empty, and the default (as configured on the daemon) is used.
  bool? init;

  /// Tune a container's PIDs limit. Set `0` or `-1` for unlimited, or `null` to not change.
  int? pidsLimit;

  /// A list of resource limits to set in the container. For example:  ``` {\"Name\": \"nofile\", \"Soft\": 1024, \"Hard\": 2048} ```
  List<ResourcesUlimitsInner> ulimits;

  /// The number of usable CPUs (Windows only).  On Windows Server containers, the processor resource controls are mutually exclusive. The order of precedence is `CPUCount` first, then `CPUShares`, and `CPUPercent` last.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpuCount;

  /// The usable percentage of the available CPUs (Windows only).  On Windows Server containers, the processor resource controls are mutually exclusive. The order of precedence is `CPUCount` first, then `CPUShares`, and `CPUPercent` last.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpuPercent;

  /// Maximum IOps for the container system drive (Windows only)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? iOMaximumIOps;

  /// Maximum IO in bytes per second for the container system drive (Windows only).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? iOMaximumBandwidth;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RestartPolicy? restartPolicy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainerUpdateRequest &&
          other.cpuShares == cpuShares &&
          other.memory == memory &&
          other.cgroupParent == cgroupParent &&
          other.blkioWeight == blkioWeight &&
          _deepEquality.equals(other.blkioWeightDevice, blkioWeightDevice) &&
          _deepEquality.equals(other.blkioDeviceReadBps, blkioDeviceReadBps) &&
          _deepEquality.equals(
              other.blkioDeviceWriteBps, blkioDeviceWriteBps) &&
          _deepEquality.equals(
              other.blkioDeviceReadIOps, blkioDeviceReadIOps) &&
          _deepEquality.equals(
              other.blkioDeviceWriteIOps, blkioDeviceWriteIOps) &&
          other.cpuPeriod == cpuPeriod &&
          other.cpuQuota == cpuQuota &&
          other.cpuRealtimePeriod == cpuRealtimePeriod &&
          other.cpuRealtimeRuntime == cpuRealtimeRuntime &&
          other.cpusetCpus == cpusetCpus &&
          other.cpusetMems == cpusetMems &&
          _deepEquality.equals(other.devices, devices) &&
          _deepEquality.equals(other.deviceCgroupRules, deviceCgroupRules) &&
          _deepEquality.equals(other.deviceRequests, deviceRequests) &&
          other.kernelMemoryTCP == kernelMemoryTCP &&
          other.memoryReservation == memoryReservation &&
          other.memorySwap == memorySwap &&
          other.memorySwappiness == memorySwappiness &&
          other.nanoCpus == nanoCpus &&
          other.oomKillDisable == oomKillDisable &&
          other.init == init &&
          other.pidsLimit == pidsLimit &&
          _deepEquality.equals(other.ulimits, ulimits) &&
          other.cpuCount == cpuCount &&
          other.cpuPercent == cpuPercent &&
          other.iOMaximumIOps == iOMaximumIOps &&
          other.iOMaximumBandwidth == iOMaximumBandwidth &&
          other.restartPolicy == restartPolicy;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (cpuShares == null ? 0 : cpuShares!.hashCode) +
      (memory.hashCode) +
      (cgroupParent == null ? 0 : cgroupParent!.hashCode) +
      (blkioWeight == null ? 0 : blkioWeight!.hashCode) +
      (blkioWeightDevice.hashCode) +
      (blkioDeviceReadBps.hashCode) +
      (blkioDeviceWriteBps.hashCode) +
      (blkioDeviceReadIOps.hashCode) +
      (blkioDeviceWriteIOps.hashCode) +
      (cpuPeriod == null ? 0 : cpuPeriod!.hashCode) +
      (cpuQuota == null ? 0 : cpuQuota!.hashCode) +
      (cpuRealtimePeriod == null ? 0 : cpuRealtimePeriod!.hashCode) +
      (cpuRealtimeRuntime == null ? 0 : cpuRealtimeRuntime!.hashCode) +
      (cpusetCpus == null ? 0 : cpusetCpus!.hashCode) +
      (cpusetMems == null ? 0 : cpusetMems!.hashCode) +
      (devices.hashCode) +
      (deviceCgroupRules.hashCode) +
      (deviceRequests.hashCode) +
      (kernelMemoryTCP == null ? 0 : kernelMemoryTCP!.hashCode) +
      (memoryReservation == null ? 0 : memoryReservation!.hashCode) +
      (memorySwap == null ? 0 : memorySwap!.hashCode) +
      (memorySwappiness == null ? 0 : memorySwappiness!.hashCode) +
      (nanoCpus == null ? 0 : nanoCpus!.hashCode) +
      (oomKillDisable == null ? 0 : oomKillDisable!.hashCode) +
      (init == null ? 0 : init!.hashCode) +
      (pidsLimit == null ? 0 : pidsLimit!.hashCode) +
      (ulimits.hashCode) +
      (cpuCount == null ? 0 : cpuCount!.hashCode) +
      (cpuPercent == null ? 0 : cpuPercent!.hashCode) +
      (iOMaximumIOps == null ? 0 : iOMaximumIOps!.hashCode) +
      (iOMaximumBandwidth == null ? 0 : iOMaximumBandwidth!.hashCode) +
      (restartPolicy == null ? 0 : restartPolicy!.hashCode);

  @override
  String toString() =>
      'ContainerUpdateRequest[cpuShares=$cpuShares, memory=$memory, cgroupParent=$cgroupParent, blkioWeight=$blkioWeight, blkioWeightDevice=$blkioWeightDevice, blkioDeviceReadBps=$blkioDeviceReadBps, blkioDeviceWriteBps=$blkioDeviceWriteBps, blkioDeviceReadIOps=$blkioDeviceReadIOps, blkioDeviceWriteIOps=$blkioDeviceWriteIOps, cpuPeriod=$cpuPeriod, cpuQuota=$cpuQuota, cpuRealtimePeriod=$cpuRealtimePeriod, cpuRealtimeRuntime=$cpuRealtimeRuntime, cpusetCpus=$cpusetCpus, cpusetMems=$cpusetMems, devices=$devices, deviceCgroupRules=$deviceCgroupRules, deviceRequests=$deviceRequests, kernelMemoryTCP=$kernelMemoryTCP, memoryReservation=$memoryReservation, memorySwap=$memorySwap, memorySwappiness=$memorySwappiness, nanoCpus=$nanoCpus, oomKillDisable=$oomKillDisable, init=$init, pidsLimit=$pidsLimit, ulimits=$ulimits, cpuCount=$cpuCount, cpuPercent=$cpuPercent, iOMaximumIOps=$iOMaximumIOps, iOMaximumBandwidth=$iOMaximumBandwidth, restartPolicy=$restartPolicy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cpuShares != null) {
      json[r'CpuShares'] = this.cpuShares;
    } else {
      json[r'CpuShares'] = null;
    }
    json[r'Memory'] = this.memory;
    if (this.cgroupParent != null) {
      json[r'CgroupParent'] = this.cgroupParent;
    } else {
      json[r'CgroupParent'] = null;
    }
    if (this.blkioWeight != null) {
      json[r'BlkioWeight'] = this.blkioWeight;
    } else {
      json[r'BlkioWeight'] = null;
    }
    json[r'BlkioWeightDevice'] = this.blkioWeightDevice;
    json[r'BlkioDeviceReadBps'] = this.blkioDeviceReadBps;
    json[r'BlkioDeviceWriteBps'] = this.blkioDeviceWriteBps;
    json[r'BlkioDeviceReadIOps'] = this.blkioDeviceReadIOps;
    json[r'BlkioDeviceWriteIOps'] = this.blkioDeviceWriteIOps;
    if (this.cpuPeriod != null) {
      json[r'CpuPeriod'] = this.cpuPeriod;
    } else {
      json[r'CpuPeriod'] = null;
    }
    if (this.cpuQuota != null) {
      json[r'CpuQuota'] = this.cpuQuota;
    } else {
      json[r'CpuQuota'] = null;
    }
    if (this.cpuRealtimePeriod != null) {
      json[r'CpuRealtimePeriod'] = this.cpuRealtimePeriod;
    } else {
      json[r'CpuRealtimePeriod'] = null;
    }
    if (this.cpuRealtimeRuntime != null) {
      json[r'CpuRealtimeRuntime'] = this.cpuRealtimeRuntime;
    } else {
      json[r'CpuRealtimeRuntime'] = null;
    }
    if (this.cpusetCpus != null) {
      json[r'CpusetCpus'] = this.cpusetCpus;
    } else {
      json[r'CpusetCpus'] = null;
    }
    if (this.cpusetMems != null) {
      json[r'CpusetMems'] = this.cpusetMems;
    } else {
      json[r'CpusetMems'] = null;
    }
    json[r'Devices'] = this.devices;
    json[r'DeviceCgroupRules'] = this.deviceCgroupRules;
    json[r'DeviceRequests'] = this.deviceRequests;
    if (this.kernelMemoryTCP != null) {
      json[r'KernelMemoryTCP'] = this.kernelMemoryTCP;
    } else {
      json[r'KernelMemoryTCP'] = null;
    }
    if (this.memoryReservation != null) {
      json[r'MemoryReservation'] = this.memoryReservation;
    } else {
      json[r'MemoryReservation'] = null;
    }
    if (this.memorySwap != null) {
      json[r'MemorySwap'] = this.memorySwap;
    } else {
      json[r'MemorySwap'] = null;
    }
    if (this.memorySwappiness != null) {
      json[r'MemorySwappiness'] = this.memorySwappiness;
    } else {
      json[r'MemorySwappiness'] = null;
    }
    if (this.nanoCpus != null) {
      json[r'NanoCpus'] = this.nanoCpus;
    } else {
      json[r'NanoCpus'] = null;
    }
    if (this.oomKillDisable != null) {
      json[r'OomKillDisable'] = this.oomKillDisable;
    } else {
      json[r'OomKillDisable'] = null;
    }
    if (this.init != null) {
      json[r'Init'] = this.init;
    } else {
      json[r'Init'] = null;
    }
    if (this.pidsLimit != null) {
      json[r'PidsLimit'] = this.pidsLimit;
    } else {
      json[r'PidsLimit'] = null;
    }
    json[r'Ulimits'] = this.ulimits;
    if (this.cpuCount != null) {
      json[r'CpuCount'] = this.cpuCount;
    } else {
      json[r'CpuCount'] = null;
    }
    if (this.cpuPercent != null) {
      json[r'CpuPercent'] = this.cpuPercent;
    } else {
      json[r'CpuPercent'] = null;
    }
    if (this.iOMaximumIOps != null) {
      json[r'IOMaximumIOps'] = this.iOMaximumIOps;
    } else {
      json[r'IOMaximumIOps'] = null;
    }
    if (this.iOMaximumBandwidth != null) {
      json[r'IOMaximumBandwidth'] = this.iOMaximumBandwidth;
    } else {
      json[r'IOMaximumBandwidth'] = null;
    }
    if (this.restartPolicy != null) {
      json[r'RestartPolicy'] = this.restartPolicy;
    } else {
      json[r'RestartPolicy'] = null;
    }
    return json;
  }

  /// Returns a new [ContainerUpdateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContainerUpdateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ContainerUpdateRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ContainerUpdateRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContainerUpdateRequest(
        cpuShares: mapValueOfType<int>(json, r'CpuShares'),
        memory: mapValueOfType<int>(json, r'Memory') ?? 0,
        cgroupParent: mapValueOfType<String>(json, r'CgroupParent'),
        blkioWeight: mapValueOfType<int>(json, r'BlkioWeight'),
        blkioWeightDevice: ResourcesBlkioWeightDeviceInner.listFromJson(
            json[r'BlkioWeightDevice']),
        blkioDeviceReadBps:
            ThrottleDevice.listFromJson(json[r'BlkioDeviceReadBps']),
        blkioDeviceWriteBps:
            ThrottleDevice.listFromJson(json[r'BlkioDeviceWriteBps']),
        blkioDeviceReadIOps:
            ThrottleDevice.listFromJson(json[r'BlkioDeviceReadIOps']),
        blkioDeviceWriteIOps:
            ThrottleDevice.listFromJson(json[r'BlkioDeviceWriteIOps']),
        cpuPeriod: mapValueOfType<int>(json, r'CpuPeriod'),
        cpuQuota: mapValueOfType<int>(json, r'CpuQuota'),
        cpuRealtimePeriod: mapValueOfType<int>(json, r'CpuRealtimePeriod'),
        cpuRealtimeRuntime: mapValueOfType<int>(json, r'CpuRealtimeRuntime'),
        cpusetCpus: mapValueOfType<String>(json, r'CpusetCpus'),
        cpusetMems: mapValueOfType<String>(json, r'CpusetMems'),
        devices: DeviceMapping.listFromJson(json[r'Devices']),
        deviceCgroupRules: json[r'DeviceCgroupRules'] is Iterable
            ? (json[r'DeviceCgroupRules'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        deviceRequests: DeviceRequest.listFromJson(json[r'DeviceRequests']),
        kernelMemoryTCP: mapValueOfType<int>(json, r'KernelMemoryTCP'),
        memoryReservation: mapValueOfType<int>(json, r'MemoryReservation'),
        memorySwap: mapValueOfType<int>(json, r'MemorySwap'),
        memorySwappiness: mapValueOfType<int>(json, r'MemorySwappiness'),
        nanoCpus: mapValueOfType<int>(json, r'NanoCpus'),
        oomKillDisable: mapValueOfType<bool>(json, r'OomKillDisable'),
        init: mapValueOfType<bool>(json, r'Init'),
        pidsLimit: mapValueOfType<int>(json, r'PidsLimit'),
        ulimits: ResourcesUlimitsInner.listFromJson(json[r'Ulimits']),
        cpuCount: mapValueOfType<int>(json, r'CpuCount'),
        cpuPercent: mapValueOfType<int>(json, r'CpuPercent'),
        iOMaximumIOps: mapValueOfType<int>(json, r'IOMaximumIOps'),
        iOMaximumBandwidth: mapValueOfType<int>(json, r'IOMaximumBandwidth'),
        restartPolicy: RestartPolicy.fromJson(json[r'RestartPolicy']),
      );
    }
    return null;
  }

  static List<ContainerUpdateRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ContainerUpdateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContainerUpdateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContainerUpdateRequest> mapFromJson(dynamic json) {
    final map = <String, ContainerUpdateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContainerUpdateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContainerUpdateRequest-objects as value to a dart map
  static Map<String, List<ContainerUpdateRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ContainerUpdateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContainerUpdateRequest.listFromJson(
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
