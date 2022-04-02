.class Lcom/android/billingclient/api/BillingClientImpl$19;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 3

    .line 1128
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$19;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$19;->val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1131
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$19;->val$listener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    sget-object v1, Lcom/android/billingclient/api/BillingResults;->SERVICE_TIMEOUT:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
