.class public abstract Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;
.super Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;
.source "AbstractAvidPublishAsyncTask.java"


# instance fields
.field protected final adSessionRegistry:Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

.field protected final sessionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final state:Lorg/json/JSONObject;

.field protected final timestamp:D


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

    .line 33
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;-><init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;)V

    .line 34
    iput-object p2, p0, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->adSessionRegistry:Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->sessionIds:Ljava/util/HashSet;

    .line 36
    iput-object p4, p0, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    .line 37
    iput-wide p5, p0, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->timestamp:D

    return-void
.end method


# virtual methods
.method public getAdSessionRegistry()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->adSessionRegistry:Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    return-object v0
.end method

.method public getSessionIds()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->sessionIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public getState()Lorg/json/JSONObject;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTimestamp()D
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AbstractAvidPublishAsyncTask;->timestamp:D

    return-wide v0
.end method
