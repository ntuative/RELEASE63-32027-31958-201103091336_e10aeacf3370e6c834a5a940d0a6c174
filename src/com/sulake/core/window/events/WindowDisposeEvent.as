package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowDisposeEvent extends WindowEvent
   {
      
      public static const const_728:String = "WINDOW_DISPOSE_EVENT";
       
      
      public function WindowDisposeEvent(param1:IWindow)
      {
         super(const_728,param1,null,false,false);
      }
   }
}
