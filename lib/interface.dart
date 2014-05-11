/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

library purity.massive.interface;

import 'package:purity/purity.dart';

part 'src/interface/massive_app.dart';
part 'src/interface/massive.dart';
part 'src/interface/massive_object_created_event.dart';
part 'src/interface/massive_object_deleted_event.dart';

bool _purityMassiveTranTypesRegistered = false;
void registerPurityMassiveTranTypes(){
  if(_purityMassiveTranTypesRegistered){return;}
  _purityMassiveTranTypesRegistered = true;
  registerTranTypes('purity.massive.interface','pmi',(){
    registerTranSubtype('a', MassiveObjectCreatedEvent);
    registerTranSubtype('b', MassiveObjectDeletedEvent);
  });
}