package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_838:IAssetLoader;
      
      private var var_1874:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1874 = param1;
         this.var_838 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1874;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_838;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_838 != null)
            {
               if(!this.var_838.disposed)
               {
                  this.var_838.dispose();
                  this.var_838 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
