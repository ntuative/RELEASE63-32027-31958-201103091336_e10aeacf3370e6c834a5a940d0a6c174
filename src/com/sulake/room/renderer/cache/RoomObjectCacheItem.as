package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_888:RoomObjectLocationCacheItem = null;
      
      private var var_197:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_888 = new RoomObjectLocationCacheItem(param1);
         this.var_197 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_888;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_197;
      }
      
      public function dispose() : void
      {
         if(this.var_888 != null)
         {
            this.var_888.dispose();
            this.var_888 = null;
         }
         if(this.var_197 != null)
         {
            this.var_197.dispose();
            this.var_197 = null;
         }
      }
   }
}
