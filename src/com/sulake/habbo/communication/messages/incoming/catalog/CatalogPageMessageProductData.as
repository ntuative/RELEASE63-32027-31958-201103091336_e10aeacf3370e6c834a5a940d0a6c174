package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_82:String = "i";
      
      public static const const_87:String = "s";
      
      public static const const_235:String = "e";
       
      
      private var var_1711:String;
      
      private var var_2515:int;
      
      private var var_1363:String;
      
      private var var_1362:int;
      
      private var var_1712:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1711 = param1.readString();
         this.var_2515 = param1.readInteger();
         this.var_1363 = param1.readString();
         this.var_1362 = param1.readInteger();
         this.var_1712 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1711;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2515;
      }
      
      public function get extraParam() : String
      {
         return this.var_1363;
      }
      
      public function get productCount() : int
      {
         return this.var_1362;
      }
      
      public function get expiration() : int
      {
         return this.var_1712;
      }
   }
}
