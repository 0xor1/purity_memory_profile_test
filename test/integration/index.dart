/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

library purity.memory.profile;

import 'dart:html';
import 'dart:async';
import 'package:purity/local.dart';
import 'package:purity/client.dart' as client;
import 'package:purity_memory_profile_test/massive.dart';
import 'package:purity_memory_profile_test/massive_view.dart';

void main(){
  
  var host = new Host(
    (_) => new Future.delayed(new Duration(), () => new Massive()),
    (_) => new Future.delayed(new Duration(), (){}),
    5);
  
  var hostView = new client.LocalHostView(host);
  
  initConsumerSettings(
    (massive, proxyEndPoint){
      var view = new MassiveView(massive);
      hostView.addNewClientView(proxyEndPoint, view.html);
    },
    (){});
  
  document.body.append(hostView.html);
}