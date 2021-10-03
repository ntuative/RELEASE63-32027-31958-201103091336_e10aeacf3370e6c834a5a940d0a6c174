package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_358:int = 1;
      
      public static const const_266:int = 2;
      
      public static const const_312:int = 3;
      
      public static const const_346:int = 4;
      
      public static const const_250:int = 5;
      
      public static const const_374:int = 1;
      
      public static const const_622:int = 2;
      
      public static const const_797:int = 3;
      
      public static const const_742:int = 4;
      
      public static const const_260:int = 5;
      
      public static const const_719:int = 6;
      
      public static const const_877:int = 7;
      
      public static const const_243:int = 8;
      
      public static const const_340:int = 9;
      
      public static const const_1930:int = 10;
      
      public static const const_799:int = 11;
      
      public static const const_493:int = 12;
       
      
      private var var_389:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_389 = new Array();
         this.var_389.push(new Tab(this._navigator,const_358,const_493,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_492));
         this.var_389.push(new Tab(this._navigator,const_266,const_374,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_492));
         this.var_389.push(new Tab(this._navigator,const_346,const_799,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1152));
         this.var_389.push(new Tab(this._navigator,const_312,const_260,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_492));
         this.var_389.push(new Tab(this._navigator,const_250,const_243,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_685));
         this.setSelectedTab(const_358);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_346;
      }
      
      public function get tabs() : Array
      {
         return this.var_389;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_389)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_389)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_389)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
