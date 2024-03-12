# Dart Docker

A Docker API Client that connects via docker socket (`/var/run/docker.sock`). The minimum supported docker API is 1.44.

```dart
import 'package:dart_docker/dart_docker.dart' as docker;

void main() async {
  final api = docker.DockerSocketClient();
  final images = await api.image.imageList();
  print(images);
  await api.container.containerCreate(docker.ContainerCreateRequest(
    image: 'dart:latest',
    cmd: ['echo', 'hello'],
  ));
}
```

## Supported APIs

> Note: APIS that function as streams such as container attach are not currently functional.

- `ImageApi`
- `ConfigApi`
- `ContainerApi`
- `DistributionApi`
- `ExecApi`
- `NetworkApi`
- `NodeApi`
- `PluginApi`
- `SecretApi`
- `ServiceApi`
- `SessionApi`
- `SwarmApi`
- `SystemApi`
- `TaskApi`
- `VolumeApi`

## License

- See [LICENSE](/LICENSE)

---

<p align="center">
  <a href="https://invertase.io/?utm_source=readme&utm_medium=footer&utm_campaign=dart_docker">
    <img width="75px" src="https://static.invertase.io/assets/invertase/invertase-rounded-avatar.png">
  </a>
  <p align="center">
    Built and maintained with 💛 by <a href="https://invertase.io/?utm_source=readme&utm_medium=footer&utm_campaign=dart_docker">Invertase</a>.
  </p>
    <p align="center">
    &nbsp;&nbsp;<a href="https://twitter.com/invertaseio"><img src="https://img.shields.io/twitter/follow/invertaseio.svg?style=flat-square&colorA=1da1f2&colorB=&label=Follow%20on%20Twitter" alt="Follow on Twitter"></a>
  </p>
</p>
