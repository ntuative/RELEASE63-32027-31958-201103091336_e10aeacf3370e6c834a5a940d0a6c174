package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_584:int = 0;
      
      public static const const_179:int = 1;
      
      public static const const_123:int = 2;
      
      public static const const_843:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1797:String;
      
      private var var_2060:int;
      
      private var var_1456:int;
      
      private var var_2345:int;
      
      private var var_2399:int;
      
      private var var_808:Array;
      
      private var var_2342:Array;
      
      private var var_2398:int;
      
      private var var_2200:Boolean;
      
      private var var_2343:Boolean;
      
      private var var_2344:Boolean;
      
      private var var_2346:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2200;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2200 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2343;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2343 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2344;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2344 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2346;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2346 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1797;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1797 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2060;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2060 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1456;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1456 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2345;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2345 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2399;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2399 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_808;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_808 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2342;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2342 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2398;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2398 = param1;
      }
   }
}
