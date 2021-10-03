package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_182:IHabboConfigurationManager = null;
      
      private var var_540:int = 0;
      
      private var var_471:Number = 0;
      
      private var var_2794:Array;
      
      private var var_1320:String = "";
      
      private var var_1657:String = "";
      
      private var var_2291:String = "";
      
      private var var_2414:String = "";
      
      private var var_1723:Boolean = false;
      
      private var var_1654:GarbageMonitor = null;
      
      private var var_1319:int = 0;
      
      private var var_2292:Boolean;
      
      private var var_1656:int = 1000;
      
      private var var_1322:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1658:int = 0;
      
      private var var_1655:int = 10;
      
      private var var_1321:int = 0;
      
      private var var_2288:Number = 0.15;
      
      private var var_2290:Boolean = true;
      
      private var var_2289:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2794 = [];
         super();
         this.var_1657 = Capabilities.version;
         this.var_2291 = Capabilities.os;
         this.var_1723 = Capabilities.isDebugger;
         this.var_1320 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1320 == null)
         {
            this.var_1320 = "unknown";
         }
         this.var_1654 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1658 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1657;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_471;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1656 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1655 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_182 = param1;
         this._reportInterval = int(this.var_182.getKey("performancetest.interval","60"));
         this.var_1656 = int(this.var_182.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1655 = int(this.var_182.getKey("performancetest.reportlimit","10"));
         this.var_2288 = Number(this.var_182.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2290 = Boolean(int(this.var_182.getKey("performancetest.distribution.enabled","1")));
         this.var_2292 = Boolean(this.var_182.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1654.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1654.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_2292)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1319;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1656)
         {
            ++this.var_1322;
            _loc3_ = true;
         }
         else
         {
            ++this.var_540;
            if(this.var_540 <= 1)
            {
               this.var_471 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_540);
               this.var_471 = this.var_471 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1658 > this._reportInterval * 1000 && this.var_1321 < this.var_1655)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_471);
            _loc6_ = true;
            if(this.var_2290 && this.var_1321 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_2289,this.var_471);
               if(_loc7_ < this.var_2288)
               {
                  _loc6_ = false;
               }
            }
            this.var_1658 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_2289 = this.var_471;
               if(this.sendReport(param2))
               {
                  ++this.var_1321;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1320,this.var_1657,this.var_2291,this.var_2414,this.var_1723,_loc5_,_loc4_,this.var_1319,this.var_471,this.var_1322);
            this._connection.send(_loc2_);
            this.var_1319 = 0;
            this.var_471 = 0;
            this.var_540 = 0;
            this.var_1322 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
