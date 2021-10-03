package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_142:Number = 0;
      
      private var var_143:Number = 0;
      
      private var var_268:int = 0;
      
      private var var_496:int = 0;
      
      private var var_614:int = 0;
      
      private var _type:int = 0;
      
      private var var_2846:String = "";
      
      private var var_1332:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2625:int = 0;
      
      private var var_2624:String = null;
      
      private var var_172:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_172 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_172)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_142;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_172)
         {
            this.var_142 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_143;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_172)
         {
            this.var_143 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_268;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_268 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_496;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_496 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_614;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_614 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_172)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_172)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_172)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2624;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_172)
         {
            this.var_2624 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1332;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_1332 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2625;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_2625 = param1;
         }
      }
   }
}
