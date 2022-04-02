.class public Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;
.super Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedAdSession;
.source "InternalAvidManagedVideoAdSession.java"


# instance fields
.field private avidVideoPlaybackListener:Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V

    .line 14
    new-instance p1, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->getAvidBridgeManager()Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;-><init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->avidVideoPlaybackListener:Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    return-void
.end method


# virtual methods
.method public getAvidVideoPlaybackListener()Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->avidVideoPlaybackListener:Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    return-object v0
.end method

.method public getMediaType()Lcom/integralads/avid/library/mopub/session/internal/MediaType;
    .registers 2

    .line 28
    sget-object v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->VIDEO:Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    return-object v0
.end method

.method public getSessionType()Lcom/integralads/avid/library/mopub/session/internal/SessionType;
    .registers 2

    .line 23
    sget-object v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->MANAGED_VIDEO:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    return-object v0
.end method

.method public onEnd()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->avidVideoPlaybackListener:Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->destroy()V

    .line 34
    invoke-super {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedAdSession;->onEnd()V

    return-void
.end method
