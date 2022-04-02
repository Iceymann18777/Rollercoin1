.class Lcom/mopub/network/AdLoader$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lcom/mopub/network/MultiAdRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/network/AdLoader;


# direct methods
.method constructor <init>(Lcom/mopub/network/AdLoader;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .registers 7

    .line 88
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->RESPONSE_RECEIVED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    invoke-static {v0, v1}, Lcom/mopub/network/AdLoader;->access$002(Lcom/mopub/network/AdLoader;Z)Z

    .line 91
    iget-object v0, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    invoke-static {v0, v4}, Lcom/mopub/network/AdLoader;->access$102(Lcom/mopub/network/AdLoader;Z)Z

    .line 92
    iget-object v0, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    invoke-static {v0, p1}, Lcom/mopub/network/AdLoader;->access$200(Lcom/mopub/network/AdLoader;Lcom/mopub/volley/VolleyError;)V

    return-void
.end method

.method public onSuccessResponse(Lcom/mopub/network/MultiAdResponse;)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    invoke-static {v0}, Lcom/mopub/network/AdLoader;->access$300(Lcom/mopub/network/AdLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 98
    :try_start_7
    iget-object v1, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mopub/network/AdLoader;->access$102(Lcom/mopub/network/AdLoader;Z)Z

    .line 99
    iget-object v1, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    iput-object p1, v1, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    .line 100
    iget-object p1, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    iget-object p1, p1, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 101
    iget-object p1, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    iget-object v1, p0, Lcom/mopub/network/AdLoader$1;->this$0:Lcom/mopub/network/AdLoader;

    iget-object v1, v1, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/MultiAdResponse;->next()Lcom/mopub/network/AdResponse;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mopub/network/AdLoader;->access$400(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V

    .line 103
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw p1
.end method
