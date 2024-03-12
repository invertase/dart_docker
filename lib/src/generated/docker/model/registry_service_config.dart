//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class RegistryServiceConfig {
  /// Returns a new [RegistryServiceConfig] instance.
  RegistryServiceConfig({
    this.allowNondistributableArtifactsCIDRs = const [],
    this.allowNondistributableArtifactsHostnames = const [],
    this.insecureRegistryCIDRs = const [],
    this.indexConfigs = const {},
    this.mirrors = const [],
  });

  /// List of IP ranges to which nondistributable artifacts can be pushed, using the CIDR syntax [RFC 4632](https://tools.ietf.org/html/4632).  Some images (for example, Windows base images) contain artifacts whose distribution is restricted by license. When these images are pushed to a registry, restricted artifacts are not included.  This configuration override this behavior, and enables the daemon to push nondistributable artifacts to all registries whose resolved IP address is within the subnet described by the CIDR syntax.  This option is useful when pushing images containing nondistributable artifacts to a registry on an air-gapped network so hosts on that network can pull the images without connecting to another server.  > **Warning**: Nondistributable artifacts typically have restrictions > on how and where they can be distributed and shared. Only use this > feature to push artifacts to private registries and ensure that you > are in compliance with any terms that cover redistributing > nondistributable artifacts.
  List<String> allowNondistributableArtifactsCIDRs;

  /// List of registry hostnames to which nondistributable artifacts can be pushed, using the format `<hostname>[:<port>]` or `<IP address>[:<port>]`.  Some images (for example, Windows base images) contain artifacts whose distribution is restricted by license. When these images are pushed to a registry, restricted artifacts are not included.  This configuration override this behavior for the specified registries.  This option is useful when pushing images containing nondistributable artifacts to a registry on an air-gapped network so hosts on that network can pull the images without connecting to another server.  > **Warning**: Nondistributable artifacts typically have restrictions > on how and where they can be distributed and shared. Only use this > feature to push artifacts to private registries and ensure that you > are in compliance with any terms that cover redistributing > nondistributable artifacts.
  List<String> allowNondistributableArtifactsHostnames;

  /// List of IP ranges of insecure registries, using the CIDR syntax ([RFC 4632](https://tools.ietf.org/html/4632)). Insecure registries accept un-encrypted (HTTP) and/or untrusted (HTTPS with certificates from unknown CAs) communication.  By default, local registries (`127.0.0.0/8`) are configured as insecure. All other registries are secure. Communicating with an insecure registry is not possible if the daemon assumes that registry is secure.  This configuration override this behavior, insecure communication with registries whose resolved IP address is within the subnet described by the CIDR syntax.  Registries can also be marked insecure by hostname. Those registries are listed under `IndexConfigs` and have their `Secure` field set to `false`.  > **Warning**: Using this option can be useful when running a local > registry, but introduces security vulnerabilities. This option > should therefore ONLY be used for testing purposes. For increased > security, users should add their CA to their system's list of trusted > CAs instead of enabling this option.
  List<String> insecureRegistryCIDRs;

  Map<String, IndexInfo> indexConfigs;

  /// List of registry URLs that act as a mirror for the official (`docker.io`) registry.
  List<String> mirrors;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegistryServiceConfig &&
          _deepEquality.equals(other.allowNondistributableArtifactsCIDRs,
              allowNondistributableArtifactsCIDRs) &&
          _deepEquality.equals(other.allowNondistributableArtifactsHostnames,
              allowNondistributableArtifactsHostnames) &&
          _deepEquality.equals(
              other.insecureRegistryCIDRs, insecureRegistryCIDRs) &&
          _deepEquality.equals(other.indexConfigs, indexConfigs) &&
          _deepEquality.equals(other.mirrors, mirrors);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (allowNondistributableArtifactsCIDRs.hashCode) +
      (allowNondistributableArtifactsHostnames.hashCode) +
      (insecureRegistryCIDRs.hashCode) +
      (indexConfigs.hashCode) +
      (mirrors.hashCode);

  @override
  String toString() =>
      'RegistryServiceConfig[allowNondistributableArtifactsCIDRs=$allowNondistributableArtifactsCIDRs, allowNondistributableArtifactsHostnames=$allowNondistributableArtifactsHostnames, insecureRegistryCIDRs=$insecureRegistryCIDRs, indexConfigs=$indexConfigs, mirrors=$mirrors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'AllowNondistributableArtifactsCIDRs'] =
        this.allowNondistributableArtifactsCIDRs;
    json[r'AllowNondistributableArtifactsHostnames'] =
        this.allowNondistributableArtifactsHostnames;
    json[r'InsecureRegistryCIDRs'] = this.insecureRegistryCIDRs;
    json[r'IndexConfigs'] = this.indexConfigs;
    json[r'Mirrors'] = this.mirrors;
    return json;
  }

  /// Returns a new [RegistryServiceConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistryServiceConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "RegistryServiceConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "RegistryServiceConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistryServiceConfig(
        allowNondistributableArtifactsCIDRs:
            json[r'AllowNondistributableArtifactsCIDRs'] is Iterable
                ? (json[r'AllowNondistributableArtifactsCIDRs'] as Iterable)
                    .cast<String>()
                    .toList(growable: false)
                : const [],
        allowNondistributableArtifactsHostnames:
            json[r'AllowNondistributableArtifactsHostnames'] is Iterable
                ? (json[r'AllowNondistributableArtifactsHostnames'] as Iterable)
                    .cast<String>()
                    .toList(growable: false)
                : const [],
        insecureRegistryCIDRs: json[r'InsecureRegistryCIDRs'] is Iterable
            ? (json[r'InsecureRegistryCIDRs'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        indexConfigs: IndexInfo.mapFromJson(json[r'IndexConfigs']),
        mirrors: json[r'Mirrors'] is Iterable
            ? (json[r'Mirrors'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<RegistryServiceConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RegistryServiceConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistryServiceConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistryServiceConfig> mapFromJson(dynamic json) {
    final map = <String, RegistryServiceConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistryServiceConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistryServiceConfig-objects as value to a dart map
  static Map<String, List<RegistryServiceConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RegistryServiceConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegistryServiceConfig.listFromJson(
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
