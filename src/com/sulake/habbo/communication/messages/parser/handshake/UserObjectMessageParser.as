package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_912:String;
      
      private var var_2691:String;
      
      private var var_1616:String;
      
      private var var_2690:int;
      
      private var var_2689:String;
      
      private var var_2688:int;
      
      private var var_2692:int;
      
      private var var_2550:int;
      
      private var var_1185:int;
      
      private var var_774:int;
      
      private var var_2667:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_912 = param1.readString();
         this.var_2691 = param1.readString();
         this.var_1616 = param1.readString();
         this.var_2690 = param1.readInteger();
         this.var_2689 = param1.readString();
         this.var_2688 = param1.readInteger();
         this.var_2692 = param1.readInteger();
         this.var_2550 = param1.readInteger();
         this.var_1185 = param1.readInteger();
         this.var_774 = param1.readInteger();
         this.var_2667 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_912;
      }
      
      public function get customData() : String
      {
         return this.var_2691;
      }
      
      public function get realName() : String
      {
         return this.var_1616;
      }
      
      public function get tickets() : int
      {
         return this.var_2690;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2689;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2688;
      }
      
      public function get directMail() : int
      {
         return this.var_2692;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2550;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1185;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_774;
      }
      
      public function get identityId() : int
      {
         return this.var_2667;
      }
   }
}
