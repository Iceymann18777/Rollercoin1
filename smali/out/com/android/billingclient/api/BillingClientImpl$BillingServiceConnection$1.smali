.class Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->notifySetupResult(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

.field final synthetic val$result:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V
    .registers 3

    .line 1516
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->val$result:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1519
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1300(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1520
    :try_start_7
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1400(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1521
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1400(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;->val$result:Lcom/android/billingclient/api/BillingResult;

    invoke-interface {v1, v2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    .line 1523
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method
