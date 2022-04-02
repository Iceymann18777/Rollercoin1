.class public Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;
.super Lcom/integralads/avid/library/mopub/base/AvidBaseListenerImpl;
.source "AvidDeferredAdSessionListenerImpl.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/integralads/avid/library/mopub/base/AvidBaseListenerImpl;-><init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V

    return-void
.end method


# virtual methods
.method public recordReadyEvent()V
    .registers 3

    .line 15
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;->assertSessionIsNotEnded()V

    .line 16
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;->getAvidAdSession()Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isReady()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 21
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;->getAvidBridgeManager()Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->publishReadyEventForDeferredAdSession()V

    .line 22
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;->getAvidAdSession()Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onReady()V

    return-void

    .line 17
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is already ready. Please ensure you are only calling recordReadyEvent once for the deferred AVID ad session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
