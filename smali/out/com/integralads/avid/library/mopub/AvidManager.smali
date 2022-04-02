.class public Lcom/integralads/avid/library/mopub/AvidManager;
.super Ljava/lang/Object;
.source "AvidManager.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;
.implements Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;
.implements Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistryListener;


# static fields
.field private static avidManagerInstance:Lcom/integralads/avid/library/mopub/AvidManager;

.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidManager;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/AvidManager;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->avidManagerInstance:Lcom/integralads/avid/library/mopub/AvidManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/mopub/AvidManager;
    .registers 1

    .line 21
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->avidManagerInstance:Lcom/integralads/avid/library/mopub/AvidManager;

    return-object v0
.end method

.method private isActive()Z
    .registers 2

    .line 68
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private notifyAvidReady()V
    .registers 3

    .line 72
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistryListener;)V

    .line 73
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInternalAvidAdSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    .line 74
    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getAvidBridgeManager()Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->onAvidJsReady()V

    goto :goto_14

    .line 76
    :cond_28
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistryListener;)V

    return-void
.end method

.method private start()V
    .registers 2

    .line 51
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->setStateWatcherListener(Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;)V

    .line 52
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->start()V

    .line 53
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 54
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->start()V

    :cond_1f
    return-void
.end method

.method private stop()V
    .registers 2

    .line 60
    invoke-static {}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->getInstance()Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->cleanup()V

    .line 61
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->stop()V

    .line 62
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->stop()V

    .line 63
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidLoader;->getInstance()Lcom/integralads/avid/library/mopub/AvidLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidLoader;->unregisterAvidLoader()V

    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public findAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;
    .registers 3

    .line 38
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->findAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;

    move-result-object p1

    return-object p1
.end method

.method public findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    .registers 3

    .line 42
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 25
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    if-nez v0, :cond_1f

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    .line 27
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object p1

    sget-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->init(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistryListener;)V

    .line 29
    sget-object p1, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->init(Landroid/content/Context;)V

    :cond_1f
    return-void
.end method

.method public onAppStateChanged(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 92
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->start()V

    goto :goto_11

    .line 94
    :cond_a
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->pause()V

    :goto_11
    return-void
.end method

.method public onAvidLoaded()V
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 82
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->notifyAvidReady()V

    .line 83
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->hasActiveSessions()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 84
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->start()V

    :cond_16
    return-void
.end method

.method public registerActivity(Landroid/app/Activity;)V
    .registers 3

    .line 46
    invoke-static {}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->getInstance()Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public registerAvidAdSession(Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V
    .registers 4

    .line 34
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->registerAvidAdSession(Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    return-void
.end method

.method public registryHasActiveSessionsChanged(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;)V
    .registers 2

    .line 112
    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->hasActiveSessions()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidBridge;->isAvidJsReady()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 113
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->start()V

    goto :goto_13

    .line 115
    :cond_10
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->stop()V

    :goto_13
    return-void
.end method

.method public registryHasSessionsChanged(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;)V
    .registers 3

    .line 100
    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 104
    :cond_7
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidBridge;->isAvidJsReady()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 105
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidLoader;->getInstance()Lcom/integralads/avid/library/mopub/AvidLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/integralads/avid/library/mopub/AvidLoader;->setListener(Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;)V

    .line 106
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidLoader;->getInstance()Lcom/integralads/avid/library/mopub/AvidLoader;

    move-result-object p1

    sget-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/integralads/avid/library/mopub/AvidLoader;->registerAvidLoader(Landroid/content/Context;)V

    :cond_1d
    return-void
.end method
