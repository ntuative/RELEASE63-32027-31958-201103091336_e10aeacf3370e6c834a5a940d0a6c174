package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2583:int;
      
      private var var_2587:int;
      
      private var var_732:Boolean;
      
      private var var_2586:int;
      
      private var var_2584:int;
      
      private var var_2585:int;
      
      private var var_2582:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2583 = param1.readInteger();
         this.var_2587 = param1.readInteger();
         this.var_732 = param1.readBoolean();
         this.var_2586 = param1.readInteger();
         this.var_2584 = param1.readInteger();
         this.var_2585 = param1.readInteger();
         this.var_2582 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2583;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2587;
      }
      
      public function get online() : Boolean
      {
         return this.var_732;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2586;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2584;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2585;
      }
      
      public function get banCount() : int
      {
         return this.var_2582;
      }
   }
}
