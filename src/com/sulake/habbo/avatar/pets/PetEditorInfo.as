package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2411:Boolean;
      
      private var var_2223:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         this.var_2411 = Boolean(parseInt(param1.@club));
         this.var_2223 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return this.var_2411;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2223;
      }
   }
}
