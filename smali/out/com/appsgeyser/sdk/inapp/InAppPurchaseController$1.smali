.class Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;
.super Ljava/lang/Object;
.source "InAppPurchaseController.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->connectToBilling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBillingServiceDisconnected$1$InAppPurchaseController$1()V
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V

    return-void
.end method

.method public synthetic lambda$onBillingSetupFinished$0$InAppPurchaseController$1()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V

    return-void
.end method

.method public onBillingServiceDisconnected()V
    .registers 5

    .line 89
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$002(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Z)Z

    const-string v0, "inAppPurchaseTag"

    const-string v1, "GP billing client disconnected"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    iget-object v0, v0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$1$A3zRFe2bOqVleQ_KhMdFXnF0ZCc;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$1$A3zRFe2bOqVleQ_KhMdFXnF0ZCc;-><init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5

    .line 65
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const-string v1, "inAppPurchaseTag"

    if-nez v0, :cond_61

    .line 66
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$002(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Z)Z

    const-string p1, "GP billing client successfully connected"

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$100(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)V

    .line 69
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$200(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    const-string v0, "inapp"

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 72
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable_ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 73
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 74
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-static {v1, v2}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$302(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Z)Z

    .line 75
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-static {v1, v2}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$002(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Z)Z

    .line 76
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 77
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    invoke-static {v1, v0}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->access$400(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;Lcom/android/billingclient/api/Purchase;)V

    goto :goto_2c

    .line 82
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GP billing client init fucked up, response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;->this$0:Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    iget-object p1, p1, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$1$mCkHXDGV-ya-mLC8H_MmVk3oZWo;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/inapp/-$$Lambda$InAppPurchaseController$1$mCkHXDGV-ya-mLC8H_MmVk3oZWo;-><init>(Lcom/appsgeyser/sdk/inapp/InAppPurchaseController$1;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_88
    return-void
.end method
