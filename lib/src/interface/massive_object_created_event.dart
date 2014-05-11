/**
 * Author:  Daniel Robinson http://github.com/0xor1
 */

part of purity.massive.interface;

class MassiveObjectCreatedEvent extends Event implements IMassiveObjectCreatedOrDeletedEvent{}
abstract class IMassiveObjectCreatedOrDeletedEvent{
  IMassive massive;
}