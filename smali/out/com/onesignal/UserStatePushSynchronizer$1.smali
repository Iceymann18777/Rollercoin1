.class Lcom/onesignal/UserStatePushSynchronizer$1;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStatePushSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStatePushSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStatePushSynchronizer;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStatePushSynchronizer;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onSuccess(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Lcom/onesignal/UserStatePushSynchronizer;->access$002(Z)Z

    if-eqz p1, :cond_c

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const-string p1, "{}"

    .line 51
    :cond_e
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "tags"

    .line 52
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 53
    iget-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object p1, p1, Lcom/onesignal/UserStatePushSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_20} :catch_70

    .line 54
    :try_start_20
    iget-object v1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v2, v2, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    .line 55
    invoke-virtual {v3}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "tags"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v2, v2, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "tags"

    const-string v4, "tags"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v2, v2, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v2}, Lcom/onesignal/UserState;->persistState()V

    .line 63
    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-virtual {v2}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/onesignal/UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 64
    iget-object v0, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 65
    monitor-exit p1

    goto :goto_74

    :catchall_6d
    move-exception v0

    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_20 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v0
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_70} :catch_70

    :catch_70
    move-exception p1

    .line 68
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_74
    :goto_74
    return-void
.end method
