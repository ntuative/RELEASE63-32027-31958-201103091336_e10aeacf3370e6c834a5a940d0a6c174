package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_337:int;
      
      private var var_787:Boolean;
      
      private var var_966:String;
      
      private var _ownerName:String;
      
      private var var_2060:int;
      
      private var var_2175:int;
      
      private var var_2197:int;
      
      private var var_1797:String;
      
      private var var_2196:int;
      
      private var var_2062:Boolean;
      
      private var var_722:int;
      
      private var var_1456:int;
      
      private var var_2198:String;
      
      private var var_808:Array;
      
      private var var_2199:RoomThumbnailData;
      
      private var var_2200:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_808 = new Array();
         super();
         this.var_337 = param1.readInteger();
         this.var_787 = param1.readBoolean();
         this.var_966 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2060 = param1.readInteger();
         this.var_2175 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this.var_1797 = param1.readString();
         this.var_2196 = param1.readInteger();
         this.var_2062 = param1.readBoolean();
         this.var_722 = param1.readInteger();
         this.var_1456 = param1.readInteger();
         this.var_2198 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_808.push(_loc4_);
            _loc3_++;
         }
         this.var_2199 = new RoomThumbnailData(param1);
         this.var_2200 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_808 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_337;
      }
      
      public function get event() : Boolean
      {
         return this.var_787;
      }
      
      public function get roomName() : String
      {
         return this.var_966;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2060;
      }
      
      public function get userCount() : int
      {
         return this.var_2175;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2197;
      }
      
      public function get description() : String
      {
         return this.var_1797;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2196;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2062;
      }
      
      public function get score() : int
      {
         return this.var_722;
      }
      
      public function get categoryId() : int
      {
         return this.var_1456;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2198;
      }
      
      public function get tags() : Array
      {
         return this.var_808;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2199;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2200;
      }
   }
}
