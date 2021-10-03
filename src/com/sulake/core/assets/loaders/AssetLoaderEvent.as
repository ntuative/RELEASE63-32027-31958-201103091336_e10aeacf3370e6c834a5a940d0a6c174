package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_27:String = "AssetLoaderEventComplete";
      
      public static const const_1020:String = "AssetLoaderEventProgress";
      
      public static const const_1085:String = "AssetLoaderEventUnload";
      
      public static const const_1164:String = "AssetLoaderEventStatus";
      
      public static const const_46:String = "AssetLoaderEventError";
      
      public static const const_1212:String = "AssetLoaderEventOpen";
       
      
      private var var_385:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_385 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_385;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_385);
      }
   }
}
