package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1171:int = 1;
      
      public static const const_775:int = 2;
      
      public static const const_681:int = 3;
      
      public static const const_1571:int = 4;
       
      
      private var _index:int;
      
      private var var_2551:String;
      
      private var var_2553:String;
      
      private var var_2555:Boolean;
      
      private var var_2552:String;
      
      private var var_878:String;
      
      private var var_2554:int;
      
      private var var_2175:int;
      
      private var _type:int;
      
      private var var_2077:String;
      
      private var var_927:GuestRoomData;
      
      private var var_926:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2551 = param1.readString();
         this.var_2553 = param1.readString();
         this.var_2555 = param1.readInteger() == 1;
         this.var_2552 = param1.readString();
         this.var_878 = param1.readString();
         this.var_2554 = param1.readInteger();
         this.var_2175 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1171)
         {
            this.var_2077 = param1.readString();
         }
         else if(this._type == const_681)
         {
            this.var_926 = new PublicRoomData(param1);
         }
         else if(this._type == const_775)
         {
            this.var_927 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_927 != null)
         {
            this.var_927.dispose();
            this.var_927 = null;
         }
         if(this.var_926 != null)
         {
            this.var_926.dispose();
            this.var_926 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2551;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2553;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2555;
      }
      
      public function get picText() : String
      {
         return this.var_2552;
      }
      
      public function get picRef() : String
      {
         return this.var_878;
      }
      
      public function get folderId() : int
      {
         return this.var_2554;
      }
      
      public function get tag() : String
      {
         return this.var_2077;
      }
      
      public function get userCount() : int
      {
         return this.var_2175;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_927;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_926;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1171)
         {
            return 0;
         }
         if(this.type == const_775)
         {
            return this.var_927.maxUserCount;
         }
         if(this.type == const_681)
         {
            return this.var_926.maxUsers;
         }
         return 0;
      }
   }
}
