package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class WelcomeGiftStatusParser implements IMessageParser
   {
       
      
      private var var_1034:String;
      
      private var var_1290:Boolean;
      
      private var var_2694:Boolean;
      
      private var _furniId:int;
      
      public function WelcomeGiftStatusParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1034 = param1.readString();
         this.var_1290 = param1.readBoolean();
         this.var_2694 = param1.readBoolean();
         this._furniId = param1.readInteger();
         return true;
      }
      
      public function get email() : String
      {
         return this.var_1034;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1290;
      }
      
      public function get allowChange() : Boolean
      {
         return this.var_2694;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
