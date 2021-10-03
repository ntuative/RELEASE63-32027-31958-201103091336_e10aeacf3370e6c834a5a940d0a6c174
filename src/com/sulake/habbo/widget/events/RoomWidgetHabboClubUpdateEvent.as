package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_253:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2052:int = 0;
      
      private var var_2055:int = 0;
      
      private var var_2053:int = 0;
      
      private var var_2054:Boolean = false;
      
      private var var_2056:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_253,param6,param7);
         this.var_2052 = param1;
         this.var_2055 = param2;
         this.var_2053 = param3;
         this.var_2054 = param4;
         this.var_2056 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2052;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2055;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2053;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2054;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2056;
      }
   }
}
