package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_713:TileHeightMap = null;
      
      private var var_1094:LegacyWallGeometry = null;
      
      private var var_1093:RoomCamera = null;
      
      private var var_712:SelectedRoomObjectData = null;
      
      private var var_714:SelectedRoomObjectData = null;
      
      private var var_2377:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1094 = new LegacyWallGeometry();
         this.var_1093 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_713;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_713 != null)
         {
            this.var_713.dispose();
         }
         this.var_713 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1094;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1093;
      }
      
      public function get worldType() : String
      {
         return this.var_2377;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2377 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_712;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_712 != null)
         {
            this.var_712.dispose();
         }
         this.var_712 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_714;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_714 != null)
         {
            this.var_714.dispose();
         }
         this.var_714 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_713 != null)
         {
            this.var_713.dispose();
            this.var_713 = null;
         }
         if(this.var_1094 != null)
         {
            this.var_1094.dispose();
            this.var_1094 = null;
         }
         if(this.var_1093 != null)
         {
            this.var_1093.dispose();
            this.var_1093 = null;
         }
         if(this.var_712 != null)
         {
            this.var_712.dispose();
            this.var_712 = null;
         }
         if(this.var_714 != null)
         {
            this.var_714.dispose();
            this.var_714 = null;
         }
      }
   }
}
