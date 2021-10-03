package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_111:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_141:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1133:int = 2;
      
      public static const const_1096:int = 3;
      
      public static const const_1487:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1617:String = "";
      
      private var var_2058:int;
      
      private var var_2255:int = 0;
      
      private var var_2258:int = 0;
      
      private var _figure:String = "";
      
      private var var_45:BitmapData = null;
      
      private var var_242:Array;
      
      private var var_1674:Array;
      
      private var var_1420:int = 0;
      
      private var var_2320:String = "";
      
      private var var_2319:int = 0;
      
      private var var_2321:int = 0;
      
      private var var_1642:Boolean = false;
      
      private var var_1616:String = "";
      
      private var var_2359:Boolean = false;
      
      private var var_2361:Boolean = true;
      
      private var var_1185:int = 0;
      
      private var var_2364:Boolean = false;
      
      private var var_2363:Boolean = false;
      
      private var var_2366:Boolean = false;
      
      private var var_2365:Boolean = false;
      
      private var var_2362:Boolean = false;
      
      private var var_2360:Boolean = false;
      
      private var var_2358:int = 0;
      
      private var var_1641:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_242 = [];
         this.var_1674 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1617 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1617;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2058 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2058;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2255 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2255;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2258 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2258;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_45 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_242 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_242;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1674;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1674 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1420 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1420;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2320 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2320;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2359 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2359;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1185 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1185;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2364 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2364;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2363 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2363;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2366 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2366;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2365;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2362 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2362;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2360 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2360;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2358 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2358;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2361 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2361;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1641 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1641;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2319 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2319;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2321 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2321;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1642 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1642;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1616 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1616;
      }
   }
}
