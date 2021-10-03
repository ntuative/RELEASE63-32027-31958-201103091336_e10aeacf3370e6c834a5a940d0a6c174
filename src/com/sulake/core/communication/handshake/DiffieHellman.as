package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_892:BigInteger;
      
      private var var_2087:BigInteger;
      
      private var var_1547:BigInteger;
      
      private var var_2088:BigInteger;
      
      private var var_1271:BigInteger;
      
      private var var_1546:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1271 = param1;
         this.var_1546 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1271.toString() + ",generator: " + this.var_1546.toString() + ",secret: " + param1);
         this.var_892 = new BigInteger();
         this.var_892.fromRadix(param1,param2);
         this.var_2087 = this.var_1546.modPow(this.var_892,this.var_1271);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1547 = new BigInteger();
         this.var_1547.fromRadix(param1,param2);
         this.var_2088 = this.var_1547.modPow(this.var_892,this.var_1271);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2087.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2088.toRadix(param1);
      }
   }
}
