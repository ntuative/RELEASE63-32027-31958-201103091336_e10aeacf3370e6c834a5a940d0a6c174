package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserFigureUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_165:String = "RWUTUE_USER_FIGURE";
       
      
      private var _userId:int;
      
      private var var_45:BitmapData;
      
      private var var_2057:Boolean;
      
      private var var_1762:String = "";
      
      private var var_2058:int;
      
      public function RoomWidgetUserFigureUpdateEvent(param1:int, param2:BitmapData, param3:Boolean, param4:String, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_165,param6,param7);
         this._userId = param1;
         this.var_45 = param2;
         this.var_2057 = param3;
         this.var_1762 = param4;
         this.var_2058 = param5;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function get isOwnUser() : Boolean
      {
         return this.var_2057;
      }
      
      public function get customInfo() : String
      {
         return this.var_1762;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2058;
      }
   }
}
