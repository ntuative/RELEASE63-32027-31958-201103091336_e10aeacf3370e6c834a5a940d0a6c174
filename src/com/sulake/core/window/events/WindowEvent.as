package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1638:String = "WE_CREATE";
      
      public static const const_1469:String = "WE_CREATED";
      
      public static const const_1642:String = "WE_DESTROY";
      
      public static const const_305:String = "WE_DESTROYED";
      
      public static const const_1493:String = "WE_OPEN";
      
      public static const const_1431:String = "WE_OPENED";
      
      public static const const_1472:String = "WE_CLOSE";
      
      public static const const_1486:String = "WE_CLOSED";
      
      public static const const_1628:String = "WE_FOCUS";
      
      public static const const_284:String = "WE_FOCUSED";
      
      public static const const_1460:String = "WE_UNFOCUS";
      
      public static const const_1637:String = "WE_UNFOCUSED";
      
      public static const const_1562:String = "WE_ACTIVATE";
      
      public static const const_1557:String = "WE_ACTIVATED";
      
      public static const const_1417:String = "WE_DEACTIVATE";
      
      public static const const_733:String = "WE_DEACTIVATED";
      
      public static const const_563:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_677:String = "WE_UNSELECT";
      
      public static const const_693:String = "WE_UNSELECTED";
      
      public static const const_1893:String = "WE_ATTACH";
      
      public static const const_1887:String = "WE_ATTACHED";
      
      public static const const_1794:String = "WE_DETACH";
      
      public static const const_1946:String = "WE_DETACHED";
      
      public static const const_1577:String = "WE_LOCK";
      
      public static const const_1540:String = "WE_LOCKED";
      
      public static const const_1602:String = "WE_UNLOCK";
      
      public static const const_1603:String = "WE_UNLOCKED";
      
      public static const const_688:String = "WE_ENABLE";
      
      public static const const_324:String = "WE_ENABLED";
      
      public static const const_855:String = "WE_DISABLE";
      
      public static const const_229:String = "WE_DISABLED";
      
      public static const const_1511:String = "WE_RELOCATE";
      
      public static const const_403:String = "WE_RELOCATED";
      
      public static const const_1587:String = "WE_RESIZE";
      
      public static const const_49:String = "WE_RESIZED";
      
      public static const const_1553:String = "WE_MINIMIZE";
      
      public static const const_1394:String = "WE_MINIMIZED";
      
      public static const const_1389:String = "WE_MAXIMIZE";
      
      public static const const_1424:String = "WE_MAXIMIZED";
      
      public static const const_1485:String = "WE_RESTORE";
      
      public static const const_1444:String = "WE_RESTORED";
      
      public static const const_1856:String = "WE_ARRANGE";
      
      public static const const_1783:String = "WE_ARRANGED";
      
      public static const const_103:String = "WE_UPDATE";
      
      public static const const_1879:String = "WE_UPDATED";
      
      public static const const_1870:String = "WE_CHILD_RELOCATE";
      
      public static const const_451:String = "WE_CHILD_RELOCATED";
      
      public static const const_1838:String = "WE_CHILD_RESIZE";
      
      public static const const_321:String = "WE_CHILD_RESIZED";
      
      public static const const_1911:String = "WE_CHILD_REMOVE";
      
      public static const const_539:String = "WE_CHILD_REMOVED";
      
      public static const const_1840:String = "WE_PARENT_RELOCATE";
      
      public static const const_1739:String = "WE_PARENT_RELOCATED";
      
      public static const const_1913:String = "WE_PARENT_RESIZE";
      
      public static const const_1671:String = "WE_PARENT_RESIZED";
      
      public static const const_184:String = "WE_OK";
      
      public static const const_889:String = "WE_CANCEL";
      
      public static const const_105:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_435:String = "WE_SCROLL";
      
      public static const const_168:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_2022:IWindow;
      
      protected var var_2023:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_2022 = param3;
         this.var_2023 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_2022;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_2023 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_2023;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
