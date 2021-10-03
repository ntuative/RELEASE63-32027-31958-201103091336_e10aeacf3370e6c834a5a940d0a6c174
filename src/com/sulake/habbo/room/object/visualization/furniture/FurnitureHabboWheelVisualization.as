package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_942:int = 10;
      
      private static const const_600:int = 20;
      
      private static const const_1326:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_297:Array;
      
      private var var_725:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_297 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_725)
            {
               this.var_725 = true;
               this.var_297 = new Array();
               this.var_297.push(const_1326);
               this.var_297.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_942)
         {
            if(this.var_725)
            {
               this.var_725 = false;
               this.var_297 = new Array();
               this.var_297.push(const_942 + param1);
               this.var_297.push(const_600 + param1);
               this.var_297.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_297.length > 0)
            {
               super.setAnimation(this.var_297.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
