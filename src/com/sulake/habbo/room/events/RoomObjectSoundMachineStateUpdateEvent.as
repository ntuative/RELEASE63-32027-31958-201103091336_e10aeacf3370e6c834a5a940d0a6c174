package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectSoundMachineStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const const_687:String = "ROSM_SOUND_MACHINE_SWITCHED_ON";
      
      public static const const_811:String = "ROSM_SOUND_MACHINE_SWITCHED_OFF";
      
      public static const const_1564:String = "ROSM_JUKEBOX_SWITCHED_ON";
      
      public static const const_639:String = "ROSM_JUKEBOX_SWITCHED_OFF";
      
      public static const const_504:String = "ROSM_DISPOSE";
       
      
      private var var_2640:String;
      
      public function RoomObjectSoundMachineStateUpdateEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param3,param1,param2,param4,param5);
         this.var_2640 = param3;
      }
      
      public function get updateType() : String
      {
         return this.var_2640;
      }
   }
}
