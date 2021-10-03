package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1283:int;
      
      private var var_284:String;
      
      private var var_2648:int;
      
      private var var_2114:int;
      
      private var var_1561:int;
      
      private var var_2647:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1283 = param1.readInteger();
         this.var_284 = param1.readString();
         this.var_2648 = param1.readInteger();
         this.var_2114 = param1.readInteger();
         this.var_1561 = param1.readInteger();
         this.var_2647 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_284;
      }
      
      public function get level() : int
      {
         return this.var_1283;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2648;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2114;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1561;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2647;
      }
   }
}
