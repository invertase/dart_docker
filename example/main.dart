import 'package:dart_docker/dart_docker.dart' as docker;

void main() async {
  final api = docker.DockerSocketClient();
  final images = await api.image.imageList();
  print(images);
  await api.container.containerCreate(docker.ContainerCreateRequest(
    image: 'dart-slim-stable:latest',
    cmd: ['echo', 'hello'],
  ));
}
