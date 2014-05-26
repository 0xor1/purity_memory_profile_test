/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

library purity.massive.interface;

@MirrorsUsed(targets: const[
    MassiveObjectCreated,
    MassiveObjectDeleted
  ], override: '*')
import 'dart:mirrors';
import 'package:purity/purity.dart';

part 'src/interface/massive_app.dart';
part 'src/interface/massive.dart';
part 'src/interface/massive_object_created.dart';
part 'src/interface/massive_object_deleted.dart';

bool _purityMassiveTranTypesRegistered = false;
void registerPurityMassiveTranTypes(){
  if(_purityMassiveTranTypesRegistered){return;}
  _purityMassiveTranTypesRegistered = true;
  registerTranTypes('purity.massive.interface','pmi',(){
    registerTranSubtype('a', MassiveObjectCreated, () => new MassiveObjectCreated());
    registerTranSubtype('b', MassiveObjectDeleted, () => new MassiveObjectDeleted());
  });
}