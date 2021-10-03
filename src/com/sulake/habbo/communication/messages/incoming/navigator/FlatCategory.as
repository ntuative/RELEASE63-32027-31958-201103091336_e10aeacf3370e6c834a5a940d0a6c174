package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1635:int;
      
      private var var_2686:String;
      
      private var var_384:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1635 = param1.readInteger();
         this.var_2686 = param1.readString();
         this.var_384 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1635;
      }
      
      public function get nodeName() : String
      {
         return this.var_2686;
      }
      
      public function get visible() : Boolean
      {
         return this.var_384;
      }
   }
}
