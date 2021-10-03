package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteQuestionMessageParser implements IMessageParser
   {
       
      
      private var var_1066:String;
      
      private var var_1334:Array;
      
      public function VoteQuestionMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1066;
      }
      
      public function get choices() : Array
      {
         return this.var_1334.slice();
      }
      
      public function flush() : Boolean
      {
         this.var_1066 = "";
         this.var_1334 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1066 = param1.readString();
         this.var_1334 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1334.push(param1.readString());
            _loc3_++;
         }
         return true;
      }
   }
}
