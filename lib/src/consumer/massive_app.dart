/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

part of purity.massive.consumer;

class MassiveApp extends purity.Consumer {

  dynamic get massiveApp => source;

  final List<Massive> _massives = new List<Massive>();

  DivElement get html => _root.html;

  final StackPanel _root = new StackPanel(Orientation.VERTICAL)
  ..style.width = '100%'
  ..style.height = '100%';
  final StackPanel _buttons = new StackPanel(Orientation.HORIZONTAL)
  ..style.height = '30px';
  final Button _createBtn = new Button.text('Create A Massive Object')
  ..style.margin = '5px';
  final Button _deleteBtn = new Button.text('Delete A Massive Object')
  ..style.margin = '5px';
  final StackPanel _massiveContainerInner = new StackPanel(Orientation.HORIZONTAL)
  ..style.clear = 'none';

  MassiveApp(src) : super(src) {
    registerPurityMassiveTranTypes();
    _attachEventListeners();
    _initHtml();
  }

  void _initHtml(){
    _root
    ..add(
      _buttons
      ..add(_createBtn)
      ..add(_deleteBtn))
    ..add(
      _massiveContainerInner);
  }

  void _attachEventListeners(){
    listen(source, MassiveObjectCreated, (purity.Event<MassiveObjectCreated> event){
      _massives.add(new Massive(event.data.massive));
      _massiveContainerInner.add(_massives.last.view);
    });
    listen(source, MassiveObjectDeleted, (purity.Event<MassiveObjectDeleted> event){
      var massive = _massives.singleWhere((massive) => event.data.massive == massive.source);
      _massives.remove(massive);
      massive.dispose();
      _massiveContainerInner.remove(massive.view);
    });
    _createBtn.onClick.listen((_){
      massiveApp.createAMassiveObject();
    });
    _deleteBtn.onClick.listen((_){
      massiveApp.deleteAMassiveObject();
    });
  }

}
