package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationStateData
   {
       
      
      private var var_1577:int = -1;
      
      private var var_2137:int = 0;
      
      private var var_1576:Boolean = false;
      
      private var var_616:int = 0;
      
      private var _frames:Array;
      
      private var var_833:Array;
      
      private var var_834:Array;
      
      private var var_555:int = 0;
      
      public function AnimationStateData()
      {
         this._frames = [];
         this.var_833 = [];
         this.var_834 = [];
         super();
      }
      
      public function get animationOver() : Boolean
      {
         return this.var_1576;
      }
      
      public function set animationOver(param1:Boolean) : void
      {
         this.var_1576 = param1;
      }
      
      public function get frameCounter() : int
      {
         return this.var_616;
      }
      
      public function set frameCounter(param1:int) : void
      {
         this.var_616 = param1;
      }
      
      public function get animationId() : int
      {
         return this.var_1577;
      }
      
      public function set animationId(param1:int) : void
      {
         if(param1 != this.var_1577)
         {
            this.var_1577 = param1;
            this.resetAnimationFrames(false);
         }
      }
      
      public function get animationAfterTransitionId() : int
      {
         return this.var_2137;
      }
      
      public function set animationAfterTransitionId(param1:int) : void
      {
         this.var_2137 = param1;
      }
      
      public function dispose() : void
      {
         this._frames = null;
         this.var_833 = null;
         this.var_834 = null;
      }
      
      public function setLayerCount(param1:int) : void
      {
         this.var_555 = param1;
         this.resetAnimationFrames();
      }
      
      public function resetAnimationFrames(param1:Boolean = true) : void
      {
         var _loc3_:* = null;
         if(param1 || this._frames == null)
         {
            this._frames = [];
         }
         this.var_833 = [];
         this.var_834 = [];
         this.var_1576 = false;
         this.var_616 = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_555)
         {
            if(param1 || this._frames.length <= _loc2_)
            {
               this._frames[_loc2_] = null;
            }
            else
            {
               _loc3_ = this._frames[_loc2_];
               if(_loc3_ != null)
               {
                  this._frames[_loc2_] = new AnimationFrame(_loc3_.id,_loc3_.x,_loc3_.y,_loc3_.repeats,0,_loc3_.isLastFrame);
               }
            }
            this.var_833[_loc2_] = false;
            this.var_834[_loc2_] = false;
            _loc2_++;
         }
      }
      
      public function getFrame(param1:int) : AnimationFrame
      {
         if(param1 >= 0 && param1 < this.var_555)
         {
            return this._frames[param1];
         }
         return null;
      }
      
      public function setFrame(param1:int, param2:AnimationFrame) : void
      {
         if(param1 >= 0 && param1 < this.var_555)
         {
            this._frames[param1] = param2;
         }
      }
      
      public function getAnimationPlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_555)
         {
            return this.var_834[param1];
         }
         return true;
      }
      
      public function setAnimationPlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_555)
         {
            this.var_834[param1] = param2;
         }
      }
      
      public function getLastFramePlayed(param1:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.var_555)
         {
            return this.var_833[param1];
         }
         return true;
      }
      
      public function setLastFramePlayed(param1:int, param2:Boolean) : void
      {
         if(param1 >= 0 && param1 < this.var_555)
         {
            this.var_833[param1] = param2;
         }
      }
   }
}
