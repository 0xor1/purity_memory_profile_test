/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

library purity.massive.view;

import 'dart:html';
import 'package:purity/purity.dart';

class MassiveView extends Consumer{
  
  final DivElement html = new DivElement()
  ..style.width = '50px'
  ..style.height = '50px'
  ..style.border = '1px solid black';  
  
  MassiveView(massive):super(massive){
    html.onClick.listen((_){
      html.parent.children.remove(html);
      dispose();
    });
  }
}