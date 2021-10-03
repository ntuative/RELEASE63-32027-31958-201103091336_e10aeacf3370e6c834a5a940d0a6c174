package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2188:int;
      
      private var var_2013:String;
      
      private var var_1599:int;
      
      private var var_385:int;
      
      private var var_2187:int = -1;
      
      private var var_2180:int;
      
      private var var_1600:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2188 = param3;
         this.var_2013 = param4;
         this.var_1599 = param5;
         this.var_385 = param6;
         this.var_2187 = param7;
         this.var_2180 = param8;
         this.var_1600 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2188;
      }
      
      public function get stuffData() : String
      {
         return this.var_2013;
      }
      
      public function get price() : int
      {
         return this.var_1599;
      }
      
      public function get status() : int
      {
         return this.var_385;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2187;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2180;
      }
      
      public function get offerCount() : int
      {
         return this.var_1600;
      }
   }
}
