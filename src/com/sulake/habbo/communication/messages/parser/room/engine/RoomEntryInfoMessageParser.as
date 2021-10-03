package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1728:Boolean;
      
      private var var_2417:int;
      
      private var var_394:Boolean;
      
      private var var_1109:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1728;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2417;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1109;
      }
      
      public function get owner() : Boolean
      {
         return this.var_394;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1109 != null)
         {
            this.var_1109.dispose();
            this.var_1109 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1728 = param1.readBoolean();
         if(this.var_1728)
         {
            this.var_2417 = param1.readInteger();
            this.var_394 = param1.readBoolean();
         }
         else
         {
            this.var_1109 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
