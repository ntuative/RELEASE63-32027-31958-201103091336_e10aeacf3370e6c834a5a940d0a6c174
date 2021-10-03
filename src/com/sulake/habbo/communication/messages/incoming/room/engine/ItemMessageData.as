package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2524:Boolean = false;
      
      private var var_2526:int = 0;
      
      private var var_2525:int = 0;
      
      private var var_2127:int = 0;
      
      private var var_2132:int = 0;
      
      private var var_142:Number = 0;
      
      private var var_143:Number = 0;
      
      private var var_268:String = "";
      
      private var _type:int = 0;
      
      private var var_2846:String = "";
      
      private var var_1332:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_172:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2524 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_172 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2524;
      }
      
      public function get wallX() : Number
      {
         return this.var_2526;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_172)
         {
            this.var_2526 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2525;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_172)
         {
            this.var_2525 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2127;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_172)
         {
            this.var_2127 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2132;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_172)
         {
            this.var_2132 = param1;
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
      
      public function get dir() : String
      {
         return this.var_268;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_172)
         {
            this.var_268 = param1;
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
   }
}
