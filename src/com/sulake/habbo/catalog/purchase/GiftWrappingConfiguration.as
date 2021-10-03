package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1501:Boolean = false;
      
      private var var_1599:int;
      
      private var var_1556:Array;
      
      private var var_707:Array;
      
      private var var_706:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1501 = _loc2_.isWrappingEnabled;
         this.var_1599 = _loc2_.wrappingPrice;
         this.var_1556 = _loc2_.stuffTypes;
         this.var_707 = _loc2_.boxTypes;
         this.var_706 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1501;
      }
      
      public function get price() : int
      {
         return this.var_1599;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1556;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_707;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_706;
      }
   }
}
