.class public Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;
.super Lcom/integralads/avid/library/mopub/session/AbstractAvidManagedAdSession;
.source "AvidManagedVideoAdSession.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/session/AbstractAvidManagedAdSession;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvidVideoPlaybackListener()Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListener;
    .registers 3

    .line 10
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;

    if-eqz v0, :cond_15

    .line 11
    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method
