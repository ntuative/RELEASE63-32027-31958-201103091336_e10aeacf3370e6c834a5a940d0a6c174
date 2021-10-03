package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2120:int = 0;
      
      private var var_1320:String = "";
      
      private var var_1657:String = "";
      
      private var var_2291:String = "";
      
      private var var_2414:String = "";
      
      private var var_1723:int = 0;
      
      private var var_2413:int = 0;
      
      private var var_2412:int = 0;
      
      private var var_1319:int = 0;
      
      private var var_2415:int = 0;
      
      private var var_1322:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2120 = param1;
         this.var_1320 = param2;
         this.var_1657 = param3;
         this.var_2291 = param4;
         this.var_2414 = param5;
         if(param6)
         {
            this.var_1723 = 1;
         }
         else
         {
            this.var_1723 = 0;
         }
         this.var_2413 = param7;
         this.var_2412 = param8;
         this.var_1319 = param9;
         this.var_2415 = param10;
         this.var_1322 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2120,this.var_1320,this.var_1657,this.var_2291,this.var_2414,this.var_1723,this.var_2413,this.var_2412,this.var_1319,this.var_2415,this.var_1322];
      }
   }
}
