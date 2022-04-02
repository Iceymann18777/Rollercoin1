.class public abstract Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;
.super Ljava/lang/Object;
.source "AbstractAvidAdSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private avidAdSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->avidAdSessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endSession()V
    .registers 3

    .line 40
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onEnd()V

    :cond_11
    return-void
.end method

.method public getAvidAdSessionId()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->avidAdSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;
    .registers 3

    .line 47
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 48
    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_17

    return-object v0

    .line 50
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is not deferred. Please ensure you are only using AvidDeferredAdSessionListener for deferred AVID ad session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAdView(Landroid/view/View;Landroid/app/Activity;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v0

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->avidAdSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 27
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->registerAdView(Landroid/view/View;)V

    .line 29
    :cond_f
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/integralads/avid/library/mopub/AvidManager;->registerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public registerFriendlyObstruction(Landroid/view/View;)V
    .registers 4

    .line 58
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 60
    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getObstructionsWhiteList()Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;->add(Landroid/view/View;)V

    :cond_15
    return-void
.end method

.method public unregisterAdView(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v0

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->avidAdSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 35
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->unregisterAdView(Landroid/view/View;)V

    :cond_f
    return-void
.end method
