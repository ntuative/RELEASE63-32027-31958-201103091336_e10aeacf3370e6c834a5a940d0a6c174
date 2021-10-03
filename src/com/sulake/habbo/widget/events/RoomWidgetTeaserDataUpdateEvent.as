package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_569:String = "RWTDUE_TEASER_DATA";
      
      public static const const_810:String = "RWTDUE_GIFT_DATA";
      
      public static const const_709:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_367:int;
      
      private var _data:String;
      
      private var var_385:int;
      
      private var var_181:String;
      
      private var var_2327:String;
      
      private var var_2400:Boolean;
      
      private var var_1435:int = 0;
      
      private var var_2677:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_367;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_385;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2327;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2400;
      }
      
      public function get method_3() : String
      {
         return this.var_2677;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1435;
      }
      
      public function set status(param1:int) : void
      {
         this.var_385 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2327 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2400 = param1;
      }
      
      public function set method_3(param1:String) : void
      {
         this.var_2677 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_367 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_181;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_181 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1435 = param1;
      }
   }
}
