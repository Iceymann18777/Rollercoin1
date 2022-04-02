.class Lcom/android/billingclient/api/BillingClientImpl$10$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$10;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$10;

.field final synthetic val$result:Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$10;Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;)V
    .registers 3

    .line 781
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$10$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$10;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$10$1;->val$result:Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 784
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$10$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$10;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$10;->val$listener:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    .line 785
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$10$1;->val$result:Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    .line 786
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$10$1;->val$result:Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    .line 787
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$10$1;->val$result:Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;

    .line 789
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails$SkuDetailsResult;->getSkuDetailsList()Ljava/util/List;

    move-result-object v2

    .line 784
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
