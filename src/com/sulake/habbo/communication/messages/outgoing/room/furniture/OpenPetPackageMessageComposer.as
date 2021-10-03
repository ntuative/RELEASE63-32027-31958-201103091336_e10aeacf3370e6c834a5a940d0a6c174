package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_367:int;
      
      private var var_2253:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_367 = param1;
         this.var_2253 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_367,this.var_2253];
      }
      
      public function dispose() : void
      {
      }
   }
}
