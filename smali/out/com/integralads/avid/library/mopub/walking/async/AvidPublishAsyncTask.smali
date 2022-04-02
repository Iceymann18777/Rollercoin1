.class public Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;
.super Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;
.source "AvidPublishAsyncTask.java"


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

    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;-><init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    return-void
.end method

.method private injectCommand(Ljava/lang/String;)V
    .registers 6

    .line 39
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->adSessionRegistry:Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

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

    .line 40
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->sessionIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 41
    iget-wide v2, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->timestamp:D

    invoke-virtual {v1, p1, v2, v3}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->publishNativeViewStateCommand(Ljava/lang/String;D)V

    goto :goto_a

    :cond_28
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 22
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    invoke-interface {v0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;->getPreviousState()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->equalStates(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_10
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;->setPreviousState(Lorg/json/JSONObject;)V

    .line 26
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->timestamp:D

    invoke-static {p1, v0, v1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getTreeJSONObject(Lorg/json/JSONObject;D)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidCommand;->setNativeViewState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 33
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask;->injectCommand(Ljava/lang/String;)V

    .line 35
    :cond_9
    invoke-super {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method
