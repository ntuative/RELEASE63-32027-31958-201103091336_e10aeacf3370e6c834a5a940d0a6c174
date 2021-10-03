package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_478:String = "ROFCAE_DICE_OFF";
      
      public static const const_550:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const ROOM_OBJECT_USE_HABBOWHEEL:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_441:String = "ROFCAE_STICKIE";
      
      public static const const_582:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_440:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_490:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_545:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const ROOM_OBJECT_SOUND_MACHINE_STOP:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_537:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_519:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_523:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_455:String = "ROFCAE_JUKEBOX_DISPOSE";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
