/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

library purity.massive;

import 'dart:math';
import 'package:purity/purity.dart';

class Massive extends Source{
  final List<double> _memoryUser = new List<double>();
  Massive(){
    var rand = new Random();
    for(var i = 0; i < 10000000; i++){
      _memoryUser.add(rand.nextDouble());
    }
  }
}