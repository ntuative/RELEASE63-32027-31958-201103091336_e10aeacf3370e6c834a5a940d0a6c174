package com.sulake.habbo.communication.messages.incoming.poll
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.poll.PollErrorParser;
   
   public class PollErrorEvent extends MessageEvent implements IMessageEvent
   {
       
      
      public function PollErrorEvent(param1:Function)
      {
         super(param1,PollErrorParser);
      }
      
      public function getParser() : PollErrorParser
      {
         return var_10 as PollErrorParser;
      }
   }
}
