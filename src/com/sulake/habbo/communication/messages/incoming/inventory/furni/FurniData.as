package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2402:int;
      
      private var var_1474:String;
      
      private var _objId:int;
      
      private var var_1877:int;
      
      private var _category:int;
      
      private var var_2013:String;
      
      private var var_2761:Boolean;
      
      private var var_2759:Boolean;
      
      private var var_2760:Boolean;
      
      private var var_2621:Boolean;
      
      private var var_2625:int;
      
      private var var_1332:int;
      
      private var var_1960:String = "";
      
      private var var_2004:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2402 = param1;
         this.var_1474 = param2;
         this._objId = param3;
         this.var_1877 = param4;
         this._category = param5;
         this.var_2013 = param6;
         this.var_2761 = param7;
         this.var_2759 = param8;
         this.var_2760 = param9;
         this.var_2621 = param10;
         this.var_2625 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1960 = param1;
         this.var_1332 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2402;
      }
      
      public function get itemType() : String
      {
         return this.var_1474;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1877;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2013;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2761;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2759;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2760;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2621;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2625;
      }
      
      public function get slotId() : String
      {
         return this.var_1960;
      }
      
      public function get songId() : int
      {
         return this.var_2004;
      }
      
      public function get extra() : int
      {
         return this.var_1332;
      }
   }
}
