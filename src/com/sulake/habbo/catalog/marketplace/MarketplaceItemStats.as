package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2180:int;
      
      private var var_2178:int;
      
      private var var_2181:int;
      
      private var _dayOffsets:Array;
      
      private var var_1591:Array;
      
      private var var_1592:Array;
      
      private var var_2177:int;
      
      private var var_2179:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2180 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2178 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2181 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1591 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1592 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2177 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2179 = param1;
      }
   }
}
