.class Lcom/android/billingclient/api/BillingClientImpl$4;
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

.field final synthetic val$extraParamsFinal:Landroid/os/Bundle;

.field final synthetic val$finalApiVersion:I

.field final synthetic val$newSku:Ljava/lang/String;

.field final synthetic val$skuType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 576
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput p2, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->val$finalApiVersion:I

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->val$newSku:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->val$skuType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->val$extraParamsFinal:Landroid/os/Bundle;

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

    .line 579
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->val$finalApiVersion:I

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 581
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->val$newSku:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->val$skuType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/billingclient/api/BillingClientImpl$4;->val$extraParamsFinal:Landroid/os/Bundle;

    const/4 v6, 0x0

    .line 579
    invoke-interface/range {v1 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

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

    .line 576
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$4;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
