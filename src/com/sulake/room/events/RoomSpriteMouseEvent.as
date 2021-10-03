package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1559:String = "";
      
      private var var_1834:String = "";
      
      private var var_2126:String = "";
      
      private var var_2128:Number = 0;
      
      private var var_2131:Number = 0;
      
      private var var_2127:Number = 0;
      
      private var var_2132:Number = 0;
      
      private var var_2133:Boolean = false;
      
      private var var_2134:Boolean = false;
      
      private var var_2129:Boolean = false;
      
      private var var_2130:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1559 = param2;
         this.var_1834 = param3;
         this.var_2126 = param4;
         this.var_2128 = param5;
         this.var_2131 = param6;
         this.var_2127 = param7;
         this.var_2132 = param8;
         this.var_2133 = param9;
         this.var_2134 = param10;
         this.var_2129 = param11;
         this.var_2130 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1559;
      }
      
      public function get canvasId() : String
      {
         return this.var_1834;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2126;
      }
      
      public function get screenX() : Number
      {
         return this.var_2128;
      }
      
      public function get screenY() : Number
      {
         return this.var_2131;
      }
      
      public function get localX() : Number
      {
         return this.var_2127;
      }
      
      public function get localY() : Number
      {
         return this.var_2132;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2133;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2134;
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
