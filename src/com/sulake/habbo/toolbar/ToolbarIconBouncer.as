package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2407:Number;
      
      private var var_1823:Number;
      
      private var var_889:Number;
      
      private var var_888:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2407 = param1;
         this.var_1823 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_889 = param1;
         this.var_888 = 0;
      }
      
      public function update() : void
      {
         this.var_889 += this.var_1823;
         this.var_888 += this.var_889;
         if(this.var_888 > 0)
         {
            this.var_888 = 0;
            this.var_889 = this.var_2407 * -1 * this.var_889;
         }
      }
      
      public function get location() : Number
      {
         return this.var_888;
      }
   }
}
