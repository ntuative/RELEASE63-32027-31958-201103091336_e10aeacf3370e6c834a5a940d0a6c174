package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_802:int = 1;
      
      public static const const_708:int = 2;
      
      public static const const_757:int = 3;
      
      public static const const_1129:int = 4;
      
      public static const const_712:int = 5;
      
      public static const const_1011:int = 6;
       
      
      private var _type:int;
      
      private var var_1127:int;
      
      private var var_2476:String;
      
      private var var_2568:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1127 = param2;
         this.var_2476 = param3;
         this.var_2568 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2476;
      }
      
      public function get time() : String
      {
         return this.var_2568;
      }
      
      public function get senderId() : int
      {
         return this.var_1127;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
