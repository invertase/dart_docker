//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class HostConfig {
  /// Returns a new [HostConfig] instance.
  HostConfig({
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
    this.binds = const [],
    this.containerIDFile,
    this.logConfig,
    this.networkMode,
    this.portBindings = const {},
    this.restartPolicy,
    this.autoRemove,
    this.volumeDriver,
    this.volumesFrom = const [],
    this.mounts = const [],
    this.consoleSize = const [],
    this.annotations = const {},
    this.capAdd = const [],
    this.capDrop = const [],
    this.cgroupnsMode,
    this.dns = const [],
    this.dnsOptions = const [],
    this.dnsSearch = const [],
    this.extraHosts = const [],
    this.groupAdd = const [],
    this.ipcMode,
    this.cgroup,
    this.links = const [],
    this.oomScoreAdj,
    this.pidMode,
    this.privileged,
    this.publishAllPorts,
    this.readonlyRootfs,
    this.securityOpt = const [],
    this.storageOpt = const {},
    this.tmpfs = const {},
    this.uTSMode,
    this.usernsMode,
    this.shmSize,
    this.sysctls = const {},
    this.runtime,
    this.isolation,
    this.maskedPaths = const [],
    this.readonlyPaths = const [],
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

  /// A list of volume bindings for this container. Each volume binding is a string in one of these forms:  - `host-src:container-dest[:options]` to bind-mount a host path   into the container. Both `host-src`, and `container-dest` must   be an _absolute_ path. - `volume-name:container-dest[:options]` to bind-mount a volume   managed by a volume driver into the container. `container-dest`   must be an _absolute_ path.  `options` is an optional, comma-delimited list of:  - `nocopy` disables automatic copying of data from the container   path to the volume. The `nocopy` flag only applies to named volumes. - `[ro|rw]` mounts a volume read-only or read-write, respectively.   If omitted or set to `rw`, volumes are mounted read-write. - `[z|Z]` applies SELinux labels to allow or deny multiple containers   to read and write to the same volume.     - `z`: a _shared_ content label is applied to the content. This       label indicates that multiple containers can share the volume       content, for both reading and writing.     - `Z`: a _private unshared_ label is applied to the content.       This label indicates that only the current container can use       a private volume. Labeling systems such as SELinux require       proper labels to be placed on volume content that is mounted       into a container. Without a label, the security system can       prevent a container's processes from using the content. By       default, the labels set by the host operating system are not       modified. - `[[r]shared|[r]slave|[r]private]` specifies mount   [propagation behavior](https://www.kernel.org/doc/Documentation/filesystems/sharedsubtree.txt).   This only applies to bind-mounted volumes, not internal volumes   or named volumes. Mount propagation requires the source mount   point (the location where the source directory is mounted in the   host operating system) to have the correct propagation properties.   For shared volumes, the source mount point must be set to `shared`.   For slave volumes, the mount must be set to either `shared` or   `slave`.
  List<String> binds;

  /// Path to a file where the container ID is written
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? containerIDFile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HostConfigAllOfLogConfig? logConfig;

  /// Network mode to use for this container. Supported standard values are: `bridge`, `host`, `none`, and `container:<name|id>`. Any other value is taken as a custom network's name to which this container should connect to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? networkMode;

  /// PortMap describes the mapping of container ports to host ports, using the container's port-number and protocol as key in the format `<port>/<protocol>`, for example, `80/udp`.  If a container's port is mapped for multiple protocols, separate entries are added to the mapping table.
  Map<String, List<PortBinding>> portBindings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RestartPolicy? restartPolicy;

  /// Automatically remove the container when the container's process exits. This has no effect if `RestartPolicy` is set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? autoRemove;

  /// Driver that this container uses to mount volumes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volumeDriver;

  /// A list of volumes to inherit from another container, specified in the form `<container name>[:<ro|rw>]`.
  List<String> volumesFrom;

  /// Specification for mounts to be added to the container.
  List<Mount> mounts;

  /// Initial console size, as an `[height, width]` array.
  List<int>? consoleSize;

  /// Arbitrary non-identifying metadata attached to container and provided to the runtime when the container is started.
  Map<String, String> annotations;

  /// A list of kernel capabilities to add to the container. Conflicts with option 'Capabilities'.
  List<String> capAdd;

  /// A list of kernel capabilities to drop from the container. Conflicts with option 'Capabilities'.
  List<String> capDrop;

  /// cgroup namespace mode for the container. Possible values are:  - `\"private\"`: the container runs in its own private cgroup namespace - `\"host\"`: use the host system's cgroup namespace  If not specified, the daemon default is used, which can either be `\"private\"` or `\"host\"`, depending on daemon version, kernel support and configuration.
  HostConfigCgroupnsModeEnum? cgroupnsMode;

  /// A list of DNS servers for the container to use.
  List<String> dns;

  /// A list of DNS options.
  List<String> dnsOptions;

  /// A list of DNS search domains.
  List<String> dnsSearch;

  /// A list of hostnames/IP mappings to add to the container's `/etc/hosts` file. Specified in the form `[\"hostname:IP\"]`.
  List<String> extraHosts;

  /// A list of additional groups that the container process will run as.
  List<String> groupAdd;

  /// IPC sharing mode for the container. Possible values are:  - `\"none\"`: own private IPC namespace, with /dev/shm not mounted - `\"private\"`: own private IPC namespace - `\"shareable\"`: own private IPC namespace, with a possibility to share it with other containers - `\"container:<name|id>\"`: join another (shareable) container's IPC namespace - `\"host\"`: use the host system's IPC namespace  If not specified, daemon default is used, which can either be `\"private\"` or `\"shareable\"`, depending on daemon version and configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipcMode;

  /// Cgroup to use for the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cgroup;

  /// A list of links for the container in the form `container_name:alias`.
  List<String> links;

  /// An integer value containing the score given to the container in order to tune OOM killer preferences.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? oomScoreAdj;

  /// Set the PID (Process) Namespace mode for the container. It can be either:  - `\"container:<name|id>\"`: joins another container's PID namespace - `\"host\"`: use the host's PID namespace inside the container
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pidMode;

  /// Gives the container full access to the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? privileged;

  /// Allocates an ephemeral host port for all of a container's exposed ports.  Ports are de-allocated when the container stops and allocated when the container starts. The allocated port might be changed when restarting the container.  The port is selected from the ephemeral port range that depends on the kernel. For example, on Linux the range is defined by `/proc/sys/net/ipv4/ip_local_port_range`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? publishAllPorts;

  /// Mount the container's root filesystem as read only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readonlyRootfs;

  /// A list of string values to customize labels for MLS systems, such as SELinux.
  List<String> securityOpt;

  /// Storage driver options for this container, in the form `{\"size\": \"120G\"}`.
  Map<String, String> storageOpt;

  /// A map of container directories which should be replaced by tmpfs mounts, and their corresponding mount options. For example:  ``` { \"/run\": \"rw,noexec,nosuid,size=65536k\" } ```
  Map<String, String> tmpfs;

  /// UTS namespace to use for the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uTSMode;

  /// Sets the usernamespace mode for the container when usernamespace remapping option is enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? usernsMode;

  /// Size of `/dev/shm` in bytes. If omitted, the system uses 64MB.
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? shmSize;

  /// A list of kernel parameters (sysctls) to set in the container. For example:  ``` {\"net.ipv4.ip_forward\": \"1\"} ```
  Map<String, String> sysctls;

  /// Runtime to use with this container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? runtime;

  /// Isolation technology of the container. (Windows only)
  HostConfigIsolationEnum? isolation;

  /// The list of paths to be masked inside the container (this overrides the default set of paths).
  List<String> maskedPaths;

  /// The list of paths to be set as read-only inside the container (this overrides the default set of paths).
  List<String> readonlyPaths;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HostConfig &&
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
          _deepEquality.equals(other.binds, binds) &&
          other.containerIDFile == containerIDFile &&
          other.logConfig == logConfig &&
          other.networkMode == networkMode &&
          _deepEquality.equals(other.portBindings, portBindings) &&
          other.restartPolicy == restartPolicy &&
          other.autoRemove == autoRemove &&
          other.volumeDriver == volumeDriver &&
          _deepEquality.equals(other.volumesFrom, volumesFrom) &&
          _deepEquality.equals(other.mounts, mounts) &&
          _deepEquality.equals(other.consoleSize, consoleSize) &&
          _deepEquality.equals(other.annotations, annotations) &&
          _deepEquality.equals(other.capAdd, capAdd) &&
          _deepEquality.equals(other.capDrop, capDrop) &&
          other.cgroupnsMode == cgroupnsMode &&
          _deepEquality.equals(other.dns, dns) &&
          _deepEquality.equals(other.dnsOptions, dnsOptions) &&
          _deepEquality.equals(other.dnsSearch, dnsSearch) &&
          _deepEquality.equals(other.extraHosts, extraHosts) &&
          _deepEquality.equals(other.groupAdd, groupAdd) &&
          other.ipcMode == ipcMode &&
          other.cgroup == cgroup &&
          _deepEquality.equals(other.links, links) &&
          other.oomScoreAdj == oomScoreAdj &&
          other.pidMode == pidMode &&
          other.privileged == privileged &&
          other.publishAllPorts == publishAllPorts &&
          other.readonlyRootfs == readonlyRootfs &&
          _deepEquality.equals(other.securityOpt, securityOpt) &&
          _deepEquality.equals(other.storageOpt, storageOpt) &&
          _deepEquality.equals(other.tmpfs, tmpfs) &&
          other.uTSMode == uTSMode &&
          other.usernsMode == usernsMode &&
          other.shmSize == shmSize &&
          _deepEquality.equals(other.sysctls, sysctls) &&
          other.runtime == runtime &&
          other.isolation == isolation &&
          _deepEquality.equals(other.maskedPaths, maskedPaths) &&
          _deepEquality.equals(other.readonlyPaths, readonlyPaths);

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
      (binds.hashCode) +
      (containerIDFile == null ? 0 : containerIDFile!.hashCode) +
      (logConfig == null ? 0 : logConfig!.hashCode) +
      (networkMode == null ? 0 : networkMode!.hashCode) +
      (portBindings.hashCode) +
      (restartPolicy == null ? 0 : restartPolicy!.hashCode) +
      (autoRemove == null ? 0 : autoRemove!.hashCode) +
      (volumeDriver == null ? 0 : volumeDriver!.hashCode) +
      (volumesFrom.hashCode) +
      (mounts.hashCode) +
      (consoleSize == null ? 0 : consoleSize!.hashCode) +
      (annotations.hashCode) +
      (capAdd.hashCode) +
      (capDrop.hashCode) +
      (cgroupnsMode == null ? 0 : cgroupnsMode!.hashCode) +
      (dns.hashCode) +
      (dnsOptions.hashCode) +
      (dnsSearch.hashCode) +
      (extraHosts.hashCode) +
      (groupAdd.hashCode) +
      (ipcMode == null ? 0 : ipcMode!.hashCode) +
      (cgroup == null ? 0 : cgroup!.hashCode) +
      (links.hashCode) +
      (oomScoreAdj == null ? 0 : oomScoreAdj!.hashCode) +
      (pidMode == null ? 0 : pidMode!.hashCode) +
      (privileged == null ? 0 : privileged!.hashCode) +
      (publishAllPorts == null ? 0 : publishAllPorts!.hashCode) +
      (readonlyRootfs == null ? 0 : readonlyRootfs!.hashCode) +
      (securityOpt.hashCode) +
      (storageOpt.hashCode) +
      (tmpfs.hashCode) +
      (uTSMode == null ? 0 : uTSMode!.hashCode) +
      (usernsMode == null ? 0 : usernsMode!.hashCode) +
      (shmSize == null ? 0 : shmSize!.hashCode) +
      (sysctls.hashCode) +
      (runtime == null ? 0 : runtime!.hashCode) +
      (isolation == null ? 0 : isolation!.hashCode) +
      (maskedPaths.hashCode) +
      (readonlyPaths.hashCode);

  @override
  String toString() =>
      'HostConfig[cpuShares=$cpuShares, memory=$memory, cgroupParent=$cgroupParent, blkioWeight=$blkioWeight, blkioWeightDevice=$blkioWeightDevice, blkioDeviceReadBps=$blkioDeviceReadBps, blkioDeviceWriteBps=$blkioDeviceWriteBps, blkioDeviceReadIOps=$blkioDeviceReadIOps, blkioDeviceWriteIOps=$blkioDeviceWriteIOps, cpuPeriod=$cpuPeriod, cpuQuota=$cpuQuota, cpuRealtimePeriod=$cpuRealtimePeriod, cpuRealtimeRuntime=$cpuRealtimeRuntime, cpusetCpus=$cpusetCpus, cpusetMems=$cpusetMems, devices=$devices, deviceCgroupRules=$deviceCgroupRules, deviceRequests=$deviceRequests, kernelMemoryTCP=$kernelMemoryTCP, memoryReservation=$memoryReservation, memorySwap=$memorySwap, memorySwappiness=$memorySwappiness, nanoCpus=$nanoCpus, oomKillDisable=$oomKillDisable, init=$init, pidsLimit=$pidsLimit, ulimits=$ulimits, cpuCount=$cpuCount, cpuPercent=$cpuPercent, iOMaximumIOps=$iOMaximumIOps, iOMaximumBandwidth=$iOMaximumBandwidth, binds=$binds, containerIDFile=$containerIDFile, logConfig=$logConfig, networkMode=$networkMode, portBindings=$portBindings, restartPolicy=$restartPolicy, autoRemove=$autoRemove, volumeDriver=$volumeDriver, volumesFrom=$volumesFrom, mounts=$mounts, consoleSize=$consoleSize, annotations=$annotations, capAdd=$capAdd, capDrop=$capDrop, cgroupnsMode=$cgroupnsMode, dns=$dns, dnsOptions=$dnsOptions, dnsSearch=$dnsSearch, extraHosts=$extraHosts, groupAdd=$groupAdd, ipcMode=$ipcMode, cgroup=$cgroup, links=$links, oomScoreAdj=$oomScoreAdj, pidMode=$pidMode, privileged=$privileged, publishAllPorts=$publishAllPorts, readonlyRootfs=$readonlyRootfs, securityOpt=$securityOpt, storageOpt=$storageOpt, tmpfs=$tmpfs, uTSMode=$uTSMode, usernsMode=$usernsMode, shmSize=$shmSize, sysctls=$sysctls, runtime=$runtime, isolation=$isolation, maskedPaths=$maskedPaths, readonlyPaths=$readonlyPaths]';

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
    json[r'Binds'] = this.binds;
    if (this.containerIDFile != null) {
      json[r'ContainerIDFile'] = this.containerIDFile;
    } else {
      json[r'ContainerIDFile'] = null;
    }
    if (this.logConfig != null) {
      json[r'LogConfig'] = this.logConfig;
    } else {
      json[r'LogConfig'] = null;
    }
    if (this.networkMode != null) {
      json[r'NetworkMode'] = this.networkMode;
    } else {
      json[r'NetworkMode'] = null;
    }
    json[r'PortBindings'] = this.portBindings;
    if (this.restartPolicy != null) {
      json[r'RestartPolicy'] = this.restartPolicy;
    } else {
      json[r'RestartPolicy'] = null;
    }
    if (this.autoRemove != null) {
      json[r'AutoRemove'] = this.autoRemove;
    } else {
      json[r'AutoRemove'] = null;
    }
    if (this.volumeDriver != null) {
      json[r'VolumeDriver'] = this.volumeDriver;
    } else {
      json[r'VolumeDriver'] = null;
    }
    json[r'VolumesFrom'] = this.volumesFrom;
    json[r'Mounts'] = this.mounts;
    if (this.consoleSize != null) {
      json[r'ConsoleSize'] = this.consoleSize;
    } else {
      json[r'ConsoleSize'] = null;
    }
    json[r'Annotations'] = this.annotations;
    json[r'CapAdd'] = this.capAdd;
    json[r'CapDrop'] = this.capDrop;
    if (this.cgroupnsMode != null) {
      json[r'CgroupnsMode'] = this.cgroupnsMode;
    } else {
      json[r'CgroupnsMode'] = null;
    }
    json[r'Dns'] = this.dns;
    json[r'DnsOptions'] = this.dnsOptions;
    json[r'DnsSearch'] = this.dnsSearch;
    json[r'ExtraHosts'] = this.extraHosts;
    json[r'GroupAdd'] = this.groupAdd;
    if (this.ipcMode != null) {
      json[r'IpcMode'] = this.ipcMode;
    } else {
      json[r'IpcMode'] = null;
    }
    if (this.cgroup != null) {
      json[r'Cgroup'] = this.cgroup;
    } else {
      json[r'Cgroup'] = null;
    }
    json[r'Links'] = this.links;
    if (this.oomScoreAdj != null) {
      json[r'OomScoreAdj'] = this.oomScoreAdj;
    } else {
      json[r'OomScoreAdj'] = null;
    }
    if (this.pidMode != null) {
      json[r'PidMode'] = this.pidMode;
    } else {
      json[r'PidMode'] = null;
    }
    if (this.privileged != null) {
      json[r'Privileged'] = this.privileged;
    } else {
      json[r'Privileged'] = null;
    }
    if (this.publishAllPorts != null) {
      json[r'PublishAllPorts'] = this.publishAllPorts;
    } else {
      json[r'PublishAllPorts'] = null;
    }
    if (this.readonlyRootfs != null) {
      json[r'ReadonlyRootfs'] = this.readonlyRootfs;
    } else {
      json[r'ReadonlyRootfs'] = null;
    }
    json[r'SecurityOpt'] = this.securityOpt;
    json[r'StorageOpt'] = this.storageOpt;
    json[r'Tmpfs'] = this.tmpfs;
    if (this.uTSMode != null) {
      json[r'UTSMode'] = this.uTSMode;
    } else {
      json[r'UTSMode'] = null;
    }
    if (this.usernsMode != null) {
      json[r'UsernsMode'] = this.usernsMode;
    } else {
      json[r'UsernsMode'] = null;
    }
    if (this.shmSize != null) {
      json[r'ShmSize'] = this.shmSize;
    } else {
      json[r'ShmSize'] = null;
    }
    json[r'Sysctls'] = this.sysctls;
    if (this.runtime != null) {
      json[r'Runtime'] = this.runtime;
    } else {
      json[r'Runtime'] = null;
    }
    if (this.isolation != null) {
      json[r'Isolation'] = this.isolation;
    } else {
      json[r'Isolation'] = null;
    }
    json[r'MaskedPaths'] = this.maskedPaths;
    json[r'ReadonlyPaths'] = this.readonlyPaths;
    return json;
  }

  /// Returns a new [HostConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HostConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "HostConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "HostConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HostConfig(
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
        binds: json[r'Binds'] is Iterable
            ? (json[r'Binds'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        containerIDFile: mapValueOfType<String>(json, r'ContainerIDFile'),
        logConfig: HostConfigAllOfLogConfig.fromJson(json[r'LogConfig']),
        networkMode: mapValueOfType<String>(json, r'NetworkMode'),
        portBindings: json[r'PortBindings'] == null
            ? const {}
            : PortBinding.mapListFromJson(json[r'PortBindings']),
        restartPolicy: RestartPolicy.fromJson(json[r'RestartPolicy']),
        autoRemove: mapValueOfType<bool>(json, r'AutoRemove'),
        volumeDriver: mapValueOfType<String>(json, r'VolumeDriver'),
        volumesFrom: json[r'VolumesFrom'] is Iterable
            ? (json[r'VolumesFrom'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        mounts: Mount.listFromJson(json[r'Mounts']),
        consoleSize: json[r'ConsoleSize'] is Iterable
            ? (json[r'ConsoleSize'] as Iterable)
                .cast<int>()
                .toList(growable: false)
            : const [],
        annotations:
            mapCastOfType<String, String>(json, r'Annotations') ?? const {},
        capAdd: json[r'CapAdd'] is Iterable
            ? (json[r'CapAdd'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        capDrop: json[r'CapDrop'] is Iterable
            ? (json[r'CapDrop'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        cgroupnsMode:
            HostConfigCgroupnsModeEnum.fromJson(json[r'CgroupnsMode']),
        dns: json[r'Dns'] is Iterable
            ? (json[r'Dns'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dnsOptions: json[r'DnsOptions'] is Iterable
            ? (json[r'DnsOptions'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        dnsSearch: json[r'DnsSearch'] is Iterable
            ? (json[r'DnsSearch'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        extraHosts: json[r'ExtraHosts'] is Iterable
            ? (json[r'ExtraHosts'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        groupAdd: json[r'GroupAdd'] is Iterable
            ? (json[r'GroupAdd'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        ipcMode: mapValueOfType<String>(json, r'IpcMode'),
        cgroup: mapValueOfType<String>(json, r'Cgroup'),
        links: json[r'Links'] is Iterable
            ? (json[r'Links'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        oomScoreAdj: mapValueOfType<int>(json, r'OomScoreAdj'),
        pidMode: mapValueOfType<String>(json, r'PidMode'),
        privileged: mapValueOfType<bool>(json, r'Privileged'),
        publishAllPorts: mapValueOfType<bool>(json, r'PublishAllPorts'),
        readonlyRootfs: mapValueOfType<bool>(json, r'ReadonlyRootfs'),
        securityOpt: json[r'SecurityOpt'] is Iterable
            ? (json[r'SecurityOpt'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        storageOpt:
            mapCastOfType<String, String>(json, r'StorageOpt') ?? const {},
        tmpfs: mapCastOfType<String, String>(json, r'Tmpfs') ?? const {},
        uTSMode: mapValueOfType<String>(json, r'UTSMode'),
        usernsMode: mapValueOfType<String>(json, r'UsernsMode'),
        shmSize: mapValueOfType<int>(json, r'ShmSize'),
        sysctls: mapCastOfType<String, String>(json, r'Sysctls') ?? const {},
        runtime: mapValueOfType<String>(json, r'Runtime'),
        isolation: HostConfigIsolationEnum.fromJson(json[r'Isolation']),
        maskedPaths: json[r'MaskedPaths'] is Iterable
            ? (json[r'MaskedPaths'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        readonlyPaths: json[r'ReadonlyPaths'] is Iterable
            ? (json[r'ReadonlyPaths'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<HostConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HostConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HostConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HostConfig> mapFromJson(dynamic json) {
    final map = <String, HostConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HostConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HostConfig-objects as value to a dart map
  static Map<String, List<HostConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<HostConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HostConfig.listFromJson(
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

/// cgroup namespace mode for the container. Possible values are:  - `\"private\"`: the container runs in its own private cgroup namespace - `\"host\"`: use the host system's cgroup namespace  If not specified, the daemon default is used, which can either be `\"private\"` or `\"host\"`, depending on daemon version, kernel support and configuration.
class HostConfigCgroupnsModeEnum {
  /// Instantiate a new enum with the provided [value].
  const HostConfigCgroupnsModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const private = HostConfigCgroupnsModeEnum._(r'private');
  static const host = HostConfigCgroupnsModeEnum._(r'host');

  /// List of all possible values in this [enum][HostConfigCgroupnsModeEnum].
  static const values = <HostConfigCgroupnsModeEnum>[
    private,
    host,
  ];

  static HostConfigCgroupnsModeEnum? fromJson(dynamic value) =>
      HostConfigCgroupnsModeEnumTypeTransformer().decode(value);

  static List<HostConfigCgroupnsModeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HostConfigCgroupnsModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HostConfigCgroupnsModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HostConfigCgroupnsModeEnum] to String,
/// and [decode] dynamic data back to [HostConfigCgroupnsModeEnum].
class HostConfigCgroupnsModeEnumTypeTransformer {
  factory HostConfigCgroupnsModeEnumTypeTransformer() =>
      _instance ??= const HostConfigCgroupnsModeEnumTypeTransformer._();

  const HostConfigCgroupnsModeEnumTypeTransformer._();

  String encode(HostConfigCgroupnsModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HostConfigCgroupnsModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HostConfigCgroupnsModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'private':
          return HostConfigCgroupnsModeEnum.private;
        case r'host':
          return HostConfigCgroupnsModeEnum.host;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HostConfigCgroupnsModeEnumTypeTransformer] instance.
  static HostConfigCgroupnsModeEnumTypeTransformer? _instance;
}

/// Isolation technology of the container. (Windows only)
class HostConfigIsolationEnum {
  /// Instantiate a new enum with the provided [value].
  const HostConfigIsolationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const default_ = HostConfigIsolationEnum._(r'default');
  static const process = HostConfigIsolationEnum._(r'process');
  static const hyperv = HostConfigIsolationEnum._(r'hyperv');

  /// List of all possible values in this [enum][HostConfigIsolationEnum].
  static const values = <HostConfigIsolationEnum>[
    default_,
    process,
    hyperv,
  ];

  static HostConfigIsolationEnum? fromJson(dynamic value) =>
      HostConfigIsolationEnumTypeTransformer().decode(value);

  static List<HostConfigIsolationEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HostConfigIsolationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HostConfigIsolationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HostConfigIsolationEnum] to String,
/// and [decode] dynamic data back to [HostConfigIsolationEnum].
class HostConfigIsolationEnumTypeTransformer {
  factory HostConfigIsolationEnumTypeTransformer() =>
      _instance ??= const HostConfigIsolationEnumTypeTransformer._();

  const HostConfigIsolationEnumTypeTransformer._();

  String encode(HostConfigIsolationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HostConfigIsolationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HostConfigIsolationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'default':
          return HostConfigIsolationEnum.default_;
        case r'process':
          return HostConfigIsolationEnum.process;
        case r'hyperv':
          return HostConfigIsolationEnum.hyperv;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HostConfigIsolationEnumTypeTransformer] instance.
  static HostConfigIsolationEnumTypeTransformer? _instance;
}
