/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

library purity.massive.source;

@MirrorsUsed(targets: const[
  MassiveApp
  ], override: '*')
import 'dart:mirrors';
import 'dart:math';
import 'package:purity/purity.dart';
import 'package:purity_memory_profile_test/interface.dart';

part 'src/source/massive.dart';
part 'src/source/massive_app.dart';