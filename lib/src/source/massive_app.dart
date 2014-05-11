/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

part of purity.massive.source;

class MassiveApp extends Source implements IMassiveApp {
  final List<Massive> _massives = new List<Massive>();

  MassiveApp(){
    registerPurityMassiveTranTypes();
  }

  void createAMassiveObject() {
    var massive = new Massive();
    _massives.add(massive);
    emitEvent(
      new MassiveObjectCreatedEvent()
      ..massive = massive);
  }

  void deleteAMassiveObject() {
    if(_massives.isNotEmpty){
      emitEvent(
        new MassiveObjectDeletedEvent()
        ..massive = _massives.removeLast());
    }
  }
}
