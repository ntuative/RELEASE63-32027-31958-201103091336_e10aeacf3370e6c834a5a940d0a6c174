package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrameData
   {
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_142:int = 0;
      
      private var var_2496:int = 0;
      
      private var var_2495:int = 0;
      
      private var var_2473:int = 1;
      
      public function AnimationFrameData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_142 = param3;
         this.var_2496 = param4;
         this.var_2495 = param5;
         this.var_2473 = param6;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_142;
      }
      
      public function get randomX() : int
      {
         return this.var_2496;
      }
      
      public function get randomY() : int
      {
         return this.var_2495;
      }
      
      public function get repeats() : int
      {
         return this.var_2473;
      }
   }
}
