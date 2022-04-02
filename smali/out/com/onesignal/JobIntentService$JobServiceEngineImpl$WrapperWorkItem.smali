.class final Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
.super Ljava/lang/Object;
.source "JobIntentService.java"

# interfaces
.implements Lcom/onesignal/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/JobIntentService$JobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WrapperWorkItem"
.end annotation


# instance fields
.field final mJobWork:Landroid/app/job/JobWorkItem;

.field final synthetic this$0:Lcom/onesignal/JobIntentService$JobServiceEngineImpl;


# direct methods
.method constructor <init>(Lcom/onesignal/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V
    .registers 3

    .line 279
    iput-object p1, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lcom/onesignal/JobIntentService$JobServiceEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public complete()V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lcom/onesignal/JobIntentService$JobServiceEngineImpl;

    iget-object v0, v0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_5
    iget-object v1, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lcom/onesignal/JobIntentService$JobServiceEngineImpl;

    iget-object v1, v1, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_28

    if-eqz v1, :cond_26

    .line 293
    :try_start_b
    iget-object v1, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Lcom/onesignal/JobIntentService$JobServiceEngineImpl;

    iget-object v1, v1, Lcom/onesignal/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    iget-object v2, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_14} :catch_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_14} :catch_15
    .catchall {:try_start_b .. :try_end_14} :catchall_28

    goto :goto_26

    :catch_15
    move-exception v1

    :try_start_16
    const-string v2, "JobServiceEngineImpl"

    const-string v3, "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!"

    .line 305
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :catch_1e
    move-exception v1

    const-string v2, "JobServiceEngineImpl"

    const-string v3, "SecurityException: Failed to run mParams.completeWork(mJobWork)!"

    .line 303
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/onesignal/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
