.class public final synthetic Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$R9IiAlFHgWXav9fz58GjvCy222Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

.field public final synthetic f$1:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Lcom/android/billingclient/api/Purchase;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$R9IiAlFHgWXav9fz58GjvCy222Q;->f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$R9IiAlFHgWXav9fz58GjvCy222Q;->f$1:Lcom/android/billingclient/api/Purchase;

    return-void
.end method


# virtual methods
.method public final onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .registers 4

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$R9IiAlFHgWXav9fz58GjvCy222Q;->f$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$R9IiAlFHgWXav9fz58GjvCy222Q;->f$1:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->lambda$acknowledgeDisableAdsPurchase$1$InAppPurchaseController(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
