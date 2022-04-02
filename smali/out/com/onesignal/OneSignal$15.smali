.class final Lcom/onesignal/OneSignal$15;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->internalFireGetTagsCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1860
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2400()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object v0

    .line 1861
    iget-boolean v2, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->serverSuccess:Z

    if-eqz v2, :cond_11

    invoke-static {v1}, Lcom/onesignal/OneSignal;->access$2402(Z)Z

    .line 1863
    :cond_11
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1864
    :try_start_16
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/OneSignal$GetTagsHandler;

    .line 1865
    iget-object v4, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    if-eqz v4, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_3e

    :cond_3b
    iget-object v4, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v4, 0x0

    :goto_3f
    invoke-interface {v3, v4}, Lcom/onesignal/OneSignal$GetTagsHandler;->tagsAvailable(Lorg/json/JSONObject;)V

    goto :goto_1e

    .line 1868
    :cond_43
    invoke-static {}, Lcom/onesignal/OneSignal;->access$2200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1869
    monitor-exit v1

    return-void

    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_16 .. :try_end_4e} :catchall_4c

    goto :goto_50

    :goto_4f
    throw v0

    :goto_50
    goto :goto_4f
.end method
