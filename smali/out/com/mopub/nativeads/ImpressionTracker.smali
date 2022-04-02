.class public Lcom/mopub/nativeads/ImpressionTracker;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;
    }
.end annotation


# static fields
.field private static final PERIOD:I = 0xfa


# instance fields
.field private final mPollHandler:Landroid/os/Handler;

.field private final mPollingRunnable:Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;

.field private final mPollingViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/TimestampWrapper<",
            "Lcom/mopub/nativeads/ImpressionInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/ImpressionInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

.field private final mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

.field private mVisibilityTrackerListener:Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 55
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    invoke-direct {v3}, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;-><init>()V

    new-instance v4, Lcom/mopub/common/VisibilityTracker;

    invoke-direct {v4, p1}, Lcom/mopub/common/VisibilityTracker;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Handler;

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/ImpressionTracker;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/mopub/common/VisibilityTracker$VisibilityChecker;Lcom/mopub/common/VisibilityTracker;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/mopub/common/VisibilityTracker$VisibilityChecker;Lcom/mopub/common/VisibilityTracker;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/ImpressionInterface;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/mopub/nativeads/TimestampWrapper<",
            "Lcom/mopub/nativeads/ImpressionInterface;",
            ">;>;",
            "Lcom/mopub/common/VisibilityTracker$VisibilityChecker;",
            "Lcom/mopub/common/VisibilityTracker;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    .line 69
    iput-object p2, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollingViews:Ljava/util/Map;

    .line 70
    iput-object p3, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    .line 71
    iput-object p4, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    .line 73
    new-instance p1, Lcom/mopub/nativeads/ImpressionTracker$1;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/ImpressionTracker$1;-><init>(Lcom/mopub/nativeads/ImpressionTracker;)V

    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTrackerListener:Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    .line 102
    iget-object p2, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    invoke-virtual {p2, p1}, Lcom/mopub/common/VisibilityTracker;->setVisibilityTrackerListener(Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;)V

    .line 104
    iput-object p5, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollHandler:Landroid/os/Handler;

    .line 105
    new-instance p1, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;-><init>(Lcom/mopub/nativeads/ImpressionTracker;)V

    iput-object p1, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollingRunnable:Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/ImpressionTracker;)Ljava/util/Map;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollingViews:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/ImpressionTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityChecker;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    return-object p0
.end method

.method private removePollingView(Landroid/view/View;)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollingViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Lcom/mopub/nativeads/ImpressionInterface;)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_9

    return-void

    .line 118
    :cond_9
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 120
    invoke-interface {p2}, Lcom/mopub/nativeads/ImpressionInterface;->isImpressionRecorded()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 124
    :cond_13
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    invoke-interface {p2}, Lcom/mopub/nativeads/ImpressionInterface;->getImpressionMinPercentageViewed()I

    move-result v1

    .line 126
    invoke-interface {p2}, Lcom/mopub/nativeads/ImpressionInterface;->getImpressionMinVisiblePx()Ljava/lang/Integer;

    move-result-object p2

    .line 125
    invoke-virtual {v0, p1, v1, p2}, Lcom/mopub/common/VisibilityTracker;->addView(Landroid/view/View;ILjava/lang/Integer;)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollingViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 141
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/common/VisibilityTracker;->clear()V

    .line 142
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 146
    invoke-virtual {p0}, Lcom/mopub/nativeads/ImpressionTracker;->clear()V

    .line 147
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/common/VisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTrackerListener:Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    return-void
.end method

.method getVisibilityTrackerListener()Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTrackerListener:Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removePollingView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mVisibilityTracker:Lcom/mopub/common/VisibilityTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/common/VisibilityTracker;->removeView(Landroid/view/View;)V

    return-void
.end method

.method scheduleNextPoll()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 158
    :cond_a
    iget-object v0, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativeads/ImpressionTracker;->mPollingRunnable:Lcom/mopub/nativeads/ImpressionTracker$PollingRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
