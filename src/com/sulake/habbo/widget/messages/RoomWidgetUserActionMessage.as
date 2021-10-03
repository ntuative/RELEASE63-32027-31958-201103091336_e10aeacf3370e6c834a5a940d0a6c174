package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_868:String = "RWUAM_WHISPER_USER";
      
      public static const const_819:String = "RWUAM_IGNORE_USER";
      
      public static const const_870:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_581:String = "RWUAM_KICK_USER";
      
      public static const const_635:String = "RWUAM_BAN_USER";
      
      public static const const_884:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_666:String = "RWUAM_RESPECT_USER";
      
      public static const const_832:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_796:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_697:String = "RWUAM_START_TRADING";
      
      public static const const_695:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_471:String = "RWUAM_KICK_BOT";
      
      public static const const_849:String = "RWUAM_REPORT";
      
      public static const const_585:String = "RWUAM_PICKUP_PET";
      
      public static const const_1669:String = "RWUAM_TRAIN_PET";
      
      public static const const_431:String = " RWUAM_RESPECT_PET";
      
      public static const const_348:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_761:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
