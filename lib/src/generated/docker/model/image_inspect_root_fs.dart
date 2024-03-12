//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ImageInspectRootFS {
  /// Returns a new [ImageInspectRootFS] instance.
  ImageInspectRootFS({
    required this.type,
    this.layers = const [],
  });

  String type;

  List<String> layers;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageInspectRootFS &&
          other.type == type &&
          _deepEquality.equals(other.layers, layers);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (type.hashCode) + (layers.hashCode);

  @override
  String toString() => 'ImageInspectRootFS[type=$type, layers=$layers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Type'] = this.type;
    json[r'Layers'] = this.layers;
    return json;
  }

  /// Returns a new [ImageInspectRootFS] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageInspectRootFS? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImageInspectRootFS[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageInspectRootFS[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageInspectRootFS(
        type: mapValueOfType<String>(json, r'Type')!,
        layers: json[r'Layers'] is Iterable
            ? (json[r'Layers'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ImageInspectRootFS> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageInspectRootFS>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageInspectRootFS.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageInspectRootFS> mapFromJson(dynamic json) {
    final map = <String, ImageInspectRootFS>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageInspectRootFS.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageInspectRootFS-objects as value to a dart map
  static Map<String, List<ImageInspectRootFS>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageInspectRootFS>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageInspectRootFS.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Type',
  };
}
