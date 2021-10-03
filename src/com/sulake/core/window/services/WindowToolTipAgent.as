package com.sulake.core.window.services
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IToolTipAgentService
   {
       
      
      protected var var_1257:String;
      
      protected var var_278:IToolTipWindow;
      
      protected var var_387:Timer;
      
      protected var var_1256:Point;
      
      protected var var_1255:Point;
      
      protected var var_1511:uint;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         this.var_1255 = new Point();
         this.var_1256 = new Point(20,20);
         this.var_1511 = 500;
         super(param1);
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               this.var_1257 = IInteractiveWindow(param1).toolTipCaption;
               this.var_1511 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               this.var_1257 = param1.caption;
               this.var_1511 = 500;
            }
            _mouse.x = var_140.mouseX;
            _mouse.y = var_140.mouseY;
            getMousePositionRelativeTo(param1,_mouse,this.var_1255);
            if(this.var_1257 != null && this.var_1257 != "")
            {
               if(this.var_387 == null)
               {
                  this.var_387 = new Timer(this.var_1511,1);
                  this.var_387.addEventListener(TimerEvent.TIMER,this.showToolTip);
               }
               this.var_387.reset();
               this.var_387.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(this.var_387 != null)
         {
            this.var_387.stop();
            this.var_387.removeEventListener(TimerEvent.TIMER,this.showToolTip);
            this.var_387 = null;
         }
         this.hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,this.var_1255);
            if(this.var_278 != null && !this.var_278.disposed)
            {
               this.var_278.x = param1 + this.var_1256.x;
               this.var_278.y = param2 + this.var_1256.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_387 != null)
         {
            this.var_387.reset();
         }
         if(_window && true)
         {
            if(this.var_278 == null || this.var_278.disposed)
            {
               this.var_278 = _window.context.create("undefined::ToolTip",this.var_1257,WindowType.const_407,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            this.var_278.x = _loc2_.x + this.var_1255.x + this.var_1256.x;
            this.var_278.y = _loc2_.y + this.var_1255.y + this.var_1256.y;
         }
      }
      
      protected function hideToolTip() : void
      {
         if(this.var_278 != null && !this.var_278.disposed)
         {
            this.var_278.destroy();
            this.var_278 = null;
         }
      }
   }
}
