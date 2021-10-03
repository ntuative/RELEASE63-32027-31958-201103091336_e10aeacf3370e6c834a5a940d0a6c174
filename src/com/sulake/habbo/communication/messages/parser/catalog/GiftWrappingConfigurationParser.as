package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2098:Boolean;
      
      private var var_2097:int;
      
      private var var_1556:Array;
      
      private var var_707:Array;
      
      private var var_706:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2098;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2097;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1556 = [];
         this.var_707 = [];
         this.var_706 = [];
         this.var_2098 = param1.readBoolean();
         this.var_2097 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1556.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_707.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_706.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
