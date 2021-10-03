package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_449:int = -1;
      
      public static const const_1089:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_142:int = 0;
      
      private var var_2473:int = 1;
      
      private var var_907:int = 1;
      
      private var var_1756:int = 1;
      
      private var var_2474:int = -1;
      
      private var var_2475:int = 0;
      
      private var var_2472:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_142 = param3;
         this.var_2472 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2473 = param4;
         if(param5 < 0)
         {
            param5 = const_449;
         }
         this.var_907 = param5;
         this.var_1756 = param5;
         if(param7 >= 0)
         {
            this.var_2474 = param7;
            this.var_2475 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_142;
      }
      
      public function get repeats() : int
      {
         return this.var_2473;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_907;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2472;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_907 < 0)
         {
            return const_449;
         }
         return this.var_1756;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_907 > 0 && param1 > this.var_907)
         {
            param1 = this.var_907;
         }
         this.var_1756 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2474;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2475;
      }
   }
}
