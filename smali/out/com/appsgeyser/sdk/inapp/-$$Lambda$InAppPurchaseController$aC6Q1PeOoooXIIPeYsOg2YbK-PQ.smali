.class public final synthetic Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$aC6Q1PeOoooXIIPeYsOg2YbK-PQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$aC6Q1PeOoooXIIPeYsOg2YbK-PQ;->f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$aC6Q1PeOoooXIIPeYsOg2YbK-PQ;->f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-virtual {v0, p1, p2}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->lambda$queryDisableAdsInAppProductDetails$0$InAppPurchaseController(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
