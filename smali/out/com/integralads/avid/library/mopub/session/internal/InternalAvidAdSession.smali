.class public abstract Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
.super Ljava/lang/Object;
.source "InternalAvidAdSession.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager$AvidBridgeManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager$AvidBridgeManagerListener;"
    }
.end annotation


# instance fields
.field private adState:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

.field private avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

.field private avidDeferredAdSessionListener:Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;

.field private avidView:Lcom/integralads/avid/library/mopub/weakreference/AvidView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/integralads/avid/library/mopub/weakreference/AvidView<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final internalContext:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

.field private isActive:Z

.field private isReady:Z

.field private lastUpdated:D

.field private listener:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;

.field private final obstructionsWhiteList:Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;

.field private webViewManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V
    .registers 11

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v6, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getSessionType()Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getMediaType()Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V

    iput-object v6, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->internalContext:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

    .line 44
    new-instance p1, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-direct {p1, v6}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;-><init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;)V

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    .line 45
    invoke-virtual {p1, p0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->setListener(Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager$AvidBridgeManagerListener;)V

    .line 46
    new-instance p1, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;

    iget-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->internalContext:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-direct {p1, p2, v0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;-><init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->webViewManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;

    .line 47
    new-instance p1, Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    .line 48
    invoke-virtual {p3}, Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;->isDeferred()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isReady:Z

    if-nez p1, :cond_4e

    .line 50
    new-instance p1, Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;

    iget-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-direct {p1, p0, p2}, Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;-><init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidDeferredAdSessionListener:Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;

    .line 52
    :cond_4e
    new-instance p1, Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;

    invoke-direct {p1}, Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;-><init>()V

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->obstructionsWhiteList:Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;

    .line 53
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onViewChanged()V

    return-void
.end method

.method private onViewChanged()V
    .registers 3

    .line 212
    invoke-static {}, Lcom/integralads/avid/library/mopub/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->lastUpdated:D

    .line 213
    sget-object v0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;->AD_STATE_IDLE:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->adState:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

    return-void
.end method


# virtual methods
.method public avidBridgeManagerDidInjectAvidJs()V
    .registers 1

    .line 151
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    return-void
.end method

.method protected cleanupViewState()V
    .registers 3

    .line 176
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 177
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-static {}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getEmptyTreeJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->publishNativeViewState(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public doesManageView(Landroid/view/View;)Z
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAvidAdSessionContext()Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->internalContext:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->getAvidAdSessionContext()Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getAvidAdSessionId()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->internalContext:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvidBridgeManager()Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    return-object v0
.end method

.method public getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidDeferredAdSessionListener:Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;

    return-object v0
.end method

.method public getListener()Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;

    return-object v0
.end method

.method public abstract getMediaType()Lcom/integralads/avid/library/mopub/session/internal/MediaType;
.end method

.method public getObstructionsWhiteList()Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->obstructionsWhiteList:Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;

    return-object v0
.end method

.method public abstract getSessionType()Lcom/integralads/avid/library/mopub/session/internal/SessionType;
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getWebView()Landroid/webkit/WebView;
.end method

.method public isActive()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isActive:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isReady:Z

    return v0
.end method

.method public onEnd()V
    .registers 2

    .line 131
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->cleanupViewState()V

    .line 132
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidDeferredAdSessionListener:Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;

    if-eqz v0, :cond_a

    .line 133
    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListenerImpl;->destroy()V

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->destroy()V

    .line 136
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->webViewManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->destroy()V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isReady:Z

    .line 138
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    .line 139
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;

    if-eqz v0, :cond_21

    .line 140
    invoke-interface {v0, p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;->sessionDidEnd(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    :cond_21
    return-void
.end method

.method public onReady()V
    .registers 2

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isReady:Z

    .line 146
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method protected onViewRegistered()V
    .registers 1

    return-void
.end method

.method protected onViewUnregistered()V
    .registers 1

    return-void
.end method

.method public publishEmptyNativeViewStateCommand(Ljava/lang/String;D)V
    .registers 7

    .line 169
    iget-wide v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->lastUpdated:D

    cmpl-double v2, p2, v0

    if-lez v2, :cond_15

    iget-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->adState:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

    sget-object p3, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;->AD_STATE_HIDDEN:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

    if-eq p2, p3, :cond_15

    .line 170
    iget-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {p2, p1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->callAvidbridge(Ljava/lang/String;)V

    .line 171
    sget-object p1, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;->AD_STATE_HIDDEN:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->adState:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

    :cond_15
    return-void
.end method

.method public publishNativeViewStateCommand(Ljava/lang/String;D)V
    .registers 7

    .line 162
    iget-wide v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->lastUpdated:D

    cmpl-double v2, p2, v0

    if-lez v2, :cond_f

    .line 163
    iget-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {p2, p1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->callAvidbridge(Ljava/lang/String;)V

    .line 164
    sget-object p1, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;->AD_STATE_VISIBLE:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->adState:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession$AdState;

    :cond_f
    return-void
.end method

.method public registerAdView(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->doesManageView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 105
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onViewChanged()V

    .line 106
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;->set(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onViewRegistered()V

    .line 108
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    :cond_14
    return-void
.end method

.method protected sessionStateCanBeChanged()V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isReady:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 195
    :goto_15
    iget-boolean v1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isActive:Z

    if-eq v1, v0, :cond_1c

    .line 196
    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->setActive(Z)V

    :cond_1c
    return-void
.end method

.method protected setActive(Z)V
    .registers 3

    .line 201
    iput-boolean p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isActive:Z

    .line 202
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_c

    .line 204
    invoke-interface {v0, p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;->sessionHasBecomeActive(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    goto :goto_f

    .line 206
    :cond_c
    invoke-interface {v0, p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;->sessionHasResignedActive(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionListener;

    return-void
.end method

.method public setScreenMode(Z)V
    .registers 3

    .line 155
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_b

    const-string p1, "active"

    goto :goto_d

    :cond_b
    const-string p1, "inactive"

    .line 157
    :goto_d
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->publishAppState(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public unregisterAdView(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->doesManageView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 114
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onViewChanged()V

    .line 115
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->cleanupViewState()V

    .line 116
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;->set(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onViewUnregistered()V

    .line 118
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    :cond_18
    return-void
.end method

.method protected updateWebViewManager()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->webViewManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->setWebView(Landroid/webkit/WebView;)V

    return-void
.end method
