.class public Lcom/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask;
.super Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;
.source "AvidEmptyPublishAsyncTask.java"


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;",
            "Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "D)V"
        }
    .end annotation

    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;-><init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 20
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask;->state:Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask;->timestamp:D

    invoke-static {p1, v0, v1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getTreeJSONObject(Lorg/json/JSONObject;D)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidCommand;->setNativeViewState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 6

    .line 26
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask;->adSessionRegistry:Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInternalAvidAdSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    .line 27
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask;->sessionIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 28
    iget-wide v2, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidEmptyPublishAsyncTask;->timestamp:D

    invoke-virtual {v1, p1, v2, v3}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->publishEmptyNativeViewStateCommand(Ljava/lang/String;D)V

    goto :goto_a

    .line 31
    :cond_28
    invoke-super {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method
