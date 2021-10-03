package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_667:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2240:int;
      
      private var var_2239:int;
      
      private var _color:uint;
      
      private var var_1099:int;
      
      private var var_2241:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_667);
         this.var_2240 = param1;
         this.var_2239 = param2;
         this._color = param3;
         this.var_1099 = param4;
         this.var_2241 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2240;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2239;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1099;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2241;
      }
   }
}
