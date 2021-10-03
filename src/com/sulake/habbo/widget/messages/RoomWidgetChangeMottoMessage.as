package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_679:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1617:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_679);
         this.var_1617 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1617;
      }
   }
}
