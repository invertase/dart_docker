//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

/// Kind of change  Can be one of:  - `0`: Modified (\"C\") - `1`: Added (\"A\") - `2`: Deleted (\"D\")
class ChangeType {
  /// Instantiate a new enum with the provided [value].
  const ChangeType._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number0 = ChangeType._(0);
  static const number1 = ChangeType._(1);
  static const number2 = ChangeType._(2);

  /// List of all possible values in this [enum][ChangeType].
  static const values = <ChangeType>[
    number0,
    number1,
    number2,
  ];

  static ChangeType? fromJson(dynamic value) =>
      ChangeTypeTypeTransformer().decode(value);

  static List<ChangeType> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ChangeType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChangeType] to int,
/// and [decode] dynamic data back to [ChangeType].
class ChangeTypeTypeTransformer {
  factory ChangeTypeTypeTransformer() =>
      _instance ??= const ChangeTypeTypeTransformer._();

  const ChangeTypeTypeTransformer._();

  int encode(ChangeType data) => data.value;

  /// Decodes a [dynamic value][data] to a ChangeType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChangeType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 0:
          return ChangeType.number0;
        case 1:
          return ChangeType.number1;
        case 2:
          return ChangeType.number2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChangeTypeTypeTransformer] instance.
  static ChangeTypeTypeTransformer? _instance;
}
