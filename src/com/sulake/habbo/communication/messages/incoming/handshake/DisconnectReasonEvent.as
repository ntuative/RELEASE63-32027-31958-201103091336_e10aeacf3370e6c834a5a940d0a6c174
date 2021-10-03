package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1753:int = 0;
      
      public static const const_1429:int = 1;
      
      public static const const_1432:int = 2;
      
      public static const const_1945:int = 3;
      
      public static const const_1818:int = 4;
      
      public static const const_1796:int = 5;
      
      public static const const_1600:int = 10;
      
      public static const const_1774:int = 11;
      
      public static const const_1881:int = 12;
      
      public static const const_1754:int = 13;
      
      public static const const_1748:int = 16;
      
      public static const const_1855:int = 17;
      
      public static const const_1965:int = 18;
      
      public static const const_1951:int = 19;
      
      public static const const_1900:int = 20;
      
      public static const const_1845:int = 22;
      
      public static const const_1744:int = 23;
      
      public static const const_1934:int = 24;
      
      public static const const_1871:int = 25;
      
      public static const const_1742:int = 26;
      
      public static const const_1964:int = 27;
      
      public static const const_1810:int = 28;
      
      public static const const_1961:int = 29;
      
      public static const const_1807:int = 100;
      
      public static const const_1747:int = 101;
      
      public static const const_1888:int = 102;
      
      public static const const_1784:int = 103;
      
      public static const const_1806:int = 104;
      
      public static const const_1799:int = 105;
      
      public static const const_1956:int = 106;
      
      public static const const_1916:int = 107;
      
      public static const const_1817:int = 108;
      
      public static const const_1950:int = 109;
      
      public static const const_1969:int = 110;
      
      public static const const_1898:int = 111;
      
      public static const const_1758:int = 112;
      
      public static const const_1837:int = 113;
      
      public static const const_1862:int = 114;
      
      public static const const_1966:int = 115;
      
      public static const const_1919:int = 116;
      
      public static const const_1849:int = 117;
      
      public static const const_1924:int = 118;
      
      public static const const_1825:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1429:
            case const_1600:
               return "banned";
            case const_1432:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
