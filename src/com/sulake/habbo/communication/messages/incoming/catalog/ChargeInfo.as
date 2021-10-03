package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2434:int;
      
      private var var_2707:int;
      
      private var var_1154:int;
      
      private var var_1153:int;
      
      private var var_1601:int;
      
      private var var_2708:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2434 = param1.readInteger();
         this.var_2707 = param1.readInteger();
         this.var_1154 = param1.readInteger();
         this.var_1153 = param1.readInteger();
         this.var_1601 = param1.readInteger();
         this.var_2708 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2434;
      }
      
      public function get charges() : int
      {
         return this.var_2707;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1154;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1153;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2708;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1601;
      }
   }
}
