package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1960:int;
      
      private var var_2616:String;
      
      private var var_994:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1960 = param1.readInteger();
         this.var_2616 = param1.readString();
         this.var_994 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1960;
      }
      
      public function get figureString() : String
      {
         return this.var_2616;
      }
      
      public function get gender() : String
      {
         return this.var_994;
      }
   }
}
