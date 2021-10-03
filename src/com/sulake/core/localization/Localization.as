package com.sulake.core.localization
{
   import flash.utils.Dictionary;
   
   public class Localization implements ILocalization
   {
       
      
      private var var_583:String;
      
      private var var_174:String;
      
      private var var_1412:Dictionary;
      
      private var var_483:Array;
      
      private var var_188:Boolean = false;
      
      public function Localization(param1:String, param2:String = null)
      {
         super();
         this.var_483 = new Array();
         this.var_1412 = new Dictionary();
         this.var_583 = param1;
         this.var_174 = param2;
      }
      
      public function get isInitialized() : Boolean
      {
         return this.var_174 != null;
      }
      
      public function get key() : String
      {
         return this.var_583;
      }
      
      public function get value() : String
      {
         return this.fillParameterValues();
      }
      
      public function get raw() : String
      {
         return this.var_174;
      }
      
      public function setValue(param1:String) : void
      {
         this.var_174 = param1;
         this.updateListeners();
      }
      
      public function registerListener(param1:ILocalizable) : void
      {
         this.var_483.push(param1);
         param1.localization = this.value;
      }
      
      public function removeListener(param1:ILocalizable) : void
      {
         var _loc2_:int = this.var_483.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.var_483.splice(_loc2_,1);
         }
      }
      
      public function registerParameter(param1:String, param2:String, param3:String = "%") : void
      {
         param1 = param3 + param1 + param3;
         this.var_1412[param1] = param2;
         this.updateListeners();
      }
      
      public function updateListeners() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_483)
         {
            _loc1_.localization = this.value;
         }
      }
      
      private function fillParameterValues() : String
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc1_:String = this.var_174;
         for(_loc2_ in this.var_1412)
         {
            _loc3_ = this.var_1412[_loc2_];
            _loc4_ = new RegExp(_loc2_,"gim");
            if(_loc1_ != null)
            {
               _loc1_ = _loc1_.replace(_loc4_,_loc3_);
            }
         }
         return _loc1_;
      }
   }
}
