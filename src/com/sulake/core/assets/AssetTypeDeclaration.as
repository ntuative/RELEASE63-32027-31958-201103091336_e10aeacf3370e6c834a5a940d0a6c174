package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2048:String;
      
      private var var_2047:Class;
      
      private var var_2049:Class;
      
      private var var_1520:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2048 = param1;
         this.var_2047 = param2;
         this.var_2049 = param3;
         if(rest == null)
         {
            this.var_1520 = new Array();
         }
         else
         {
            this.var_1520 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2048;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2047;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2049;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1520;
      }
   }
}
