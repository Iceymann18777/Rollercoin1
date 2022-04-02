.class Lcom/android/billingclient/api/BillingClientImpl$20;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl;->executeAsync(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;

.field final synthetic val$onTimeout:Ljava/lang/Runnable;

.field final synthetic val$task:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V
    .registers 4

    .line 1171
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$20;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$20;->val$task:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl$20;->val$onTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$20;->val$task:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$20;->val$task:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1177
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$20;->val$task:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "BillingClient"

    const-string v1, "Async task is taking too long, cancel it!"

    .line 1178
    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$20;->val$onTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    .line 1180
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_24
    return-void
.end method
