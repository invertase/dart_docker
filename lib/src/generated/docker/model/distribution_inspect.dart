//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class DistributionInspect {
  /// Returns a new [DistributionInspect] instance.
  DistributionInspect({
    required this.descriptor,
    this.platforms = const [],
  });

  OCIDescriptor descriptor;

  /// An array containing all platforms supported by the image.
  List<OCIPlatform> platforms;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DistributionInspect &&
          other.descriptor == descriptor &&
          _deepEquality.equals(other.platforms, platforms);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (descriptor.hashCode) + (platforms.hashCode);

  @override
  String toString() =>
      'DistributionInspect[descriptor=$descriptor, platforms=$platforms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Descriptor'] = this.descriptor;
    json[r'Platforms'] = this.platforms;
    return json;
  }

  /// Returns a new [DistributionInspect] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DistributionInspect? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "DistributionInspect[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "DistributionInspect[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DistributionInspect(
        descriptor: OCIDescriptor.fromJson(json[r'Descriptor'])!,
        platforms: OCIPlatform.listFromJson(json[r'Platforms']),
      );
    }
    return null;
  }

  static List<DistributionInspect> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <DistributionInspect>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DistributionInspect.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DistributionInspect> mapFromJson(dynamic json) {
    final map = <String, DistributionInspect>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DistributionInspect.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DistributionInspect-objects as value to a dart map
  static Map<String, List<DistributionInspect>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<DistributionInspect>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DistributionInspect.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Descriptor',
    'Platforms',
  };
}
