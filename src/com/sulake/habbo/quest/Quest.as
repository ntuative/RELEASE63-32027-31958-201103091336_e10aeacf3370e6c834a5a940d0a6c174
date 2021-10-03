package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.quest.enum.QuestStatusEnum;
   import flash.events.Event;
   
   public class Quest implements IDisposable
   {
       
      
      private var var_17:IWindowContainer;
      
      private var _region:IRegionWindow;
      
      private var var_60:QuestCampaign;
      
      private var _id:int;
      
      private var var_385:int;
      
      private var _type:String;
      
      private var var_1948:String;
      
      private var var_1947:int;
      
      private var var_1870:Date;
      
      private var var_795:String;
      
      private var var_2650:String;
      
      private var var_190:Boolean = false;
      
      private var var_1457:uint = 7645971;
      
      private var var_1869:uint = 6710886;
      
      private var var_192:IWindow;
      
      private var var_730:Boolean = false;
      
      public function Quest(param1:QuestMessageData, param2:QuestCampaign)
      {
         super();
         this.var_60 = param2;
         this._id = param1.id;
         this.update(param1);
      }
      
      public function dispose() : void
      {
         if(this._region)
         {
            this._region.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.itemGridEventProc);
            this._region.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.itemGridEventProc);
            this._region.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,this.itemGridEventProc);
         }
         if(this.var_17)
         {
            this.var_17.dispose();
            this.var_17 = null;
         }
         this.var_730 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_730;
      }
      
      public function update(param1:QuestMessageData) : void
      {
         this.var_385 = param1.status;
         this._type = param1.type;
         this.var_1948 = param1.roomItemTypeName;
         this.var_1947 = param1.rewardCurrencyAmount;
         this.var_1870 = new Date();
         this.var_1870.setTime(param1.endDateTimeStamp);
         this.var_795 = param1.localizationCode;
         this.var_2650 = param1.questBadgeAchievementTypeId;
         this.updateView();
      }
      
      private function createView() : void
      {
         switch(this.var_385)
         {
            case QuestStatusEnum.const_47:
               this.var_17 = this.var_60.controller.questEngine.getXmlWindow("QuestEntityAccepted") as IWindowContainer;
               break;
            case QuestStatusEnum.const_543:
               this.var_17 = this.var_60.controller.questEngine.getXmlWindow("QuestEntityAvailable") as IWindowContainer;
               break;
            case QuestStatusEnum.const_186:
               this.var_17 = this.var_60.controller.questEngine.getXmlWindow("QuestEntityExpired") as IWindowContainer;
               break;
            case QuestStatusEnum.const_700:
               this.var_17 = this.var_60.controller.questEngine.getXmlWindow("QuestEntityCompleted") as IWindowContainer;
               break;
            case QuestStatusEnum.const_194:
               this.var_17 = this.var_60.controller.questEngine.getXmlWindow("QuestEntityPreview") as IWindowContainer;
               break;
            default:
               this.var_17 = this.var_60.controller.questEngine.getXmlWindow("QuestEntityExpired") as IWindowContainer;
         }
         if(!this.var_17)
         {
            return;
         }
         this._region = this.var_17.findChildByName("mouse.region") as IRegionWindow;
         this._region.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.itemGridEventProc);
         this._region.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,this.itemGridEventProc);
         this._region.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,this.itemGridEventProc);
         var _loc1_:IWindow = this.var_17.findChildByTag("SELECTION_COLOR");
         if(_loc1_ != null)
         {
            this.var_1457 = _loc1_.color;
         }
         var _loc2_:IWindow = this.var_17.findChildByTag("SELECTION_BORDER");
         if(_loc2_ != null)
         {
            this.var_1869 = _loc2_.color;
            this.var_192 = _loc2_;
         }
         else
         {
            this.var_192 = this.var_17;
         }
         this.var_192.color = this.var_1457;
      }
      
      private function updateView() : void
      {
         var _loc2_:* = null;
         if(this.var_17 == null)
         {
            this.createView();
         }
         var _loc1_:IBitmapWrapperWindow = this.find(this.var_17,"icon") as IBitmapWrapperWindow;
         switch(this.var_385)
         {
            case QuestStatusEnum.const_47:
               _loc2_ = ["icon",this.var_60.code,"active"].join("_");
               this.var_60.controller.questEngine.setImageFromAsset(_loc1_,_loc2_,this.onPreviewImageReady);
               break;
            case QuestStatusEnum.const_543:
               break;
            case QuestStatusEnum.const_186:
               break;
            case QuestStatusEnum.const_700:
               this.var_60.controller.questEngine.setImageFromAsset(_loc1_,"icon_complete",this.onPreviewImageReady);
         }
         var _loc3_:String = ["quest",this.var_60.code,this.var_795].join("_");
         var _loc4_:* = _loc3_ + ".title";
         var _loc5_:* = _loc3_ + ".short";
         this.setText("quest.title",_loc4_);
         this.setText("quest.short",_loc5_);
      }
      
      public function get endDate() : Date
      {
         return this.var_1870;
      }
      
      private function itemGridEventProc(param1:Event, param2:IWindow = null) : void
      {
         if(param2 == null)
         {
            param2 = param1.target as IWindow;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_60.activateListItem(this);
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            if(!this.var_190)
            {
               this.var_192.color = this.var_1869;
            }
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT)
         {
            if(!this.var_190)
            {
               this.var_192.color = this.var_1457;
            }
         }
      }
      
      public function get selected() : Boolean
      {
         return this.var_190;
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.var_190 = param1;
         if(this.var_190)
         {
            this.var_192.color = this.var_1869;
         }
         else
         {
            this.var_192.color = this.var_1457;
         }
      }
      
      private function setText(param1:String, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:IWindow = this.var_17.findChildByName(param1);
         if(_loc4_)
         {
            if(param3)
            {
               param2 = "${" + param2 + "}";
            }
            _loc4_.caption = param2;
         }
      }
      
      private function setVisible(param1:String, param2:Boolean) : void
      {
         var _loc3_:IWindow = this.var_17.findChildByName(param1);
         if(_loc3_)
         {
            _loc3_.visible = param2;
         }
      }
      
      private function find(param1:IWindowContainer, param2:String) : IWindow
      {
         var _loc3_:IWindow = param1.findChildByName(param2);
         if(_loc3_ == null)
         {
            throw new Error("Window element with name: " + param2 + " cannot be found!");
         }
         return _loc3_;
      }
      
      private function onPreviewImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_730)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ != null)
         {
            _loc3_ = this.find(this.var_17,"icon") as IBitmapWrapperWindow;
            this.var_60.controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onPreviewImageReady);
         }
      }
      
      public function get view() : IWindowContainer
      {
         return this.var_17;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_385;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1948;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1947;
      }
      
      public function get localizationCode() : String
      {
         return this.var_795;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2650;
      }
   }
}
