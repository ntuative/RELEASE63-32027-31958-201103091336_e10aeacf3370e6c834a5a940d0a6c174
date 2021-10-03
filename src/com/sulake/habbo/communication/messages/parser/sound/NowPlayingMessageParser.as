package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1532:int;
      
      private var var_1533:int;
      
      private var var_1534:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get current() : int
      {
         return this.var_1532;
      }
      
      public function get next() : int
      {
         return this.var_1533;
      }
      
      public function get syncCount() : int
      {
         return this.var_1534;
      }
      
      public function flush() : Boolean
      {
         this.var_1532 = -1;
         this.var_1533 = -1;
         this.var_1534 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1532 = param1.readInteger();
         this.var_1533 = param1.readInteger();
         this.var_1534 = param1.readInteger();
         return true;
      }
   }
}
