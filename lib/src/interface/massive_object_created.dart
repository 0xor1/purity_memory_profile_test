/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

part of purity.massive.interface;

class MassiveObjectCreated extends Transmittable implements IMassiveObjectCreatedOrDeleted{}
abstract class IMassiveObjectCreatedOrDeleted{
  IMassive massive;
}