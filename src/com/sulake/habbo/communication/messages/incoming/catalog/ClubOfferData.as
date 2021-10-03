package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1668:String;
      
      private var var_1599:int;
      
      private var var_2311:Boolean;
      
      private var var_2314:Boolean;
      
      private var var_2315:int;
      
      private var var_2313:int;
      
      private var var_2312:int;
      
      private var var_2310:int;
      
      private var var_2309:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1668 = param1.readString();
         this.var_1599 = param1.readInteger();
         this.var_2311 = param1.readBoolean();
         this.var_2314 = param1.readBoolean();
         this.var_2315 = param1.readInteger();
         this.var_2313 = param1.readInteger();
         this.var_2312 = param1.readInteger();
         this.var_2310 = param1.readInteger();
         this.var_2309 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1668;
      }
      
      public function get price() : int
      {
         return this.var_1599;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2311;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2314;
      }
      
      public function get periods() : int
      {
         return this.var_2315;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2313;
      }
      
      public function get year() : int
      {
         return this.var_2312;
      }
      
      public function get month() : int
      {
         return this.var_2310;
      }
      
      public function get day() : int
      {
         return this.var_2309;
      }
   }
}
