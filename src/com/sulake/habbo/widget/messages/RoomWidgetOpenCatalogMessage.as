package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_396:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1221:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1056:String = "RWOCM_PIXELS";
      
      public static const const_1061:String = "RWOCM_CREDITS";
       
      
      private var var_2637:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_396);
         this.var_2637 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2637;
      }
   }
}
