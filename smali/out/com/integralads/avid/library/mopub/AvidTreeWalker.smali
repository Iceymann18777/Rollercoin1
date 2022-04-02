.class public Lcom/integralads/avid/library/mopub/AvidTreeWalker;
.super Ljava/lang/Object;
.source "AvidTreeWalker.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;,
        Lcom/integralads/avid/library/mopub/AvidTreeWalker$AvidTreeWalkerTimeLogger;
    }
.end annotation


# static fields
.field private static avidTreeWalker:Lcom/integralads/avid/library/mopub/AvidTreeWalker;

.field private static handler:Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;

.field private static final viewTreeUpdaterRunnable:Ljava/lang/Runnable;


# instance fields
.field private adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

.field private endTime:D

.field private objectsCount:I

.field private processorFactory:Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;

.field private startTime:D

.field private statePublisher:Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;

.field private timeLoggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/integralads/avid/library/mopub/AvidTreeWalker$AvidTreeWalkerTimeLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->avidTreeWalker:Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    .line 194
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker$1;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker$1;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->viewTreeUpdaterRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;-><init>(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    .line 42
    new-instance v0, Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->processorFactory:Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;

    .line 43
    new-instance v0, Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;

    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v1

    new-instance v2, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;

    invoke-direct {v2}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;-><init>(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;

    return-void
.end method

.method static synthetic access$100()Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;
    .registers 1

    .line 24
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->handler:Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Runnable;
    .registers 1

    .line 24
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->viewTreeUpdaterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/integralads/avid/library/mopub/AvidTreeWalker;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->updateTreeState()V

    return-void
.end method

.method private afterWalk()V
    .registers 5

    .line 93
    invoke-static {}, Lcom/integralads/avid/library/mopub/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->endTime:D

    .line 94
    iget-wide v2, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->startTime:D

    sub-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->notifyTimeLogger(J)V

    return-void
.end method

.method private beforeWalk()V
    .registers 3

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->objectsCount:I

    .line 89
    invoke-static {}, Lcom/integralads/avid/library/mopub/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->startTime:D

    return-void
.end method

.method private checkFriendlyObstruction(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->getFriendlySessionIds(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 153
    invoke-static {p2, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->addFriendlyObstruction(Lorg/json/JSONObject;Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;
    .registers 1

    .line 51
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->avidTreeWalker:Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    return-object v0
.end method

.method private handleAdView(Landroid/view/View;Lorg/json/JSONObject;)Z
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->getSessionId(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 143
    invoke-static {p2, p1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->addAvidId(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->onAdViewProcessed()V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private notifyTimeLogger(J)V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 159
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/integralads/avid/library/mopub/AvidTreeWalker$AvidTreeWalkerTimeLogger;

    .line 160
    iget v2, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->objectsCount:I

    invoke-interface {v1, v2, p1, p2}, Lcom/integralads/avid/library/mopub/AvidTreeWalker$AvidTreeWalkerTimeLogger;->onTreeProcessed(IJ)V

    goto :goto_e

    :cond_20
    return-void
.end method

.method private startTreeWalkerUpdater()V
    .registers 5

    .line 166
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->handler:Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;

    if-nez v0, :cond_13

    .line 167
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;-><init>(Lcom/integralads/avid/library/mopub/AvidTreeWalker$1;)V

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->handler:Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;

    .line 168
    sget-object v1, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->viewTreeUpdaterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method private stopTreeWalkerUpdater()V
    .registers 3

    .line 173
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->handler:Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;

    if-eqz v0, :cond_c

    .line 174
    sget-object v1, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->viewTreeUpdaterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 175
    sput-object v0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->handler:Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;

    :cond_c
    return-void
.end method

.method private updateTreeState()V
    .registers 1

    .line 82
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->beforeWalk()V

    .line 83
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->doWalk()V

    .line 84
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->afterWalk()V

    return-void
.end method

.method private walkViewChildren(Landroid/view/View;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/walking/ViewType;)V
    .registers 6

    .line 137
    sget-object v0, Lcom/integralads/avid/library/mopub/walking/ViewType;->ROOT_VIEW:Lcom/integralads/avid/library/mopub/walking/ViewType;

    if-ne p4, v0, :cond_6

    const/4 p4, 0x1

    goto :goto_7

    :cond_6
    const/4 p4, 0x0

    :goto_7
    invoke-interface {p2, p1, p3, p0, p4}, Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;->iterateChildren(Landroid/view/View;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;Z)V

    return-void
.end method


# virtual methods
.method public addTimeLogger(Lcom/integralads/avid/library/mopub/AvidTreeWalker$AvidTreeWalkerTimeLogger;)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 56
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method doWalk()V
    .registers 8

    .line 99
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->prepare()V

    .line 100
    invoke-static {}, Lcom/integralads/avid/library/mopub/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    .line 101
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->processorFactory:Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;

    invoke-virtual {v2}, Lcom/integralads/avid/library/mopub/processing/AvidProcessorFactory;->getRootProcessor()Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v3}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->getHiddenSessionIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2b

    .line 103
    invoke-interface {v2, v4}, Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 104
    iget-object v5, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;

    iget-object v6, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v6}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->getHiddenSessionIds()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v5, v3, v6, v0, v1}, Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;->publishEmptyState(Lorg/json/JSONObject;Ljava/util/HashSet;D)V

    .line 106
    :cond_2b
    iget-object v3, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v3}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->getVisibleSessionIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_4f

    .line 107
    invoke-interface {v2, v4}, Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 108
    sget-object v5, Lcom/integralads/avid/library/mopub/walking/ViewType;->ROOT_VIEW:Lcom/integralads/avid/library/mopub/walking/ViewType;

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->walkViewChildren(Landroid/view/View;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/walking/ViewType;)V

    .line 109
    invoke-static {v3}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->fixStateFrame(Lorg/json/JSONObject;)V

    .line 110
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;

    iget-object v4, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v4}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->getVisibleSessionIds()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;->publishState(Lorg/json/JSONObject;Ljava/util/HashSet;D)V

    goto :goto_54

    .line 112
    :cond_4f
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;->cleanupCache()V

    .line 114
    :goto_54
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->cleanup()V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->stopTreeWalkerUpdater()V

    return-void
.end method

.method public removeTimeLogger(Lcom/integralads/avid/library/mopub/AvidTreeWalker$AvidTreeWalkerTimeLogger;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 62
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public start()V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->startTreeWalkerUpdater()V

    .line 68
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->updateTreeState()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->pause()V

    .line 73
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/walking/AvidStatePublisher;->cleanupCache()V

    return-void
.end method

.method public walkView(Landroid/view/View;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V
    .registers 6

    .line 119
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidViewUtil;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/walking/AvidAdViewCache;->getViewType(Landroid/view/View;)Lcom/integralads/avid/library/mopub/walking/ViewType;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/integralads/avid/library/mopub/walking/ViewType;->UNDERLYING_VIEW:Lcom/integralads/avid/library/mopub/walking/ViewType;

    if-ne v0, v1, :cond_12

    return-void

    .line 126
    :cond_12
    invoke-interface {p2, p1}, Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    invoke-static {p3, v1}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->addChildState(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 128
    invoke-direct {p0, p1, v1}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->handleAdView(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result p3

    if-nez p3, :cond_25

    .line 130
    invoke-direct {p0, p1, v1}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->checkFriendlyObstruction(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 131
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->walkViewChildren(Landroid/view/View;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/walking/ViewType;)V

    .line 133
    :cond_25
    iget p1, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->objectsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->objectsCount:I

    return-void
.end method
