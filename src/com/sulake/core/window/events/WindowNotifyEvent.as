package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1501:String = "WN_CRETAE";
      
      public static const const_1506:String = "WN_CREATED";
      
      public static const const_986:String = "WN_DESTROY";
      
      public static const const_1065:String = "WN_DESTROYED";
      
      public static const const_1161:String = "WN_OPEN";
      
      public static const const_1127:String = "WN_OPENED";
      
      public static const const_1106:String = "WN_CLOSE";
      
      public static const const_1172:String = "WN_CLOSED";
      
      public static const const_1093:String = "WN_FOCUS";
      
      public static const const_1131:String = "WN_FOCUSED";
      
      public static const const_1173:String = "WN_UNFOCUS";
      
      public static const const_1122:String = "WN_UNFOCUSED";
      
      public static const const_1222:String = "WN_ACTIVATE";
      
      public static const const_390:String = "WN_ACTVATED";
      
      public static const const_1111:String = "WN_DEACTIVATE";
      
      public static const const_1180:String = "WN_DEACTIVATED";
      
      public static const const_489:String = "WN_SELECT";
      
      public static const const_349:String = "WN_SELECTED";
      
      public static const const_655:String = "WN_UNSELECT";
      
      public static const const_637:String = "WN_UNSELECTED";
      
      public static const const_1105:String = "WN_LOCK";
      
      public static const const_1128:String = "WN_LOCKED";
      
      public static const const_1073:String = "WN_UNLOCK";
      
      public static const const_1066:String = "WN_UNLOCKED";
      
      public static const const_1192:String = "WN_ENABLE";
      
      public static const const_880:String = "WN_ENABLED";
      
      public static const const_1069:String = "WN_DISABLE";
      
      public static const const_787:String = "WN_DISABLED";
      
      public static const const_627:String = "WN_RESIZE";
      
      public static const const_180:String = "WN_RESIZED";
      
      public static const const_1024:String = "WN_RELOCATE";
      
      public static const const_436:String = "WN_RELOCATED";
      
      public static const const_1075:String = "WN_MINIMIZE";
      
      public static const const_1002:String = "WN_MINIMIZED";
      
      public static const const_1206:String = "WN_MAXIMIZE";
      
      public static const const_1136:String = "WN_MAXIMIZED";
      
      public static const const_1080:String = "WN_RESTORE";
      
      public static const const_1082:String = "WN_RESTORED";
      
      public static const const_1927:String = "WN_ARRANGE";
      
      public static const const_1866:String = "WN_ARRANGED";
      
      public static const const_1942:String = "WN_UPDATE";
      
      public static const const_1902:String = "WN_UPDATED";
      
      public static const const_395:String = "WN_CHILD_ADDED";
      
      public static const const_808:String = "WN_CHILD_REMOVED";
      
      public static const const_316:String = "WN_CHILD_RESIZED";
      
      public static const const_289:String = "WN_CHILD_RELOCATED";
      
      public static const const_214:String = "WN_CHILD_ACTIVATED";
      
      public static const const_573:String = "WN_PARENT_ADDED";
      
      public static const const_1205:String = "WN_PARENT_REMOVED";
      
      public static const const_502:String = "WN_PARENT_RESIZED";
      
      public static const const_1103:String = "WN_PARENT_RELOCATED";
      
      public static const const_905:String = "WN_PARENT_ACTIVATED";
      
      public static const const_494:String = "WN_STATE_UPDATED";
      
      public static const const_487:String = "WN_STYLE_UPDATED";
      
      public static const const_466:String = "WN_PARAM_UPDATED";
      
      public static const const_1829:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_2022,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
