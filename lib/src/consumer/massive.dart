/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

part of purity.massive.consumer;

class Massive extends purity.Consumer{

  final AlignPanel view = new AlignPanel()..setSize('50px', '50px')
  ..style.background = '#6CD9CC'
  ..style.border = '1px solid black'
  ..style.margin = '5px'
  ..style.float = 'left';

  Massive(massive):super(massive);
}