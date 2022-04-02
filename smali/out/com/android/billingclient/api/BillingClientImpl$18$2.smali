.class Lcom/android/billingclient/api/BillingClientImpl$18$2;
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

.field final synthetic val$debugMessage:Ljava/lang/String;

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$18;ILjava/lang/String;)V
    .registers 4

    .line 1114
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$18$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$18;

    iput p2, p0, Lcom/android/billingclient/api/BillingClientImpl$18$2;->val$responseCode:I

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$18$2;->val$debugMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1117
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$18$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$18;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$18;->val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    .line 1118
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl$18$2;->val$responseCode:I

    .line 1119
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$18$2;->val$debugMessage:Ljava/lang/String;

    .line 1120
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    .line 1121
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    .line 1117
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
