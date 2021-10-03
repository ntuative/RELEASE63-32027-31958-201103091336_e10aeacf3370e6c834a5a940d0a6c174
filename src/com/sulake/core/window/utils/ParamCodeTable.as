package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["HabboNavigatorTrackingEvent"] = const_190;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1003;
         param1["embedded_controller"] = const_1150;
         param1["resize_to_accommodate_children"] = const_70;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_846;
         param1["mouse_dragging_target"] = const_254;
         param1["mouse_dragging_trigger"] = const_337;
         param1["mouse_scaling_target"] = const_296;
         param1["mouse_scaling_trigger"] = const_554;
         param1["horizontal_mouse_scaling_trigger"] = const_265;
         param1["vertical_mouse_scaling_trigger"] = const_258;
         param1["observe_parent_input_events"] = const_1038;
         param1["optimize_region_to_layout_size"] = const_438;
         param1["parent_window"] = const_988;
         param1["relative_horizontal_scale_center"] = const_202;
         param1["relative_horizontal_scale_fixed"] = const_143;
         param1["relative_horizontal_scale_move"] = const_356;
         param1["relative_horizontal_scale_strech"] = const_366;
         param1["relative_scale_center"] = const_1043;
         param1["relative_scale_fixed"] = const_815;
         param1["relative_scale_move"] = const_1165;
         param1["relative_scale_strech"] = const_1025;
         param1["relative_vertical_scale_center"] = const_188;
         param1["relative_vertical_scale_fixed"] = const_145;
         param1["relative_vertical_scale_move"] = const_391;
         param1["relative_vertical_scale_strech"] = const_298;
         param1["on_resize_align_left"] = const_745;
         param1["on_resize_align_right"] = const_496;
         param1["on_resize_align_center"] = const_457;
         param1["on_resize_align_top"] = const_651;
         param1["on_resize_align_bottom"] = const_515;
         param1["on_resize_align_middle"] = const_567;
         param1["on_accommodate_align_left"] = const_1183;
         param1["on_accommodate_align_right"] = const_509;
         param1["on_accommodate_align_center"] = const_789;
         param1["on_accommodate_align_top"] = const_1044;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_794;
         param1["route_input_events_to_parent"] = const_473;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1188;
         param1["scalable_with_mouse"] = const_984;
         param1["reflect_horizontal_resize_to_parent"] = const_536;
         param1["reflect_vertical_resize_to_parent"] = const_428;
         param1["reflect_resize_to_parent"] = const_286;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_991;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
