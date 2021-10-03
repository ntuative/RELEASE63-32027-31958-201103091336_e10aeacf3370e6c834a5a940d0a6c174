package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1839:int = 1;
      
      public static const const_1884:int = 2;
      
      public static const const_1772:int = 3;
      
      public static const const_1788:int = 4;
      
      public static const const_1608:int = 5;
      
      public static const const_1824:int = 6;
      
      public static const const_1517:int = 7;
      
      public static const const_1481:int = 8;
      
      public static const const_1874:int = 9;
      
      public static const const_1590:int = 10;
      
      public static const const_1666:int = 11;
      
      public static const const_1672:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1675:int;
      
      private var var_1327:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1675 = param1.readInteger();
         this.var_1327 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1675;
      }
      
      public function get info() : String
      {
         return this.var_1327;
      }
   }
}
