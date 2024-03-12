//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class SystemInfo {
  /// Returns a new [SystemInfo] instance.
  SystemInfo({
    this.ID,
    this.containers,
    this.containersRunning,
    this.containersPaused,
    this.containersStopped,
    this.images,
    this.driver,
    this.driverStatus = const [],
    this.dockerRootDir,
    this.plugins,
    this.memoryLimit,
    this.swapLimit,
    this.kernelMemoryTCP,
    this.cpuCfsPeriod,
    this.cpuCfsQuota,
    this.cPUShares,
    this.cPUSet,
    this.pidsLimit,
    this.oomKillDisable,
    this.iPv4Forwarding,
    this.bridgeNfIptables,
    this.bridgeNfIp6tables,
    this.debug,
    this.nFd,
    this.nGoroutines,
    this.systemTime,
    this.loggingDriver,
    this.cgroupDriver = const SystemInfoCgroupDriverEnum._('cgroupfs'),
    this.cgroupVersion = const SystemInfoCgroupVersionEnum._('1'),
    this.nEventsListener,
    this.kernelVersion,
    this.operatingSystem,
    this.oSVersion,
    this.oSType,
    this.architecture,
    this.NCPU,
    this.memTotal,
    this.indexServerAddress = 'https://index.docker.io/v1/',
    this.registryConfig,
    this.genericResources = const [],
    this.httpProxy,
    this.httpsProxy,
    this.noProxy,
    this.name,
    this.labels = const [],
    this.experimentalBuild,
    this.serverVersion,
    this.runtimes = const {},
    this.defaultRuntime = 'runc',
    this.swarm,
    this.liveRestoreEnabled = false,
    this.isolation = const SystemInfoIsolationEnum._('default'),
    this.initBinary,
    this.containerdCommit,
    this.runcCommit,
    this.initCommit,
    this.securityOptions = const [],
    this.productLicense,
    this.defaultAddressPools = const [],
    this.warnings = const [],
    this.cDISpecDirs = const [],
  });

  /// Unique identifier of the daemon.  <p><br /></p>  > **Note**: The format of the ID itself is not part of the API, and > should not be considered stable.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ID;

  /// Total number of containers on the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? containers;

  /// Number of containers with status `\"running\"`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? containersRunning;

  /// Number of containers with status `\"paused\"`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? containersPaused;

  /// Number of containers with status `\"stopped\"`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? containersStopped;

  /// Total number of images on the host.  Both _tagged_ and _untagged_ (dangling) images are counted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? images;

  /// Name of the storage driver in use.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? driver;

  /// Information specific to the storage driver, provided as \"label\" / \"value\" pairs.  This information is provided by the storage driver, and formatted in a way consistent with the output of `docker info` on the command line.  <p><br /></p>  > **Note**: The information returned in this field, including the > formatting of values and labels, should not be considered stable, > and may change without notice.
  List<List<String>> driverStatus;

  /// Root directory of persistent Docker state.  Defaults to `/var/lib/docker` on Linux, and `C:\\ProgramData\\docker` on Windows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dockerRootDir;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PluginsInfo? plugins;

  /// Indicates if the host has memory limit support enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? memoryLimit;

  /// Indicates if the host has memory swap limit support enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? swapLimit;

  /// Indicates if the host has kernel memory TCP limit support enabled. This field is omitted if not supported.  Kernel memory TCP limits are not supported when using cgroups v2, which does not support the corresponding `memory.kmem.tcp.limit_in_bytes` cgroup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? kernelMemoryTCP;

  /// Indicates if CPU CFS(Completely Fair Scheduler) period is supported by the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cpuCfsPeriod;

  /// Indicates if CPU CFS(Completely Fair Scheduler) quota is supported by the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cpuCfsQuota;

  /// Indicates if CPU Shares limiting is supported by the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cPUShares;

  /// Indicates if CPUsets (cpuset.cpus, cpuset.mems) are supported by the host.  See [cpuset(7)](https://www.kernel.org/doc/Documentation/cgroup-v1/cpusets.txt)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cPUSet;

  /// Indicates if the host kernel has PID limit support enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pidsLimit;

  /// Indicates if OOM killer disable is supported on the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? oomKillDisable;

  /// Indicates IPv4 forwarding is enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? iPv4Forwarding;

  /// Indicates if `bridge-nf-call-iptables` is available on the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? bridgeNfIptables;

  /// Indicates if `bridge-nf-call-ip6tables` is available on the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? bridgeNfIp6tables;

  /// Indicates if the daemon is running in debug-mode / with debug-level logging enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? debug;

  /// The total number of file Descriptors in use by the daemon process.  This information is only returned if debug-mode is enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nFd;

  /// The  number of goroutines that currently exist.  This information is only returned if debug-mode is enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nGoroutines;

  /// Current system-time in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? systemTime;

  /// The logging driver to use as a default for new containers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? loggingDriver;

  /// The driver to use for managing cgroups.
  SystemInfoCgroupDriverEnum cgroupDriver;

  /// The version of the cgroup.
  SystemInfoCgroupVersionEnum cgroupVersion;

  /// Number of event listeners subscribed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nEventsListener;

  /// Kernel version of the host.  On Linux, this information obtained from `uname`. On Windows this information is queried from the <kbd>HKEY_LOCAL_MACHINE\\\\SOFTWARE\\\\Microsoft\\\\Windows NT\\\\CurrentVersion\\\\</kbd> registry value, for example _\"10.0 14393 (14393.1198.amd64fre.rs1_release_sec.170427-1353)\"_.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kernelVersion;

  /// Name of the host's operating system, for example: \"Ubuntu 16.04.2 LTS\" or \"Windows Server 2016 Datacenter\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? operatingSystem;

  /// Version of the host's operating system  <p><br /></p>  > **Note**: The information returned in this field, including its > very existence, and the formatting of values, should not be considered > stable, and may change without notice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oSVersion;

  /// Generic type of the operating system of the host, as returned by the Go runtime (`GOOS`).  Currently returned values are \"linux\" and \"windows\". A full list of possible values can be found in the [Go documentation](https://go.dev/doc/install/source#environment).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oSType;

  /// Hardware architecture of the host, as returned by the Go runtime (`GOARCH`).  A full list of possible values can be found in the [Go documentation](https://go.dev/doc/install/source#environment).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? architecture;

  /// The number of logical CPUs usable by the daemon.  The number of available CPUs is checked by querying the operating system when the daemon starts. Changes to operating system CPU allocation after the daemon is started are not reflected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? NCPU;

  /// Total amount of physical memory available on the host, in bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memTotal;

  /// Address / URL of the index server that is used for image search, and as a default for user authentication for Docker Hub and Docker Cloud.
  String indexServerAddress;

  RegistryServiceConfig? registryConfig;

  /// User-defined resources can be either Integer resources (e.g, `SSD=3`) or String resources (e.g, `GPU=UUID1`).
  List<GenericResourcesInner> genericResources;

  /// HTTP-proxy configured for the daemon. This value is obtained from the [`HTTP_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable. Credentials ([user info component](https://tools.ietf.org/html/rfc3986#section-3.2.1)) in the proxy URL are masked in the API response.  Containers do not automatically inherit this configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? httpProxy;

  /// HTTPS-proxy configured for the daemon. This value is obtained from the [`HTTPS_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable. Credentials ([user info component](https://tools.ietf.org/html/rfc3986#section-3.2.1)) in the proxy URL are masked in the API response.  Containers do not automatically inherit this configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? httpsProxy;

  /// Comma-separated list of domain extensions for which no proxy should be used. This value is obtained from the [`NO_PROXY`](https://www.gnu.org/software/wget/manual/html_node/Proxies.html) environment variable.  Containers do not automatically inherit this configuration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? noProxy;

  /// Hostname of the host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// User-defined labels (key/value metadata) as set on the daemon.  <p><br /></p>  > **Note**: When part of a Swarm, nodes can both have _daemon_ labels, > set through the daemon configuration, and _node_ labels, set from a > manager node in the Swarm. Node labels are not included in this > field. Node labels can be retrieved using the `/nodes/(id)` endpoint > on a manager node in the Swarm.
  List<String> labels;

  /// Indicates if experimental features are enabled on the daemon.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? experimentalBuild;

  /// Version string of the daemon.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverVersion;

  /// List of [OCI compliant](https://github.com/opencontainers/runtime-spec) runtimes configured on the daemon. Keys hold the \"name\" used to reference the runtime.  The Docker daemon relies on an OCI compliant runtime (invoked via the `containerd` daemon) as its interface to the Linux kernel namespaces, cgroups, and SELinux.  The default runtime is `runc`, and automatically configured. Additional runtimes can be configured by the user and will be listed here.
  Map<String, Runtime> runtimes;

  /// Name of the default OCI runtime that is used when starting containers.  The default can be overridden per-container at create time.
  String defaultRuntime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SwarmInfo? swarm;

  /// Indicates if live restore is enabled.  If enabled, containers are kept running when the daemon is shutdown or upon daemon start if running containers are detected.
  bool liveRestoreEnabled;

  /// Represents the isolation technology to use as a default for containers. The supported values are platform-specific.  If no isolation value is specified on daemon start, on Windows client, the default is `hyperv`, and on Windows server, the default is `process`.  This option is currently not used on other platforms.
  SystemInfoIsolationEnum isolation;

  /// Name and, optional, path of the `docker-init` binary.  If the path is omitted, the daemon searches the host's `$PATH` for the binary and uses the first result.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? initBinary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Commit? containerdCommit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Commit? runcCommit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Commit? initCommit;

  /// List of security features that are enabled on the daemon, such as apparmor, seccomp, SELinux, user-namespaces (userns), rootless and no-new-privileges.  Additional configuration options for each security feature may be present, and are included as a comma-separated list of key/value pairs.
  List<String> securityOptions;

  /// Reports a summary of the product license on the daemon.  If a commercial license has been applied to the daemon, information such as number of nodes, and expiration are included.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? productLicense;

  /// List of custom default address pools for local networks, which can be specified in the daemon.json file or dockerd option.  Example: a Base \"10.10.0.0/16\" with Size 24 will define the set of 256 10.10.[0-255].0/24 address pools.
  List<SystemInfoDefaultAddressPoolsInner> defaultAddressPools;

  /// List of warnings / informational messages about missing features, or issues related to the daemon configuration.  These messages can be printed by the client as information to the user.
  List<String> warnings;

  /// List of directories where (Container Device Interface) CDI specifications are located.  These specifications define vendor-specific modifications to an OCI runtime specification for a container being created.  An empty list indicates that CDI device injection is disabled.  Note that since using CDI device injection requires the daemon to have experimental enabled. For non-experimental daemons an empty list will always be returned.
  List<String> cDISpecDirs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemInfo &&
          other.ID == ID &&
          other.containers == containers &&
          other.containersRunning == containersRunning &&
          other.containersPaused == containersPaused &&
          other.containersStopped == containersStopped &&
          other.images == images &&
          other.driver == driver &&
          _deepEquality.equals(other.driverStatus, driverStatus) &&
          other.dockerRootDir == dockerRootDir &&
          other.plugins == plugins &&
          other.memoryLimit == memoryLimit &&
          other.swapLimit == swapLimit &&
          other.kernelMemoryTCP == kernelMemoryTCP &&
          other.cpuCfsPeriod == cpuCfsPeriod &&
          other.cpuCfsQuota == cpuCfsQuota &&
          other.cPUShares == cPUShares &&
          other.cPUSet == cPUSet &&
          other.pidsLimit == pidsLimit &&
          other.oomKillDisable == oomKillDisable &&
          other.iPv4Forwarding == iPv4Forwarding &&
          other.bridgeNfIptables == bridgeNfIptables &&
          other.bridgeNfIp6tables == bridgeNfIp6tables &&
          other.debug == debug &&
          other.nFd == nFd &&
          other.nGoroutines == nGoroutines &&
          other.systemTime == systemTime &&
          other.loggingDriver == loggingDriver &&
          other.cgroupDriver == cgroupDriver &&
          other.cgroupVersion == cgroupVersion &&
          other.nEventsListener == nEventsListener &&
          other.kernelVersion == kernelVersion &&
          other.operatingSystem == operatingSystem &&
          other.oSVersion == oSVersion &&
          other.oSType == oSType &&
          other.architecture == architecture &&
          other.NCPU == NCPU &&
          other.memTotal == memTotal &&
          other.indexServerAddress == indexServerAddress &&
          other.registryConfig == registryConfig &&
          _deepEquality.equals(other.genericResources, genericResources) &&
          other.httpProxy == httpProxy &&
          other.httpsProxy == httpsProxy &&
          other.noProxy == noProxy &&
          other.name == name &&
          _deepEquality.equals(other.labels, labels) &&
          other.experimentalBuild == experimentalBuild &&
          other.serverVersion == serverVersion &&
          _deepEquality.equals(other.runtimes, runtimes) &&
          other.defaultRuntime == defaultRuntime &&
          other.swarm == swarm &&
          other.liveRestoreEnabled == liveRestoreEnabled &&
          other.isolation == isolation &&
          other.initBinary == initBinary &&
          other.containerdCommit == containerdCommit &&
          other.runcCommit == runcCommit &&
          other.initCommit == initCommit &&
          _deepEquality.equals(other.securityOptions, securityOptions) &&
          other.productLicense == productLicense &&
          _deepEquality.equals(
              other.defaultAddressPools, defaultAddressPools) &&
          _deepEquality.equals(other.warnings, warnings) &&
          _deepEquality.equals(other.cDISpecDirs, cDISpecDirs);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (ID == null ? 0 : ID!.hashCode) +
      (containers == null ? 0 : containers!.hashCode) +
      (containersRunning == null ? 0 : containersRunning!.hashCode) +
      (containersPaused == null ? 0 : containersPaused!.hashCode) +
      (containersStopped == null ? 0 : containersStopped!.hashCode) +
      (images == null ? 0 : images!.hashCode) +
      (driver == null ? 0 : driver!.hashCode) +
      (driverStatus.hashCode) +
      (dockerRootDir == null ? 0 : dockerRootDir!.hashCode) +
      (plugins == null ? 0 : plugins!.hashCode) +
      (memoryLimit == null ? 0 : memoryLimit!.hashCode) +
      (swapLimit == null ? 0 : swapLimit!.hashCode) +
      (kernelMemoryTCP == null ? 0 : kernelMemoryTCP!.hashCode) +
      (cpuCfsPeriod == null ? 0 : cpuCfsPeriod!.hashCode) +
      (cpuCfsQuota == null ? 0 : cpuCfsQuota!.hashCode) +
      (cPUShares == null ? 0 : cPUShares!.hashCode) +
      (cPUSet == null ? 0 : cPUSet!.hashCode) +
      (pidsLimit == null ? 0 : pidsLimit!.hashCode) +
      (oomKillDisable == null ? 0 : oomKillDisable!.hashCode) +
      (iPv4Forwarding == null ? 0 : iPv4Forwarding!.hashCode) +
      (bridgeNfIptables == null ? 0 : bridgeNfIptables!.hashCode) +
      (bridgeNfIp6tables == null ? 0 : bridgeNfIp6tables!.hashCode) +
      (debug == null ? 0 : debug!.hashCode) +
      (nFd == null ? 0 : nFd!.hashCode) +
      (nGoroutines == null ? 0 : nGoroutines!.hashCode) +
      (systemTime == null ? 0 : systemTime!.hashCode) +
      (loggingDriver == null ? 0 : loggingDriver!.hashCode) +
      (cgroupDriver.hashCode) +
      (cgroupVersion.hashCode) +
      (nEventsListener == null ? 0 : nEventsListener!.hashCode) +
      (kernelVersion == null ? 0 : kernelVersion!.hashCode) +
      (operatingSystem == null ? 0 : operatingSystem!.hashCode) +
      (oSVersion == null ? 0 : oSVersion!.hashCode) +
      (oSType == null ? 0 : oSType!.hashCode) +
      (architecture == null ? 0 : architecture!.hashCode) +
      (NCPU == null ? 0 : NCPU!.hashCode) +
      (memTotal == null ? 0 : memTotal!.hashCode) +
      (indexServerAddress.hashCode) +
      (registryConfig == null ? 0 : registryConfig!.hashCode) +
      (genericResources.hashCode) +
      (httpProxy == null ? 0 : httpProxy!.hashCode) +
      (httpsProxy == null ? 0 : httpsProxy!.hashCode) +
      (noProxy == null ? 0 : noProxy!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (labels.hashCode) +
      (experimentalBuild == null ? 0 : experimentalBuild!.hashCode) +
      (serverVersion == null ? 0 : serverVersion!.hashCode) +
      (runtimes.hashCode) +
      (defaultRuntime.hashCode) +
      (swarm == null ? 0 : swarm!.hashCode) +
      (liveRestoreEnabled.hashCode) +
      (isolation.hashCode) +
      (initBinary == null ? 0 : initBinary!.hashCode) +
      (containerdCommit == null ? 0 : containerdCommit!.hashCode) +
      (runcCommit == null ? 0 : runcCommit!.hashCode) +
      (initCommit == null ? 0 : initCommit!.hashCode) +
      (securityOptions.hashCode) +
      (productLicense == null ? 0 : productLicense!.hashCode) +
      (defaultAddressPools.hashCode) +
      (warnings.hashCode) +
      (cDISpecDirs.hashCode);

  @override
  String toString() =>
      'SystemInfo[ID=$ID, containers=$containers, containersRunning=$containersRunning, containersPaused=$containersPaused, containersStopped=$containersStopped, images=$images, driver=$driver, driverStatus=$driverStatus, dockerRootDir=$dockerRootDir, plugins=$plugins, memoryLimit=$memoryLimit, swapLimit=$swapLimit, kernelMemoryTCP=$kernelMemoryTCP, cpuCfsPeriod=$cpuCfsPeriod, cpuCfsQuota=$cpuCfsQuota, cPUShares=$cPUShares, cPUSet=$cPUSet, pidsLimit=$pidsLimit, oomKillDisable=$oomKillDisable, iPv4Forwarding=$iPv4Forwarding, bridgeNfIptables=$bridgeNfIptables, bridgeNfIp6tables=$bridgeNfIp6tables, debug=$debug, nFd=$nFd, nGoroutines=$nGoroutines, systemTime=$systemTime, loggingDriver=$loggingDriver, cgroupDriver=$cgroupDriver, cgroupVersion=$cgroupVersion, nEventsListener=$nEventsListener, kernelVersion=$kernelVersion, operatingSystem=$operatingSystem, oSVersion=$oSVersion, oSType=$oSType, architecture=$architecture, NCPU=$NCPU, memTotal=$memTotal, indexServerAddress=$indexServerAddress, registryConfig=$registryConfig, genericResources=$genericResources, httpProxy=$httpProxy, httpsProxy=$httpsProxy, noProxy=$noProxy, name=$name, labels=$labels, experimentalBuild=$experimentalBuild, serverVersion=$serverVersion, runtimes=$runtimes, defaultRuntime=$defaultRuntime, swarm=$swarm, liveRestoreEnabled=$liveRestoreEnabled, isolation=$isolation, initBinary=$initBinary, containerdCommit=$containerdCommit, runcCommit=$runcCommit, initCommit=$initCommit, securityOptions=$securityOptions, productLicense=$productLicense, defaultAddressPools=$defaultAddressPools, warnings=$warnings, cDISpecDirs=$cDISpecDirs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ID != null) {
      json[r'ID'] = this.ID;
    } else {
      json[r'ID'] = null;
    }
    if (this.containers != null) {
      json[r'Containers'] = this.containers;
    } else {
      json[r'Containers'] = null;
    }
    if (this.containersRunning != null) {
      json[r'ContainersRunning'] = this.containersRunning;
    } else {
      json[r'ContainersRunning'] = null;
    }
    if (this.containersPaused != null) {
      json[r'ContainersPaused'] = this.containersPaused;
    } else {
      json[r'ContainersPaused'] = null;
    }
    if (this.containersStopped != null) {
      json[r'ContainersStopped'] = this.containersStopped;
    } else {
      json[r'ContainersStopped'] = null;
    }
    if (this.images != null) {
      json[r'Images'] = this.images;
    } else {
      json[r'Images'] = null;
    }
    if (this.driver != null) {
      json[r'Driver'] = this.driver;
    } else {
      json[r'Driver'] = null;
    }
    json[r'DriverStatus'] = this.driverStatus;
    if (this.dockerRootDir != null) {
      json[r'DockerRootDir'] = this.dockerRootDir;
    } else {
      json[r'DockerRootDir'] = null;
    }
    if (this.plugins != null) {
      json[r'Plugins'] = this.plugins;
    } else {
      json[r'Plugins'] = null;
    }
    if (this.memoryLimit != null) {
      json[r'MemoryLimit'] = this.memoryLimit;
    } else {
      json[r'MemoryLimit'] = null;
    }
    if (this.swapLimit != null) {
      json[r'SwapLimit'] = this.swapLimit;
    } else {
      json[r'SwapLimit'] = null;
    }
    if (this.kernelMemoryTCP != null) {
      json[r'KernelMemoryTCP'] = this.kernelMemoryTCP;
    } else {
      json[r'KernelMemoryTCP'] = null;
    }
    if (this.cpuCfsPeriod != null) {
      json[r'CpuCfsPeriod'] = this.cpuCfsPeriod;
    } else {
      json[r'CpuCfsPeriod'] = null;
    }
    if (this.cpuCfsQuota != null) {
      json[r'CpuCfsQuota'] = this.cpuCfsQuota;
    } else {
      json[r'CpuCfsQuota'] = null;
    }
    if (this.cPUShares != null) {
      json[r'CPUShares'] = this.cPUShares;
    } else {
      json[r'CPUShares'] = null;
    }
    if (this.cPUSet != null) {
      json[r'CPUSet'] = this.cPUSet;
    } else {
      json[r'CPUSet'] = null;
    }
    if (this.pidsLimit != null) {
      json[r'PidsLimit'] = this.pidsLimit;
    } else {
      json[r'PidsLimit'] = null;
    }
    if (this.oomKillDisable != null) {
      json[r'OomKillDisable'] = this.oomKillDisable;
    } else {
      json[r'OomKillDisable'] = null;
    }
    if (this.iPv4Forwarding != null) {
      json[r'IPv4Forwarding'] = this.iPv4Forwarding;
    } else {
      json[r'IPv4Forwarding'] = null;
    }
    if (this.bridgeNfIptables != null) {
      json[r'BridgeNfIptables'] = this.bridgeNfIptables;
    } else {
      json[r'BridgeNfIptables'] = null;
    }
    if (this.bridgeNfIp6tables != null) {
      json[r'BridgeNfIp6tables'] = this.bridgeNfIp6tables;
    } else {
      json[r'BridgeNfIp6tables'] = null;
    }
    if (this.debug != null) {
      json[r'Debug'] = this.debug;
    } else {
      json[r'Debug'] = null;
    }
    if (this.nFd != null) {
      json[r'NFd'] = this.nFd;
    } else {
      json[r'NFd'] = null;
    }
    if (this.nGoroutines != null) {
      json[r'NGoroutines'] = this.nGoroutines;
    } else {
      json[r'NGoroutines'] = null;
    }
    if (this.systemTime != null) {
      json[r'SystemTime'] = this.systemTime;
    } else {
      json[r'SystemTime'] = null;
    }
    if (this.loggingDriver != null) {
      json[r'LoggingDriver'] = this.loggingDriver;
    } else {
      json[r'LoggingDriver'] = null;
    }
    json[r'CgroupDriver'] = this.cgroupDriver;
    json[r'CgroupVersion'] = this.cgroupVersion;
    if (this.nEventsListener != null) {
      json[r'NEventsListener'] = this.nEventsListener;
    } else {
      json[r'NEventsListener'] = null;
    }
    if (this.kernelVersion != null) {
      json[r'KernelVersion'] = this.kernelVersion;
    } else {
      json[r'KernelVersion'] = null;
    }
    if (this.operatingSystem != null) {
      json[r'OperatingSystem'] = this.operatingSystem;
    } else {
      json[r'OperatingSystem'] = null;
    }
    if (this.oSVersion != null) {
      json[r'OSVersion'] = this.oSVersion;
    } else {
      json[r'OSVersion'] = null;
    }
    if (this.oSType != null) {
      json[r'OSType'] = this.oSType;
    } else {
      json[r'OSType'] = null;
    }
    if (this.architecture != null) {
      json[r'Architecture'] = this.architecture;
    } else {
      json[r'Architecture'] = null;
    }
    if (this.NCPU != null) {
      json[r'NCPU'] = this.NCPU;
    } else {
      json[r'NCPU'] = null;
    }
    if (this.memTotal != null) {
      json[r'MemTotal'] = this.memTotal;
    } else {
      json[r'MemTotal'] = null;
    }
    json[r'IndexServerAddress'] = this.indexServerAddress;
    if (this.registryConfig != null) {
      json[r'RegistryConfig'] = this.registryConfig;
    } else {
      json[r'RegistryConfig'] = null;
    }
    json[r'GenericResources'] = this.genericResources;
    if (this.httpProxy != null) {
      json[r'HttpProxy'] = this.httpProxy;
    } else {
      json[r'HttpProxy'] = null;
    }
    if (this.httpsProxy != null) {
      json[r'HttpsProxy'] = this.httpsProxy;
    } else {
      json[r'HttpsProxy'] = null;
    }
    if (this.noProxy != null) {
      json[r'NoProxy'] = this.noProxy;
    } else {
      json[r'NoProxy'] = null;
    }
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    json[r'Labels'] = this.labels;
    if (this.experimentalBuild != null) {
      json[r'ExperimentalBuild'] = this.experimentalBuild;
    } else {
      json[r'ExperimentalBuild'] = null;
    }
    if (this.serverVersion != null) {
      json[r'ServerVersion'] = this.serverVersion;
    } else {
      json[r'ServerVersion'] = null;
    }
    json[r'Runtimes'] = this.runtimes;
    json[r'DefaultRuntime'] = this.defaultRuntime;
    if (this.swarm != null) {
      json[r'Swarm'] = this.swarm;
    } else {
      json[r'Swarm'] = null;
    }
    json[r'LiveRestoreEnabled'] = this.liveRestoreEnabled;
    json[r'Isolation'] = this.isolation;
    if (this.initBinary != null) {
      json[r'InitBinary'] = this.initBinary;
    } else {
      json[r'InitBinary'] = null;
    }
    if (this.containerdCommit != null) {
      json[r'ContainerdCommit'] = this.containerdCommit;
    } else {
      json[r'ContainerdCommit'] = null;
    }
    if (this.runcCommit != null) {
      json[r'RuncCommit'] = this.runcCommit;
    } else {
      json[r'RuncCommit'] = null;
    }
    if (this.initCommit != null) {
      json[r'InitCommit'] = this.initCommit;
    } else {
      json[r'InitCommit'] = null;
    }
    json[r'SecurityOptions'] = this.securityOptions;
    if (this.productLicense != null) {
      json[r'ProductLicense'] = this.productLicense;
    } else {
      json[r'ProductLicense'] = null;
    }
    json[r'DefaultAddressPools'] = this.defaultAddressPools;
    json[r'Warnings'] = this.warnings;
    json[r'CDISpecDirs'] = this.cDISpecDirs;
    return json;
  }

  /// Returns a new [SystemInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SystemInfo[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SystemInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemInfo(
        ID: mapValueOfType<String>(json, r'ID'),
        containers: mapValueOfType<int>(json, r'Containers'),
        containersRunning: mapValueOfType<int>(json, r'ContainersRunning'),
        containersPaused: mapValueOfType<int>(json, r'ContainersPaused'),
        containersStopped: mapValueOfType<int>(json, r'ContainersStopped'),
        images: mapValueOfType<int>(json, r'Images'),
        driver: mapValueOfType<String>(json, r'Driver'),
        driverStatus: json[r'DriverStatus'] is List
            ? (json[r'DriverStatus'] as List)
                .map((e) =>
                    e == null ? const <String>[] : (e as List).cast<String>())
                .toList()
            : const [],
        dockerRootDir: mapValueOfType<String>(json, r'DockerRootDir'),
        plugins: PluginsInfo.fromJson(json[r'Plugins']),
        memoryLimit: mapValueOfType<bool>(json, r'MemoryLimit'),
        swapLimit: mapValueOfType<bool>(json, r'SwapLimit'),
        kernelMemoryTCP: mapValueOfType<bool>(json, r'KernelMemoryTCP'),
        cpuCfsPeriod: mapValueOfType<bool>(json, r'CpuCfsPeriod'),
        cpuCfsQuota: mapValueOfType<bool>(json, r'CpuCfsQuota'),
        cPUShares: mapValueOfType<bool>(json, r'CPUShares'),
        cPUSet: mapValueOfType<bool>(json, r'CPUSet'),
        pidsLimit: mapValueOfType<bool>(json, r'PidsLimit'),
        oomKillDisable: mapValueOfType<bool>(json, r'OomKillDisable'),
        iPv4Forwarding: mapValueOfType<bool>(json, r'IPv4Forwarding'),
        bridgeNfIptables: mapValueOfType<bool>(json, r'BridgeNfIptables'),
        bridgeNfIp6tables: mapValueOfType<bool>(json, r'BridgeNfIp6tables'),
        debug: mapValueOfType<bool>(json, r'Debug'),
        nFd: mapValueOfType<int>(json, r'NFd'),
        nGoroutines: mapValueOfType<int>(json, r'NGoroutines'),
        systemTime: mapValueOfType<String>(json, r'SystemTime'),
        loggingDriver: mapValueOfType<String>(json, r'LoggingDriver'),
        cgroupDriver: SystemInfoCgroupDriverEnum.cgroupfs,
        cgroupVersion: SystemInfoCgroupVersionEnum.n1,
        nEventsListener: mapValueOfType<int>(json, r'NEventsListener'),
        kernelVersion: mapValueOfType<String>(json, r'KernelVersion'),
        operatingSystem: mapValueOfType<String>(json, r'OperatingSystem'),
        oSVersion: mapValueOfType<String>(json, r'OSVersion'),
        oSType: mapValueOfType<String>(json, r'OSType'),
        architecture: mapValueOfType<String>(json, r'Architecture'),
        NCPU: mapValueOfType<int>(json, r'NCPU'),
        memTotal: mapValueOfType<int>(json, r'MemTotal'),
        indexServerAddress:
            mapValueOfType<String>(json, r'IndexServerAddress') ??
                'https://index.docker.io/v1/',
        registryConfig: RegistryServiceConfig.fromJson(json[r'RegistryConfig']),
        genericResources:
            GenericResourcesInner.listFromJson(json[r'GenericResources']),
        httpProxy: mapValueOfType<String>(json, r'HttpProxy'),
        httpsProxy: mapValueOfType<String>(json, r'HttpsProxy'),
        noProxy: mapValueOfType<String>(json, r'NoProxy'),
        name: mapValueOfType<String>(json, r'Name'),
        labels: json[r'Labels'] is Iterable
            ? (json[r'Labels'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        experimentalBuild: mapValueOfType<bool>(json, r'ExperimentalBuild'),
        serverVersion: mapValueOfType<String>(json, r'ServerVersion'),
        runtimes: Runtime.mapFromJson(json[r'Runtimes']),
        defaultRuntime:
            mapValueOfType<String>(json, r'DefaultRuntime') ?? 'runc',
        swarm: SwarmInfo.fromJson(json[r'Swarm']),
        liveRestoreEnabled:
            mapValueOfType<bool>(json, r'LiveRestoreEnabled') ?? false,
        isolation:
            SystemInfoIsolationEnum.default_,
        initBinary: mapValueOfType<String>(json, r'InitBinary'),
        containerdCommit: Commit.fromJson(json[r'ContainerdCommit']),
        runcCommit: Commit.fromJson(json[r'RuncCommit']),
        initCommit: Commit.fromJson(json[r'InitCommit']),
        securityOptions: json[r'SecurityOptions'] is Iterable
            ? (json[r'SecurityOptions'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        productLicense: mapValueOfType<String>(json, r'ProductLicense'),
        defaultAddressPools: SystemInfoDefaultAddressPoolsInner.listFromJson(
            json[r'DefaultAddressPools']),
        warnings: json[r'Warnings'] is Iterable
            ? (json[r'Warnings'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        cDISpecDirs: json[r'CDISpecDirs'] is Iterable
            ? (json[r'CDISpecDirs'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SystemInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemInfo> mapFromJson(dynamic json) {
    final map = <String, SystemInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemInfo-objects as value to a dart map
  static Map<String, List<SystemInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SystemInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SystemInfo.listFromJson(
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

/// The driver to use for managing cgroups.
class SystemInfoCgroupDriverEnum {
  /// Instantiate a new enum with the provided [value].
  const SystemInfoCgroupDriverEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cgroupfs = SystemInfoCgroupDriverEnum._(r'cgroupfs');
  static const systemd = SystemInfoCgroupDriverEnum._(r'systemd');
  static const none = SystemInfoCgroupDriverEnum._(r'none');

  /// List of all possible values in this [enum][SystemInfoCgroupDriverEnum].
  static const values = <SystemInfoCgroupDriverEnum>[
    cgroupfs,
    systemd,
    none,
  ];

  static SystemInfoCgroupDriverEnum? fromJson(dynamic value) =>
      SystemInfoCgroupDriverEnumTypeTransformer().decode(value);

  static List<SystemInfoCgroupDriverEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemInfoCgroupDriverEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemInfoCgroupDriverEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SystemInfoCgroupDriverEnum] to String,
/// and [decode] dynamic data back to [SystemInfoCgroupDriverEnum].
class SystemInfoCgroupDriverEnumTypeTransformer {
  factory SystemInfoCgroupDriverEnumTypeTransformer() =>
      _instance ??= const SystemInfoCgroupDriverEnumTypeTransformer._();

  const SystemInfoCgroupDriverEnumTypeTransformer._();

  String encode(SystemInfoCgroupDriverEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SystemInfoCgroupDriverEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SystemInfoCgroupDriverEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'cgroupfs':
          return SystemInfoCgroupDriverEnum.cgroupfs;
        case r'systemd':
          return SystemInfoCgroupDriverEnum.systemd;
        case r'none':
          return SystemInfoCgroupDriverEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SystemInfoCgroupDriverEnumTypeTransformer] instance.
  static SystemInfoCgroupDriverEnumTypeTransformer? _instance;
}

/// The version of the cgroup.
class SystemInfoCgroupVersionEnum {
  /// Instantiate a new enum with the provided [value].
  const SystemInfoCgroupVersionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const n1 = SystemInfoCgroupVersionEnum._(r'1');
  static const n2 = SystemInfoCgroupVersionEnum._(r'2');

  /// List of all possible values in this [enum][SystemInfoCgroupVersionEnum].
  static const values = <SystemInfoCgroupVersionEnum>[
    n1,
    n2,
  ];

  static SystemInfoCgroupVersionEnum? fromJson(dynamic value) =>
      SystemInfoCgroupVersionEnumTypeTransformer().decode(value);

  static List<SystemInfoCgroupVersionEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemInfoCgroupVersionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemInfoCgroupVersionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SystemInfoCgroupVersionEnum] to String,
/// and [decode] dynamic data back to [SystemInfoCgroupVersionEnum].
class SystemInfoCgroupVersionEnumTypeTransformer {
  factory SystemInfoCgroupVersionEnumTypeTransformer() =>
      _instance ??= const SystemInfoCgroupVersionEnumTypeTransformer._();

  const SystemInfoCgroupVersionEnumTypeTransformer._();

  String encode(SystemInfoCgroupVersionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SystemInfoCgroupVersionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SystemInfoCgroupVersionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'1':
          return SystemInfoCgroupVersionEnum.n1;
        case r'2':
          return SystemInfoCgroupVersionEnum.n2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SystemInfoCgroupVersionEnumTypeTransformer] instance.
  static SystemInfoCgroupVersionEnumTypeTransformer? _instance;
}

/// Represents the isolation technology to use as a default for containers. The supported values are platform-specific.  If no isolation value is specified on daemon start, on Windows client, the default is `hyperv`, and on Windows server, the default is `process`.  This option is currently not used on other platforms.
class SystemInfoIsolationEnum {
  /// Instantiate a new enum with the provided [value].
  const SystemInfoIsolationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const default_ = SystemInfoIsolationEnum._(r'default');
  static const hyperv = SystemInfoIsolationEnum._(r'hyperv');
  static const process = SystemInfoIsolationEnum._(r'process');

  /// List of all possible values in this [enum][SystemInfoIsolationEnum].
  static const values = <SystemInfoIsolationEnum>[
    default_,
    hyperv,
    process,
  ];

  static SystemInfoIsolationEnum? fromJson(dynamic value) =>
      SystemInfoIsolationEnumTypeTransformer().decode(value);

  static List<SystemInfoIsolationEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemInfoIsolationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemInfoIsolationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SystemInfoIsolationEnum] to String,
/// and [decode] dynamic data back to [SystemInfoIsolationEnum].
class SystemInfoIsolationEnumTypeTransformer {
  factory SystemInfoIsolationEnumTypeTransformer() =>
      _instance ??= const SystemInfoIsolationEnumTypeTransformer._();

  const SystemInfoIsolationEnumTypeTransformer._();

  String encode(SystemInfoIsolationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SystemInfoIsolationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SystemInfoIsolationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'default':
          return SystemInfoIsolationEnum.default_;
        case r'hyperv':
          return SystemInfoIsolationEnum.hyperv;
        case r'process':
          return SystemInfoIsolationEnum.process;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SystemInfoIsolationEnumTypeTransformer] instance.
  static SystemInfoIsolationEnumTypeTransformer? _instance;
}
