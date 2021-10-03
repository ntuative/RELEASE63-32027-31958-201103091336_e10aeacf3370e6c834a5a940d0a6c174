package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionWelcomeGiftEvent extends RoomSessionEvent
   {
      
      public static const const_117:String = "rswge_welcome_gift_status";
       
      
      private var var_1034:String;
      
      private var var_1290:Boolean;
      
      private var var_2220:Boolean;
      
      private var _furniId:int;
      
      public function RoomSessionWelcomeGiftEvent(param1:IRoomSession, param2:String, param3:Boolean, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_117,param1,param6,param7);
         this.var_1034 = param2;
         this.var_1290 = param3;
         this.var_2220 = param4;
         this._furniId = param5;
      }
      
      public function get email() : String
      {
         return this.var_1034;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1290;
      }
      
      public function get allowEmailChange() : Boolean
      {
         return this.var_2220;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
