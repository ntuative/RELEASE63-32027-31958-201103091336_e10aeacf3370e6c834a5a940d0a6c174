package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_764:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_730)
         {
            _structure = null;
            _assets = null;
            var_263 = null;
            var_277 = null;
            _figure = null;
            var_537 = null;
            var_322 = null;
            if(!var_1254 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_721 = null;
            var_730 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_764[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_764[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_398:
               switch(_loc3_)
               {
                  case AvatarAction.const_784:
                  case AvatarAction.const_546:
                  case AvatarAction.const_376:
                  case AvatarAction.const_663:
                  case AvatarAction.const_344:
                  case AvatarAction.const_660:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_317:
            case AvatarAction.const_684:
            case AvatarAction.const_238:
            case AvatarAction.const_727:
            case AvatarAction.const_897:
            case AvatarAction.const_818:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
