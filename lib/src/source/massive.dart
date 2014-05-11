/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

part of purity.massive.source;

class Massive extends Source implements IMassive {

  final List<double> _memoryUser = new List<double>();

  Massive() {
    var rand = new Random();
    for (var i = 0; i < 100000; i++) {
      _memoryUser.add(rand.nextDouble());
    }
  }

}
