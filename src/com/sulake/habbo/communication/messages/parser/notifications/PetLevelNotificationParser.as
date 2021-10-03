package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1824:int;
      
      private var var_2253:String;
      
      private var var_1283:int;
      
      private var var_1132:int;
      
      private var var_1664:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1824 = param1.readInteger();
         this.var_2253 = param1.readString();
         this.var_1283 = param1.readInteger();
         this.var_1132 = param1.readInteger();
         this.var_1664 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1824;
      }
      
      public function get petName() : String
      {
         return this.var_2253;
      }
      
      public function get level() : int
      {
         return this.var_1283;
      }
      
      public function get petType() : int
      {
         return this.var_1132;
      }
      
      public function get breed() : int
      {
         return this.var_1664;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
