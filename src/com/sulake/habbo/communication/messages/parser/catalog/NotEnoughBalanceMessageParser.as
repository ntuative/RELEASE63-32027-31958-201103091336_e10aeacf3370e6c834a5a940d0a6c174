package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1838:int = 0;
      
      private var var_1839:int = 0;
      
      private var var_1601:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1838;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1839;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1601;
      }
      
      public function flush() : Boolean
      {
         this.var_1838 = 0;
         this.var_1839 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1838 = param1.readInteger();
         this.var_1839 = param1.readInteger();
         this.var_1601 = param1.readInteger();
         return true;
      }
   }
}
