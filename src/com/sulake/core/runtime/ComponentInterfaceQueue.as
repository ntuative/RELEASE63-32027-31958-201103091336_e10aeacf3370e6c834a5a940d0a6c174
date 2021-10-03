package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1737:IID;
      
      private var var_730:Boolean;
      
      private var var_1111:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1737 = param1;
         this.var_1111 = new Array();
         this.var_730 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1737;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_730;
      }
      
      public function get receivers() : Array
      {
         return this.var_1111;
      }
      
      public function dispose() : void
      {
         if(!this.var_730)
         {
            this.var_730 = true;
            this.var_1737 = null;
            while(this.var_1111.length > 0)
            {
               this.var_1111.pop();
            }
            this.var_1111 = null;
         }
      }
   }
}
