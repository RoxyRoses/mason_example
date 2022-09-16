import 'dart:io';

import 'package:mason/mason.dart';

Future<void> main() async {
  final brickDatasource = Brick.git(
    const GitPath(
      'https://github.com/roxyroses/brick_module.git',
      path: 'datasource',
    ),
  );
  final generator = await MasonGenerator.fromBrick(brickDatasource);
  final target = DirectoryGeneratorTarget(Directory.current);
  await generator.generate(target, vars: <String, dynamic>{'name': 'Dash'});
}