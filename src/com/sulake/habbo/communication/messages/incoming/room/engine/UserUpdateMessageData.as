package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_142:Number = 0;
      
      private var var_143:Number = 0;
      
      private var var_2519:Number = 0;
      
      private var var_2520:Number = 0;
      
      private var var_2517:Number = 0;
      
      private var var_2516:Number = 0;
      
      private var var_268:int = 0;
      
      private var var_2206:int = 0;
      
      private var var_322:Array;
      
      private var var_2518:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_322 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_142 = param3;
         this.var_143 = param4;
         this.var_2519 = param5;
         this.var_268 = param6;
         this.var_2206 = param7;
         this.var_2520 = param8;
         this.var_2517 = param9;
         this.var_2516 = param10;
         this.var_2518 = param11;
         this.var_322 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_142;
      }
      
      public function get z() : Number
      {
         return this.var_143;
      }
      
      public function get localZ() : Number
      {
         return this.var_2519;
      }
      
      public function get targetX() : Number
      {
         return this.var_2520;
      }
      
      public function get targetY() : Number
      {
         return this.var_2517;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2516;
      }
      
      public function get dir() : int
      {
         return this.var_268;
      }
      
      public function get dirHead() : int
      {
         return this.var_2206;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2518;
      }
      
      public function get actions() : Array
      {
         return this.var_322.slice();
      }
   }
}
