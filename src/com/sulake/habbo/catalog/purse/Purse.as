package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_195:int = 0;
       
      
      private var var_2611:int = 0;
      
      private var var_1444:Dictionary;
      
      private var var_1832:int = 0;
      
      private var var_1831:int = 0;
      
      private var var_2446:Boolean = false;
      
      private var var_2440:int = 0;
      
      private var var_2443:int = 0;
      
      public function Purse()
      {
         this.var_1444 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2611;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2611 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1832;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1832 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1831;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1831 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1832 > 0 || this.var_1831 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2446;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2446 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2440;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2440 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2443;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2443 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1444;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1444 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1444[param1];
      }
   }
}
