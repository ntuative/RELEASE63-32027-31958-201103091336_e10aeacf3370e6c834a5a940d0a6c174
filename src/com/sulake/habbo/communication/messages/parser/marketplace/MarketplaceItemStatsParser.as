package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2180:int;
      
      private var var_2178:int;
      
      private var var_2181:int;
      
      private var _dayOffsets:Array;
      
      private var var_1591:Array;
      
      private var var_1592:Array;
      
      private var var_2177:int;
      
      private var var_2179:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2180;
      }
      
      public function get offerCount() : int
      {
         return this.var_2178;
      }
      
      public function get historyLength() : int
      {
         return this.var_2181;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1591;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1592;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2177;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2179;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2180 = param1.readInteger();
         this.var_2178 = param1.readInteger();
         this.var_2181 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1591 = [];
         this.var_1592 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1591.push(param1.readInteger());
            this.var_1592.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2179 = param1.readInteger();
         this.var_2177 = param1.readInteger();
         return true;
      }
   }
}
