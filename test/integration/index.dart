/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

library purity.memory.profile;

import 'dart:html';
import 'dart:async';
import 'package:purity/local.dart';
import 'package:purity/client.dart' as client;
import 'package:purity_memory_profile_test/source.dart' as src;
import 'package:purity_memory_profile_test/consumer.dart' as con;

void main(){

  var host = new Host(
    (_) => new Future.delayed(new Duration(), () => new src.MassiveApp()),
    (_) => new Future.delayed(new Duration(), (){}),
    5);

  var hostView = new client.LocalHostView(host);

  initConsumerSettings(
    (massiveApp, proxyEndPoint){
      var view = new con.MassiveApp(massiveApp);
      hostView.addNewClientView(proxyEndPoint, view.html);
    },
    (){});

  document.body.append(hostView.html);
}