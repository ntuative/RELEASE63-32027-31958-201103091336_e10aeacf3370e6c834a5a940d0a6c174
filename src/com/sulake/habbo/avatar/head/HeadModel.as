package com.sulake.habbo.avatar.head
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.common.CategoryBaseModel;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryModel;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   
   public class HeadModel extends CategoryBaseModel implements IAvatarEditorCategoryModel
   {
       
      
      public function HeadModel(param1:HabboAvatarEditor)
      {
         super(param1);
      }
      
      override protected function init() : void
      {
         super.init();
         initCategory(FigureData.const_174);
         initCategory(FigureData.const_219);
         initCategory(FigureData.const_233);
         initCategory(FigureData.const_224);
         initCategory(FigureData.const_217);
         var_188 = true;
         if(!var_17)
         {
            var_17 = new HeadView(this,controller.windowManager,controller.assets);
            if(var_17)
            {
               var_17.init();
            }
         }
      }
   }
}
