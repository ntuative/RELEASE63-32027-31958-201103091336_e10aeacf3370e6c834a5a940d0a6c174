package com.sulake.habbo.widget.messages
{
   public class RoomWidgetConversionPointMessage extends RoomWidgetMessage
   {
      
      public static const const_650:String = "RWCPM_CONVERSION_POINT";
       
      
      private var _category:String;
      
      private var var_2326:String;
      
      private var _action:String;
      
      private var var_1332:String;
      
      public function RoomWidgetConversionPointMessage(param1:String, param2:String, param3:String, param4:String, param5:String = "")
      {
         super(param1);
         this._category = param2;
         this.var_2326 = param3;
         this._action = param4;
         this.var_1332 = param5;
         if(!this.var_1332)
         {
            this.var_1332 = "";
         }
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get pointType() : String
      {
         return this.var_2326;
      }
      
      public function get action() : String
      {
         return this._action;
      }
      
      public function get extra() : String
      {
         return this.var_1332;
      }
   }
}
