package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1658:int;
      
      private var var_2573:int;
      
      private var var_1145:int;
      
      private var var_471:Number;
      
      private var var_2571:Boolean;
      
      private var var_2572:int;
      
      private var var_1809:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2573 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2572 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2571 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1145;
         if(this.var_1145 == 1)
         {
            this.var_471 = param1;
            this.var_1658 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1145);
            this.var_471 = this.var_471 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2571 && param3 - this.var_1658 >= this.var_2573 && this.var_1809 < this.var_2572)
         {
            _loc5_ = 1000 / this.var_471;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1809;
            this.var_1658 = param3;
            this.var_1145 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
