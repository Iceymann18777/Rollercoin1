.class Lcom/android/billingclient/api/BillingClientImpl$18;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$acknowledgePurchaseParams:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

.field final synthetic val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 4

    .line 1081
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->val$acknowledgePurchaseParams:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$18;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 8

    const/4 v0, 0x0

    .line 1086
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1087
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1089
    invoke-static {v3}, Lcom/android/billingclient/api/BillingClientImpl;->access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->val$acknowledgePurchaseParams:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    .line 1090
    invoke-virtual {v4}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->val$acknowledgePurchaseParams:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1092
    invoke-static {v6}, Lcom/android/billingclient/api/BillingClientImpl;->access$1000(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v6

    .line 1091
    invoke-static {v5, v6}, Lcom/android/billingclient/util/BillingHelper;->constructExtraParamsForAcknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1087
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/vending/billing/IInAppBillingService;->acknowledgePurchaseExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_3e

    const-string v2, "BillingClient"

    .line 1109
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 1111
    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->getDebugMessageFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1113
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v4, Lcom/android/billingclient/api/BillingClientImpl$18$2;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl$18$2;-><init>(Lcom/android/billingclient/api/BillingClientImpl$18;ILjava/lang/String;)V

    invoke-static {v2, v4}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    return-object v0

    :catch_3e
    move-exception v1

    .line 1094
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$18;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v3, Lcom/android/billingclient/api/BillingClientImpl$18$1;

    invoke-direct {v3, p0, v1}, Lcom/android/billingclient/api/BillingClientImpl$18$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl$18;Ljava/lang/Exception;)V

    invoke-static {v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    return-object v0
.end method
