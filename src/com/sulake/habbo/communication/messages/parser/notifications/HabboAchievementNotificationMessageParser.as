package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1283:int;
      
      private var var_1558:int;
      
      private var var_2114:int;
      
      private var var_1561:int;
      
      private var var_1282:int;
      
      private var var_2299:String = "";
      
      private var var_2300:String = "";
      
      private var var_2301:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1283 = param1.readInteger();
         this.var_2299 = param1.readString();
         this.var_1558 = param1.readInteger();
         this.var_2114 = param1.readInteger();
         this.var_1561 = param1.readInteger();
         this.var_1282 = param1.readInteger();
         this.var_2301 = param1.readInteger();
         this.var_2300 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1283;
      }
      
      public function get points() : int
      {
         return this.var_1558;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2114;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1561;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1282;
      }
      
      public function get badgeID() : String
      {
         return this.var_2299;
      }
      
      public function get achievementID() : int
      {
         return this.var_2301;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2300;
      }
   }
}
