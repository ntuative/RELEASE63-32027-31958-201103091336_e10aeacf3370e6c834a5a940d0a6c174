package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_680;
         param1["bitmap"] = const_783;
         param1["border"] = const_760;
         param1["border_notify"] = const_1655;
         param1["button"] = const_576;
         param1["button_thick"] = const_619;
         param1["button_icon"] = const_1565;
         param1["button_group_left"] = const_699;
         param1["button_group_center"] = const_847;
         param1["button_group_right"] = const_852;
         param1["canvas"] = const_901;
         param1["checkbox"] = const_615;
         param1["closebutton"] = const_1052;
         param1["container"] = const_401;
         param1["container_button"] = const_661;
         param1["display_object_wrapper"] = const_649;
         param1["dropmenu"] = const_556;
         param1["dropmenu_item"] = const_510;
         param1["frame"] = const_335;
         param1["frame_notify"] = const_1607;
         param1["header"] = const_620;
         param1["html"] = const_1076;
         param1["icon"] = const_1072;
         param1["itemgrid"] = const_1169;
         param1["itemgrid_horizontal"] = const_486;
         param1["itemgrid_vertical"] = const_899;
         param1["itemlist"] = const_985;
         param1["itemlist_horizontal"] = const_394;
         param1["itemlist_vertical"] = const_372;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1618;
         param1["menu"] = const_1643;
         param1["menu_item"] = const_1527;
         param1["submenu"] = const_1213;
         param1["minimizebox"] = const_1421;
         param1["notify"] = const_1667;
         param1["HabboNavigatorTrackingEvent"] = const_721;
         param1["password"] = const_698;
         param1["radiobutton"] = const_770;
         param1["region"] = const_579;
         param1["restorebox"] = const_1552;
         param1["scaler"] = const_900;
         param1["scaler_horizontal"] = const_1632;
         param1["scaler_vertical"] = const_1409;
         param1["scrollbar_horizontal"] = const_462;
         param1["scrollbar_vertical"] = const_803;
         param1["scrollbar_slider_button_up"] = const_1226;
         param1["scrollbar_slider_button_down"] = const_1045;
         param1["scrollbar_slider_button_left"] = const_1084;
         param1["scrollbar_slider_button_right"] = const_1060;
         param1["scrollbar_slider_bar_horizontal"] = const_1050;
         param1["scrollbar_slider_bar_vertical"] = const_1184;
         param1["scrollbar_slider_track_horizontal"] = const_1125;
         param1["scrollbar_slider_track_vertical"] = const_1217;
         param1["scrollable_itemlist"] = const_1656;
         param1["scrollable_itemlist_vertical"] = const_499;
         param1["scrollable_itemlist_horizontal"] = const_1196;
         param1["selector"] = const_704;
         param1["selector_list"] = const_678;
         param1["submenu"] = const_1213;
         param1["tab_button"] = const_459;
         param1["tab_container_button"] = const_1028;
         param1["tab_context"] = const_469;
         param1["tab_content"] = const_1071;
         param1["tab_selector"] = const_753;
         param1["text"] = const_423;
         param1["input"] = const_860;
         param1["toolbar"] = const_1528;
         param1["tooltip"] = const_407;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
