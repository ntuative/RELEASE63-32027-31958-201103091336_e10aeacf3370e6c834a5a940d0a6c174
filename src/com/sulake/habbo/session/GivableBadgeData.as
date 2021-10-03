package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_284:int;
      
      private var var_2078:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_284 = param1;
         this.var_2078 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_284;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2078;
      }
   }
}
