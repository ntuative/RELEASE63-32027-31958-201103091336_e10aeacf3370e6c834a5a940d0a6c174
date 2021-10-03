package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1824:int;
      
      private var _name:String;
      
      private var var_1283:int;
      
      private var var_2699:int;
      
      private var var_2142:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2700:int;
      
      private var var_2701:int;
      
      private var var_2702:int;
      
      private var var_2276:int;
      
      private var var_2429:int;
      
      private var _ownerName:String;
      
      private var var_453:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1824;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1283;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2699;
      }
      
      public function get experience() : int
      {
         return this.var_2142;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2700;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2701;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2702;
      }
      
      public function get respect() : int
      {
         return this.var_2276;
      }
      
      public function get ownerId() : int
      {
         return this.var_2429;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_453;
      }
      
      public function flush() : Boolean
      {
         this.var_1824 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1824 = param1.readInteger();
         this._name = param1.readString();
         this.var_1283 = param1.readInteger();
         this.var_2699 = param1.readInteger();
         this.var_2142 = param1.readInteger();
         this.var_2700 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2701 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2702 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2276 = param1.readInteger();
         this.var_2429 = param1.readInteger();
         this.var_453 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
