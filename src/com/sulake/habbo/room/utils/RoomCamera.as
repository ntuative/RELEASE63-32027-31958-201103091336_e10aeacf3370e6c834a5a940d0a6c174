package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_922:int = 3;
       
      
      private var var_2216:int = -1;
      
      private var var_2215:int = -2;
      
      private var _targetLoc:Vector3d = null;
      
      private var var_391:Vector3d = null;
      
      private var var_2214:Boolean = false;
      
      private var var_2218:Boolean = false;
      
      private var var_2213:Boolean = false;
      
      private var var_2217:Boolean = false;
      
      private var var_2210:int = 0;
      
      private var var_2209:int = 0;
      
      private var var_2212:int = 0;
      
      private var var_2211:int = 0;
      
      private var var_1301:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_391;
      }
      
      public function get targetId() : int
      {
         return this.var_2216;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2215;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2214;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2218;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2213;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2217;
      }
      
      public function get screenWd() : int
      {
         return this.var_2210;
      }
      
      public function get screenHt() : int
      {
         return this.var_2209;
      }
      
      public function get roomWd() : int
      {
         return this.var_2212;
      }
      
      public function get roomHt() : int
      {
         return this.var_2211;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2216 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2215 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2214 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2218 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2213 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2217 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2210 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2209 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2212 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2211 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this._targetLoc == null)
         {
            this._targetLoc = new Vector3d();
         }
         if(this._targetLoc.x != param1.x || this._targetLoc.y != param1.y || this._targetLoc.z != param1.z)
         {
            this._targetLoc.assign(param1);
            this.var_1301 = 0;
         }
      }
      
      public function dispose() : void
      {
         this._targetLoc = null;
         this.var_391 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_391 != null)
         {
            return;
         }
         this.var_391 = new Vector3d();
         this.var_391.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this._targetLoc != null && this.var_391 != null)
         {
            ++this.var_1301;
            _loc4_ = Vector3d.dif(this._targetLoc,this.var_391);
            if(_loc4_.length <= param2)
            {
               this.var_391 = this._targetLoc;
               this._targetLoc = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_922 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1301 <= const_922)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_391 = Vector3d.sum(this.var_391,_loc4_);
            }
         }
      }
   }
}
