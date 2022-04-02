.class Lcom/android/billingclient/api/BillingClientImpl$18$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$18;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$18;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$18;Ljava/lang/Exception;)V
    .registers 3

    .line 1095
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$18$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$18;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$18$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error acknowledge purchase; ex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$18$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$18$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$18;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$18;->val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    sget-object v1, Lcom/android/billingclient/api/BillingResults;->SERVICE_DISCONNECTED:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
