.class public Lcom/integralads/avid/library/mopub/walking/async/AvidCleanupAsyncTask;
.super Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;
.source "AvidCleanupAsyncTask.java"


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;)V
    .registers 2

    .line 6
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;-><init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidCleanupAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 11
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidCleanupAsyncTask;->stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;->setPreviousState(Lorg/json/JSONObject;)V

    return-object v0
.end method
