//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ImageSearchResponseItem {
  /// Returns a new [ImageSearchResponseItem] instance.
  ImageSearchResponseItem({
    this.description,
    this.isOfficial,
    this.isAutomated,
    this.name,
    this.starCount,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isOfficial;

  /// Whether this repository has automated builds enabled.  <p><br /></p>  > **Deprecated**: This field is deprecated and will always > be \"false\" in future.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAutomated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? starCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageSearchResponseItem &&
          other.description == description &&
          other.isOfficial == isOfficial &&
          other.isAutomated == isAutomated &&
          other.name == name &&
          other.starCount == starCount;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (description == null ? 0 : description!.hashCode) +
      (isOfficial == null ? 0 : isOfficial!.hashCode) +
      (isAutomated == null ? 0 : isAutomated!.hashCode) +
      (name == null ? 0 : name!.hashCode) +
      (starCount == null ? 0 : starCount!.hashCode);

  @override
  String toString() =>
      'ImageSearchResponseItem[description=$description, isOfficial=$isOfficial, isAutomated=$isAutomated, name=$name, starCount=$starCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.isOfficial != null) {
      json[r'is_official'] = this.isOfficial;
    } else {
      json[r'is_official'] = null;
    }
    if (this.isAutomated != null) {
      json[r'is_automated'] = this.isAutomated;
    } else {
      json[r'is_automated'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.starCount != null) {
      json[r'star_count'] = this.starCount;
    } else {
      json[r'star_count'] = null;
    }
    return json;
  }

  /// Returns a new [ImageSearchResponseItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageSearchResponseItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ImageSearchResponseItem[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ImageSearchResponseItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageSearchResponseItem(
        description: mapValueOfType<String>(json, r'description'),
        isOfficial: mapValueOfType<bool>(json, r'is_official'),
        isAutomated: mapValueOfType<bool>(json, r'is_automated'),
        name: mapValueOfType<String>(json, r'name'),
        starCount: mapValueOfType<int>(json, r'star_count'),
      );
    }
    return null;
  }

  static List<ImageSearchResponseItem> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ImageSearchResponseItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageSearchResponseItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageSearchResponseItem> mapFromJson(dynamic json) {
    final map = <String, ImageSearchResponseItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageSearchResponseItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageSearchResponseItem-objects as value to a dart map
  static Map<String, List<ImageSearchResponseItem>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ImageSearchResponseItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageSearchResponseItem.listFromJson(
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
