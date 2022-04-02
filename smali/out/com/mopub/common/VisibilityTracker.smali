.class public Lcom/mopub/common/VisibilityTracker;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/VisibilityTracker$VisibilityChecker;,
        Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;,
        Lcom/mopub/common/VisibilityTracker$TrackingInfo;,
        Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;
    }
.end annotation


# static fields
.field static final NUM_ACCESSES_BEFORE_TRIMMING:I = 0x32

.field private static final VISIBILITY_THROTTLE_MILLIS:I = 0x64


# instance fields
.field private mAccessCounter:J

.field private mIsVisibilityScheduled:Z

.field final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mTrackedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/mopub/common/VisibilityTracker$TrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrimmedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

.field private final mVisibilityHandler:Landroid/os/Handler;

.field private final mVisibilityRunnable:Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;

.field private mVisibilityTrackerListener:Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

.field mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 88
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    invoke-direct {v1}, Lcom/mopub/common/VisibilityTracker$VisibilityChecker;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/common/VisibilityTracker;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/VisibilityTracker$VisibilityChecker;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/VisibilityTracker$VisibilityChecker;Landroid/os/Handler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/mopub/common/VisibilityTracker$TrackingInfo;",
            ">;",
            "Lcom/mopub/common/VisibilityTracker$VisibilityChecker;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/mopub/common/VisibilityTracker;->mAccessCounter:J

    .line 99
    iput-object p2, p0, Lcom/mopub/common/VisibilityTracker;->mTrackedViews:Ljava/util/Map;

    .line 100
    iput-object p3, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    .line 101
    iput-object p4, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    .line 102
    new-instance p2, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;

    invoke-direct {p2, p0}, Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;-><init>(Lcom/mopub/common/VisibilityTracker;)V

    iput-object p2, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityRunnable:Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;

    .line 103
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x32

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/mopub/common/VisibilityTracker;->mTrimmedViews:Ljava/util/ArrayList;

    .line 105
    new-instance p2, Lcom/mopub/common/VisibilityTracker$1;

    invoke-direct {p2, p0}, Lcom/mopub/common/VisibilityTracker$1;-><init>(Lcom/mopub/common/VisibilityTracker;)V

    iput-object p2, p0, Lcom/mopub/common/VisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 113
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/common/VisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 114
    invoke-direct {p0, p1, p3}, Lcom/mopub/common/VisibilityTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/common/VisibilityTracker;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/mopub/common/VisibilityTracker;->mIsVisibilityScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mopub/common/VisibilityTracker;)Ljava/util/Map;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/mopub/common/VisibilityTracker;->mTrackedViews:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityChecker;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityChecker:Lcom/mopub/common/VisibilityTracker$VisibilityChecker;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/common/VisibilityTracker;)Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityTrackerListener:Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    return-object p0
.end method

.method private setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_11

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 123
    :cond_11
    invoke-static {p1, p2}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_25

    .line 125
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to set Visibility Tracker due to no available root view."

    aput-object v1, v0, p2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 131
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    aput-object v1, v0, p2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 136
    :cond_3b
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/common/VisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 137
    iget-object p2, p0, Lcom/mopub/common/VisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private trimTrackedViews(J)V
    .registers 8

    .line 188
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/VisibilityTracker$TrackingInfo;

    iget-wide v2, v2, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mAccessOrder:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_a

    .line 190
    iget-object v2, p0, Lcom/mopub/common/VisibilityTracker;->mTrimmedViews:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 194
    :cond_2c
    iget-object p1, p0, Lcom/mopub/common/VisibilityTracker;->mTrimmedViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 195
    invoke-virtual {p0, p2}, Lcom/mopub/common/VisibilityTracker;->removeView(Landroid/view/View;)V

    goto :goto_32

    .line 197
    :cond_42
    iget-object p1, p0, Lcom/mopub/common/VisibilityTracker;->mTrimmedViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILjava/lang/Integer;)V
    .registers 4

    .line 150
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/mopub/common/VisibilityTracker;->addView(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V
    .registers 10

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/mopub/common/VisibilityTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/VisibilityTracker$TrackingInfo;

    if-nez v0, :cond_1e

    .line 166
    new-instance v0, Lcom/mopub/common/VisibilityTracker$TrackingInfo;

    invoke-direct {v0}, Lcom/mopub/common/VisibilityTracker$TrackingInfo;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0}, Lcom/mopub/common/VisibilityTracker;->scheduleVisibilityCheck()V

    .line 171
    :cond_1e
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 173
    iput-object p1, v0, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mRootView:Landroid/view/View;

    .line 174
    iput p3, v0, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mMinViewablePercent:I

    .line 175
    iput p2, v0, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mMaxInvisiblePercent:I

    .line 176
    iget-wide p1, p0, Lcom/mopub/common/VisibilityTracker;->mAccessCounter:J

    iput-wide p1, v0, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mAccessOrder:J

    .line 177
    iput-object p5, v0, Lcom/mopub/common/VisibilityTracker$TrackingInfo;->mMinVisiblePx:Ljava/lang/Integer;

    .line 180
    iget-wide p1, p0, Lcom/mopub/common/VisibilityTracker;->mAccessCounter:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/mopub/common/VisibilityTracker;->mAccessCounter:J

    const-wide/16 p3, 0x32

    .line 181
    rem-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-nez p5, :cond_43

    sub-long/2addr p1, p3

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/VisibilityTracker;->trimTrackedViews(J)V

    :cond_43
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)V
    .registers 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/mopub/common/VisibilityTracker;->addView(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 212
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iput-boolean v1, p0, Lcom/mopub/common/VisibilityTracker;->mIsVisibilityScheduled:Z

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 220
    invoke-virtual {p0}, Lcom/mopub/common/VisibilityTracker;->clear()V

    .line 221
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_18

    .line 222
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 223
    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 225
    :cond_18
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityTrackerListener:Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mTrackedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public scheduleVisibilityCheck()V
    .registers 5

    .line 232
    iget-boolean v0, p0, Lcom/mopub/common/VisibilityTracker;->mIsVisibilityScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/mopub/common/VisibilityTracker;->mIsVisibilityScheduled:Z

    .line 237
    iget-object v0, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityRunnable:Lcom/mopub/common/VisibilityTracker$VisibilityRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setVisibilityTrackerListener(Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/mopub/common/VisibilityTracker;->mVisibilityTrackerListener:Lcom/mopub/common/VisibilityTracker$VisibilityTrackerListener;

    return-void
.end method
