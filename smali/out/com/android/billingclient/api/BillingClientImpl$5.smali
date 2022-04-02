.class Lcom/android/billingclient/api/BillingClientImpl$5;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$newSku:Ljava/lang/String;

.field final synthetic val$params:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingFlowParams;Ljava/lang/String;)V
    .registers 4

    .line 594
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$5;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$5;->val$params:Lcom/android/billingclient/api/BillingFlowParams;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$5;->val$newSku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$5;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$5;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 599
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$5;->val$params:Lcom/android/billingclient/api/BillingFlowParams;

    .line 600
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingFlowParams;->getOldSku()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl$5;->val$newSku:Ljava/lang/String;

    const/4 v2, 0x5

    const-string v6, "subs"

    const/4 v7, 0x0

    .line 597
    invoke-interface/range {v1 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$5;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
