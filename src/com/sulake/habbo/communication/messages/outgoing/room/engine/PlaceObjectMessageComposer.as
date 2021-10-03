package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_367:int;
      
      private var var_2203:int;
      
      private var var_2464:String;
      
      private var _x:int = 0;
      
      private var var_142:int = 0;
      
      private var var_268:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_367 = param1;
         this.var_2203 = param2;
         this.var_2464 = param3;
         this._x = param4;
         this.var_142 = param5;
         this.var_268 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2203)
         {
            case RoomObjectCategoryEnum.const_29:
               return [this.var_367 + " " + this._x + " " + this.var_142 + " " + this.var_268];
            case RoomObjectCategoryEnum.const_26:
               return [this.var_367 + " " + this.var_2464];
            default:
               return [];
         }
      }
   }
}
