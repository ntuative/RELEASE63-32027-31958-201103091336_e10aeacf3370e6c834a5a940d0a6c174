package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2234:int;
      
      private var var_1474:String;
      
      private var var_2748:int;
      
      private var var_2746:int;
      
      private var _category:int;
      
      private var var_2013:String;
      
      private var var_1332:int;
      
      private var var_2750:int;
      
      private var var_2744:int;
      
      private var var_2749:int;
      
      private var var_2745:int;
      
      private var var_2747:Boolean;
      
      private var var_2858:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2234 = param1;
         this.var_1474 = param2;
         this.var_2748 = param3;
         this.var_2746 = param4;
         this._category = param5;
         this.var_2013 = param6;
         this.var_1332 = param7;
         this.var_2750 = param8;
         this.var_2744 = param9;
         this.var_2749 = param10;
         this.var_2745 = param11;
         this.var_2747 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2234;
      }
      
      public function get itemType() : String
      {
         return this.var_1474;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2748;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2746;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2013;
      }
      
      public function get extra() : int
      {
         return this.var_1332;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2750;
      }
      
      public function get creationDay() : int
      {
         return this.var_2744;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2749;
      }
      
      public function get creationYear() : int
      {
         return this.var_2745;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2747;
      }
      
      public function get songID() : int
      {
         return this.var_1332;
      }
   }
}
