package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2249:int;
      
      private var var_2251:int;
      
      private var var_2252:int;
      
      private var var_2250:String;
      
      private var var_1525:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2249 = param1.readInteger();
         this.var_2251 = param1.readInteger();
         this.var_2252 = param1.readInteger();
         this.var_2250 = param1.readString();
         this.var_1525 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2249;
      }
      
      public function get minute() : int
      {
         return this.var_2251;
      }
      
      public function get chatterId() : int
      {
         return this.var_2252;
      }
      
      public function get chatterName() : String
      {
         return this.var_2250;
      }
      
      public function get msg() : String
      {
         return this.var_1525;
      }
   }
}
