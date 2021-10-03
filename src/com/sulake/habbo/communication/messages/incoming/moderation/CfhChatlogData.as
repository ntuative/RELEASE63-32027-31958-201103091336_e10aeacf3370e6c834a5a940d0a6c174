package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1944:int;
      
      private var var_2725:int;
      
      private var var_1314:int;
      
      private var var_2368:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1944 = param1.readInteger();
         this.var_2725 = param1.readInteger();
         this.var_1314 = param1.readInteger();
         this.var_2368 = param1.readInteger();
         this.var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1944);
      }
      
      public function get callId() : int
      {
         return this.var_1944;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2725;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1314;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2368;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_111;
      }
   }
}
