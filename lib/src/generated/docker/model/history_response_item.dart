//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class HistoryResponseItem {
  /// Returns a new [HistoryResponseItem] instance.
  HistoryResponseItem({
    required this.id,
    required this.created,
    required this.createdBy,
    this.tags = const [],
    required this.size,
    required this.comment,
  });

  String id;

  int created;

  String createdBy;

  List<String> tags;

  int size;

  String comment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HistoryResponseItem &&
          other.id == id &&
          other.created == created &&
          other.createdBy == createdBy &&
          _deepEquality.equals(other.tags, tags) &&
          other.size == size &&
          other.comment == comment;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (created.hashCode) +
      (createdBy.hashCode) +
      (tags.hashCode) +
      (size.hashCode) +
      (comment.hashCode);

  @override
  String toString() =>
      'HistoryResponseItem[id=$id, created=$created, createdBy=$createdBy, tags=$tags, size=$size, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'Id'] = this.id;
    json[r'Created'] = this.created;
    json[r'CreatedBy'] = this.createdBy;
    json[r'Tags'] = this.tags;
    json[r'Size'] = this.size;
    json[r'Comment'] = this.comment;
    return json;
  }

  /// Returns a new [HistoryResponseItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoryResponseItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "HistoryResponseItem[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "HistoryResponseItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoryResponseItem(
        id: mapValueOfType<String>(json, r'Id')!,
        created: mapValueOfType<int>(json, r'Created')!,
        createdBy: mapValueOfType<String>(json, r'CreatedBy')!,
        tags: json[r'Tags'] is Iterable
            ? (json[r'Tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        size: mapValueOfType<int>(json, r'Size')!,
        comment: mapValueOfType<String>(json, r'Comment')!,
      );
    }
    return null;
  }

  static List<HistoryResponseItem> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <HistoryResponseItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoryResponseItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoryResponseItem> mapFromJson(dynamic json) {
    final map = <String, HistoryResponseItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoryResponseItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoryResponseItem-objects as value to a dart map
  static Map<String, List<HistoryResponseItem>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<HistoryResponseItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoryResponseItem.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'Id',
    'Created',
    'CreatedBy',
    'Tags',
    'Size',
    'Comment',
  };
}
