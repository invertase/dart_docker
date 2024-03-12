//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of docker.api;

class ExecConfig {
  /// Returns a new [ExecConfig] instance.
  ExecConfig({
    this.attachStdin,
    this.attachStdout,
    this.attachStderr,
    this.consoleSize = const [],
    this.detachKeys,
    this.tty,
    this.env = const [],
    this.cmd = const [],
    this.privileged = false,
    this.user,
    this.workingDir,
  });

  /// Attach to `stdin` of the exec command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? attachStdin;

  /// Attach to `stdout` of the exec command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? attachStdout;

  /// Attach to `stderr` of the exec command.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? attachStderr;

  /// Initial console size, as an `[height, width]` array.
  List<int>? consoleSize;

  /// Override the key sequence for detaching a container. Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? detachKeys;

  /// Allocate a pseudo-TTY.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? tty;

  /// A list of environment variables in the form `[\"VAR=value\", ...]`.
  List<String> env;

  /// Command to run, as a string or array of strings.
  List<String> cmd;

  /// Runs the exec process with extended privileges.
  bool privileged;

  /// The user, and optionally, group to run the exec process inside the container. Format is one of: `user`, `user:group`, `uid`, or `uid:gid`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  /// The working directory for the exec process inside the container.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workingDir;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExecConfig &&
          other.attachStdin == attachStdin &&
          other.attachStdout == attachStdout &&
          other.attachStderr == attachStderr &&
          _deepEquality.equals(other.consoleSize, consoleSize) &&
          other.detachKeys == detachKeys &&
          other.tty == tty &&
          _deepEquality.equals(other.env, env) &&
          _deepEquality.equals(other.cmd, cmd) &&
          other.privileged == privileged &&
          other.user == user &&
          other.workingDir == workingDir;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (attachStdin == null ? 0 : attachStdin!.hashCode) +
      (attachStdout == null ? 0 : attachStdout!.hashCode) +
      (attachStderr == null ? 0 : attachStderr!.hashCode) +
      (consoleSize == null ? 0 : consoleSize!.hashCode) +
      (detachKeys == null ? 0 : detachKeys!.hashCode) +
      (tty == null ? 0 : tty!.hashCode) +
      (env.hashCode) +
      (cmd.hashCode) +
      (privileged.hashCode) +
      (user == null ? 0 : user!.hashCode) +
      (workingDir == null ? 0 : workingDir!.hashCode);

  @override
  String toString() =>
      'ExecConfig[attachStdin=$attachStdin, attachStdout=$attachStdout, attachStderr=$attachStderr, consoleSize=$consoleSize, detachKeys=$detachKeys, tty=$tty, env=$env, cmd=$cmd, privileged=$privileged, user=$user, workingDir=$workingDir]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attachStdin != null) {
      json[r'AttachStdin'] = this.attachStdin;
    } else {
      json[r'AttachStdin'] = null;
    }
    if (this.attachStdout != null) {
      json[r'AttachStdout'] = this.attachStdout;
    } else {
      json[r'AttachStdout'] = null;
    }
    if (this.attachStderr != null) {
      json[r'AttachStderr'] = this.attachStderr;
    } else {
      json[r'AttachStderr'] = null;
    }
    if (this.consoleSize != null) {
      json[r'ConsoleSize'] = this.consoleSize;
    } else {
      json[r'ConsoleSize'] = null;
    }
    if (this.detachKeys != null) {
      json[r'DetachKeys'] = this.detachKeys;
    } else {
      json[r'DetachKeys'] = null;
    }
    if (this.tty != null) {
      json[r'Tty'] = this.tty;
    } else {
      json[r'Tty'] = null;
    }
    json[r'Env'] = this.env;
    json[r'Cmd'] = this.cmd;
    json[r'Privileged'] = this.privileged;
    if (this.user != null) {
      json[r'User'] = this.user;
    } else {
      json[r'User'] = null;
    }
    if (this.workingDir != null) {
      json[r'WorkingDir'] = this.workingDir;
    } else {
      json[r'WorkingDir'] = null;
    }
    return json;
  }

  /// Returns a new [ExecConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ExecConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ExecConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecConfig(
        attachStdin: mapValueOfType<bool>(json, r'AttachStdin'),
        attachStdout: mapValueOfType<bool>(json, r'AttachStdout'),
        attachStderr: mapValueOfType<bool>(json, r'AttachStderr'),
        consoleSize: json[r'ConsoleSize'] is Iterable
            ? (json[r'ConsoleSize'] as Iterable)
                .cast<int>()
                .toList(growable: false)
            : const [],
        detachKeys: mapValueOfType<String>(json, r'DetachKeys'),
        tty: mapValueOfType<bool>(json, r'Tty'),
        env: json[r'Env'] is Iterable
            ? (json[r'Env'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cmd: json[r'Cmd'] is Iterable
            ? (json[r'Cmd'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        privileged: mapValueOfType<bool>(json, r'Privileged') ?? false,
        user: mapValueOfType<String>(json, r'User'),
        workingDir: mapValueOfType<String>(json, r'WorkingDir'),
      );
    }
    return null;
  }

  static List<ExecConfig> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ExecConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecConfig> mapFromJson(dynamic json) {
    final map = <String, ExecConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecConfig-objects as value to a dart map
  static Map<String, List<ExecConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ExecConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecConfig.listFromJson(
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
