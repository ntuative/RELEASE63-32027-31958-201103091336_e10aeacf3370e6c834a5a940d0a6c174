package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_652:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1034:String = "inventory_effects";
      
      public static const const_1032:String = "inventory_badges";
      
      public static const const_1622:String = "inventory_clothes";
      
      public static const const_1425:String = "inventory_furniture";
       
      
      private var var_2303:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_652);
         this.var_2303 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2303;
      }
   }
}
