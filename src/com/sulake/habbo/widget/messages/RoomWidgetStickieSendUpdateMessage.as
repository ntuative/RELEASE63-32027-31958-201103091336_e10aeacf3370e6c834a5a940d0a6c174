package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_583:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_834:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_367:int;
      
      private var _text:String;
      
      private var var_830:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         this.var_367 = param2;
         this._text = param3;
         this.var_830 = param4;
      }
      
      public function get objectId() : int
      {
         return this.var_367;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get colorHex() : String
      {
         return this.var_830;
      }
   }
}
