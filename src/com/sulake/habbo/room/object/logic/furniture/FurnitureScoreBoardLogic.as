package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import flash.utils.getTimer;
   
   public class FurnitureScoreBoardLogic extends FurnitureLogic
   {
      
      private static const const_416:int = 50;
      
      private static const const_943:int = 3000;
       
      
      private var var_722:int = 0;
      
      private var var_1385:int = 0;
      
      private var var_1113:int = 50;
      
      public function FurnitureScoreBoardLogic()
      {
         super();
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc2_:RoomObjectDataUpdateMessage = param1 as RoomObjectDataUpdateMessage;
         if(_loc2_ != null)
         {
            this.updateScore(_loc2_.state);
            return;
         }
         super.processUpdateMessage(param1);
      }
      
      private function updateScore(param1:int) : void
      {
         var _loc3_:int = 0;
         this.var_722 = param1;
         var _loc2_:int = object.getState(0);
         if(this.var_722 != _loc2_)
         {
            _loc3_ = this.var_722 - _loc2_;
            if(_loc3_ < 0)
            {
               _loc3_ = -_loc3_;
            }
            if(_loc3_ * const_416 > const_943)
            {
               this.var_1113 = const_943 / _loc3_;
            }
            else
            {
               this.var_1113 = const_416;
            }
            this.var_1385 = getTimer();
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super.update(param1);
         if(object != null)
         {
            _loc2_ = object.getState(0);
            if(_loc2_ != this.var_722 && param1 >= this.var_1385 + this.var_1113)
            {
               _loc3_ = param1 - this.var_1385;
               _loc4_ = _loc3_ / this.var_1113;
               _loc5_ = 1;
               if(this.var_722 < _loc2_)
               {
                  _loc5_ = -1;
               }
               if(_loc4_ > _loc5_ * (this.var_722 - _loc2_))
               {
                  _loc4_ = _loc5_ * (this.var_722 - _loc2_);
               }
               object.setState(_loc2_ + _loc5_ * _loc4_,0);
               this.var_1385 = param1 - (_loc3_ - _loc4_ * this.var_1113);
            }
         }
      }
   }
}
