package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_255:String = "ROE_MOUSE_CLICK";
      
      public static const const_1907:String = "ROE_MOUSE_ENTER";
      
      public static const const_503:String = "ROE_MOUSE_MOVE";
      
      public static const const_1850:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1746:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_531:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1559:String = "";
      
      private var var_2134:Boolean;
      
      private var var_2133:Boolean;
      
      private var var_2129:Boolean;
      
      private var var_2130:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1559 = param2;
         this.var_2134 = param5;
         this.var_2133 = param6;
         this.var_2129 = param7;
         this.var_2130 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1559;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2134;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2133;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2129;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2130;
      }
   }
}
