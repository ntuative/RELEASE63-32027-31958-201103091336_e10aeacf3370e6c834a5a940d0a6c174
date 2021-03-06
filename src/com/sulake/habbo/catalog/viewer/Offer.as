package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1670:String = "pricing_model_unknown";
      
      public static const const_470:String = "pricing_model_single";
      
      public static const const_498:String = "pricing_model_multi";
      
      public static const const_452:String = "pricing_model_bundle";
      
      public static const const_1582:String = "price_type_none";
      
      public static const const_824:String = "price_type_credits";
      
      public static const const_1195:String = "price_type_activitypoints";
      
      public static const const_1051:String = "price_type_credits_and_activitypoints";
       
      
      private var var_760:String;
      
      private var var_1155:String;
      
      private var _offerId:int;
      
      private var var_1830:String;
      
      private var var_1154:int;
      
      private var var_1153:int;
      
      private var var_1601:int;
      
      private var var_430:ICatalogPage;
      
      private var var_759:IProductContainer;
      
      private var var_2610:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1830 = param1.localizationId;
         this.var_1154 = param1.priceInCredits;
         this.var_1153 = param1.priceInActivityPoints;
         this.var_1601 = param1.activityPointType;
         this.var_430 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_430;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1830;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1154;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1153;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1601;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_759;
      }
      
      public function get pricingModel() : String
      {
         return this.var_760;
      }
      
      public function get priceType() : String
      {
         return this.var_1155;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2610;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2610 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1830 = "";
         this.var_1154 = 0;
         this.var_1153 = 0;
         this.var_1601 = 0;
         this.var_430 = null;
         if(this.var_759 != null)
         {
            this.var_759.dispose();
            this.var_759 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_760)
         {
            case const_470:
               this.var_759 = new SingleProductContainer(this,param1);
               break;
            case const_498:
               this.var_759 = new MultiProductContainer(this,param1);
               break;
            case const_452:
               this.var_759 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_760);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_760 = const_470;
            }
            else
            {
               this.var_760 = const_498;
            }
         }
         else if(param1.length > 1)
         {
            this.var_760 = const_452;
         }
         else
         {
            this.var_760 = const_1670;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1154 > 0 && this.var_1153 > 0)
         {
            this.var_1155 = const_1051;
         }
         else if(this.var_1154 > 0)
         {
            this.var_1155 = const_824;
         }
         else if(this.var_1153 > 0)
         {
            this.var_1155 = const_1195;
         }
         else
         {
            this.var_1155 = const_1582;
         }
      }
   }
}
