package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class ViralFurniStatusMessageComposer implements IMessageComposer
   {
       
      
      private var var_367:int;
      
      public function ViralFurniStatusMessageComposer(param1:int)
      {
         super();
         this.var_367 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_367];
      }
   }
}
