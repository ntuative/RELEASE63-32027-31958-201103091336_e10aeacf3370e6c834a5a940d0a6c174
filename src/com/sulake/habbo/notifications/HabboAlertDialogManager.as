package com.sulake.habbo.notifications
{
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class HabboAlertDialogManager
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _localization:IHabboLocalizationManager;
      
      public function HabboAlertDialogManager(param1:IHabboWindowManager, param2:IHabboLocalizationManager)
      {
         super();
         this._windowManager = param1;
         this._localization = param2;
      }
      
      public function dispose() : void
      {
         this._windowManager = null;
         this._localization = null;
      }
      
      public function handleModMessage(param1:String, param2:String = "") : void
      {
         var message:String = param1;
         var url:String = param2;
         var p:RegExp = /\\r/g;
         message = message.replace(p,"\r");
         if(url.length > 0)
         {
            this._windowManager.alertWithLink("${mod.alert.title}",message,"${mod.alert.link}",url,0,function(param1:IAlertDialog, param2:Event):void
            {
               param1.dispose();
            });
         }
         else
         {
            this._windowManager.alert("${mod.alert.title}",message,0,function(param1:IAlertDialog, param2:Event):void
            {
               param1.dispose();
            });
         }
      }
      
      public function handleUserBannedMessage(param1:String) : void
      {
         var message:String = param1;
         this._windowManager.alert("${mod.ban.title}",message,0,function(param1:IAlertDialog, param2:Event):void
         {
            param1.dispose();
         });
      }
      
      public function handleHotelClosingMessage(param1:int) : void
      {
         var minutesUntilClosing:int = param1;
         this._localization.registerParameter("opening.hours.shutdown","m",String(minutesUntilClosing));
         this._windowManager.alert("${opening.hours.title}","${opening.hours.shutdown}",0,function(param1:IAlertDialog, param2:Event):void
         {
            param1.dispose();
         });
      }
      
      public function handleHotelClosedMessage(param1:int, param2:int, param3:Boolean) : void
      {
         var openHour:int = param1;
         var openMinute:int = param2;
         var userThrownOutAtClose:Boolean = param3;
         if(userThrownOutAtClose)
         {
            this._localization.registerParameter("opening.hours.disconnected","h",this.method_2(openHour));
            this._localization.registerParameter("opening.hours.disconnected","m",this.method_2(openMinute));
            this._windowManager.alert("${opening.hours.title}","${opening.hours.disconnected}",0,function(param1:IAlertDialog, param2:Event):void
            {
               param1.dispose();
            });
         }
         else
         {
            this._localization.registerParameter("opening.hours.closed","h",this.method_2(openHour));
            this._localization.registerParameter("opening.hours.closed","m",this.method_2(openMinute));
            this._windowManager.alert("${opening.hours.title}","${opening.hours.closed}",0,function(param1:IAlertDialog, param2:Event):void
            {
               param1.dispose();
            });
         }
      }
      
      public function handleLoginFailedHotelClosedMessage(param1:int, param2:int) : void
      {
         var openHour:int = param1;
         var openMinute:int = param2;
         this._localization.registerParameter("opening.hours.disconnected","h",this.method_2(openHour));
         this._localization.registerParameter("opening.hours.disconnected","m",this.method_2(openMinute));
         this._windowManager.alert("${opening.hours.title}","${opening.hours.disconnected}",0,function(param1:IAlertDialog, param2:Event):void
         {
            param1.dispose();
         });
      }
      
      private function method_2(param1:int) : String
      {
         var _loc2_:String = "0" + String(param1);
         return _loc2_.substr(_loc2_.length - 2,_loc2_.length);
      }
   }
}
