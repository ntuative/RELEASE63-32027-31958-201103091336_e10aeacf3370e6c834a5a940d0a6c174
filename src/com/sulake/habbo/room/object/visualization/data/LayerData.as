package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_876:String = "";
      
      public static const const_422:int = 0;
      
      public static const const_427:int = 255;
      
      public static const const_711:Boolean = false;
      
      public static const const_571:int = 0;
      
      public static const const_485:int = 0;
      
      public static const const_513:int = 0;
      
      public static const const_1191:int = 1;
      
      public static const const_1201:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2077:String = "";
      
      private var var_1515:int = 0;
      
      private var var_2072:int = 255;
      
      private var var_2073:Boolean = false;
      
      private var var_2074:int = 0;
      
      private var var_2075:int = 0;
      
      private var var_2076:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2077 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2077;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1515 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1515;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2072 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2072;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2073 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2073;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2074 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2074;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2075 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2075;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2076 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2076;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
