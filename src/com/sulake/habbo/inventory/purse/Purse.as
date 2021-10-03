package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1832:int = 0;
      
      private var var_1831:int = 0;
      
      private var var_2531:int = 0;
      
      private var var_2530:Boolean = false;
      
      private var var_2446:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1832 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1831 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2531 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2530 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2446 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1832;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1831;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2531;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2530;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2446;
      }
   }
}
