package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1159:String = "M";
      
      public static const const_1508:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_142:Number = 0;
      
      private var var_143:Number = 0;
      
      private var var_268:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_912:String = "";
      
      private var _figure:String = "";
      
      private var var_2256:String = "";
      
      private var var_2058:int;
      
      private var var_2255:int = 0;
      
      private var var_2260:String = "";
      
      private var var_2257:int = 0;
      
      private var var_2258:int = 0;
      
      private var var_2259:String = "";
      
      private var var_172:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_172 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_172)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_142;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_172)
         {
            this.var_142 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_143;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_172)
         {
            this.var_143 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_268;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_268 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_172)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_172)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_912;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_172)
         {
            this.var_912 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_172)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2256;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_172)
         {
            this.var_2256 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2058;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_2058 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2255;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_2255 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2260;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_172)
         {
            this.var_2260 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2257;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_2257 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2258;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_172)
         {
            this.var_2258 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2259;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_172)
         {
            this.var_2259 = param1;
         }
      }
   }
}
