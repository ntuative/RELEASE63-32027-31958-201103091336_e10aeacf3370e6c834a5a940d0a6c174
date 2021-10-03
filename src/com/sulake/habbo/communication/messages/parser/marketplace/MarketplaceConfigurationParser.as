package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1501:Boolean;
      
      private var var_2228:int;
      
      private var var_1631:int;
      
      private var var_1632:int;
      
      private var var_2227:int;
      
      private var var_2225:int;
      
      private var var_2226:int;
      
      private var var_2224:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1501;
      }
      
      public function get commission() : int
      {
         return this.var_2228;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1631;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1632;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2225;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2227;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2226;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2224;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1501 = param1.readBoolean();
         this.var_2228 = param1.readInteger();
         this.var_1631 = param1.readInteger();
         this.var_1632 = param1.readInteger();
         this.var_2225 = param1.readInteger();
         this.var_2227 = param1.readInteger();
         this.var_2226 = param1.readInteger();
         this.var_2224 = param1.readInteger();
         return true;
      }
   }
}
