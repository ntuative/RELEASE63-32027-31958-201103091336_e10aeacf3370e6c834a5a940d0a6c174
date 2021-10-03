package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1000:int = 1;
      
      public static const const_544:int = 2;
      
      private static const const_927:int = 5;
      
      private static const const_1280:int = 250;
      
      private static const const_1278:int = 100;
      
      private static const const_1279:int = 180;
      
      private static const const_1281:int = 200;
       
      
      private var var_336:Timer;
      
      private var var_335:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_80:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1645:int = 2;
      
      private var var_694:BitmapData;
      
      private var var_852:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_336 = new Timer(const_1280,1);
         this.var_335 = new Timer(const_1278,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_80 = param1;
         this.var_80.visible = false;
         this._assets = param2;
         this.var_336.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_335.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_852 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_694 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_336 != null)
         {
            this.var_336.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_336.stop();
            this.var_336 = null;
         }
         if(this.var_335 != null)
         {
            this.var_335.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_335.stop();
            this.var_335 = null;
         }
         this._assets = null;
         this.var_80 = null;
         this._parent = null;
         this.var_694 = null;
         this.var_852 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_80 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_80);
         }
         this._parent = param1;
         this.var_1645 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_80.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_80.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1279,param3.width),Math.min(const_1281,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_80.width - _loc6_.width) / 2;
            this.var_80.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_335.reset();
         this.var_336.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_80.visible = true;
         this._parent.addChild(this.var_80);
         this.refreshArrow(this.var_1645);
         switch(this.var_1645)
         {
            case const_1000:
               this.var_80.x = -1 * this.var_80.width - const_927;
               break;
            case const_544:
               this.var_80.x = this._parent.width + const_927;
         }
         this.var_80.y = (this._parent.height - this.var_80.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_80.visible = false;
         this.var_335.reset();
         this.var_336.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_80);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_335.reset();
         this.var_336.reset();
         this.var_336.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_335.reset();
         this.var_336.reset();
         this.var_335.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_80 == null || this.var_80.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_80.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1000:
               _loc2_.bitmap = this.var_852.clone();
               _loc2_.width = this.var_852.width;
               _loc2_.height = this.var_852.height;
               _loc2_.y = (this.var_80.height - this.var_852.height) / 2;
               _loc2_.x = this.var_80.width - 1;
               break;
            case const_544:
               _loc2_.bitmap = this.var_694.clone();
               _loc2_.width = this.var_694.width;
               _loc2_.height = this.var_694.height;
               _loc2_.y = (this.var_80.height - this.var_694.height) / 2;
               _loc2_.x = -1 * this.var_694.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}