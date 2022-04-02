.class final Lcom/onesignal/OneSignal$12;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$changeTagsUpdateHandler:Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

.field final synthetic val$keyValues:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .registers 3

    .line 1660
    iput-object p1, p0, Lcom/onesignal/OneSignal$12;->val$keyValues:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/onesignal/OneSignal$12;->val$changeTagsUpdateHandler:Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1663
    iget-object v0, p0, Lcom/onesignal/OneSignal$12;->val$keyValues:Lorg/json/JSONObject;

    if-nez v0, :cond_14

    .line 1664
    iget-object v0, p0, Lcom/onesignal/OneSignal$12;->val$changeTagsUpdateHandler:Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    if-eqz v0, :cond_13

    .line 1665
    new-instance v1, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 v2, -0x1

    const-string v3, "Attempted to send null tags"

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    :cond_13
    return-void

    :cond_14
    const/4 v0, 0x0

    .line 1669
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserStateSynchronizer$GetTagsResult;->result:Lorg/json/JSONObject;

    .line 1670
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1672
    iget-object v2, p0, Lcom/onesignal/OneSignal$12;->val$keyValues:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1676
    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 1677
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1679
    :try_start_32
    iget-object v4, p0, Lcom/onesignal/OneSignal$12;->val$keyValues:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1680
    instance-of v5, v4, Lorg/json/JSONArray;

    if-nez v5, :cond_66

    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_41

    goto :goto_66

    .line 1682
    :cond_41
    iget-object v5, p0, Lcom/onesignal/OneSignal$12;->val$keyValues:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_82

    const-string v6, ""

    if-nez v5, :cond_5a

    :try_start_4b
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_5a

    .line 1687
    :cond_52
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_26

    :cond_5a
    :goto_5a
    if-eqz v0, :cond_26

    .line 1683
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1684
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_26

    .line 1681
    :cond_66
    :goto_66
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omitting key \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'! sendTags DO NOT supported nested values!"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_4b .. :try_end_81} :catchall_82

    goto :goto_26

    :catchall_82
    nop

    goto :goto_26

    .line 1692
    :cond_84
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 1693
    iget-object v0, p0, Lcom/onesignal/OneSignal$12;->val$changeTagsUpdateHandler:Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    invoke-static {v1, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    goto :goto_9d

    .line 1694
    :cond_96
    iget-object v1, p0, Lcom/onesignal/OneSignal$12;->val$changeTagsUpdateHandler:Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;

    if-eqz v1, :cond_9d

    .line 1695
    invoke-interface {v1, v0}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onSuccess(Lorg/json/JSONObject;)V

    :cond_9d
    :goto_9d
    return-void
.end method
