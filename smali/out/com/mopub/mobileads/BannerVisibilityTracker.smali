.class Lcom/mopub/mobileads/BannerVisibilityTracker;
.super Ljava/lang/Object;
.source "BannerVisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;,
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;,
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    }
.end annotation


# static fields
.field private static final VISIBILITY_THROTTLE_MILLIS:I = 0x64


# instance fields
.field private mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

.field private mIsImpTrackerFired:Z

.field private mIsVisibilityScheduled:Z

.field final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mRootView:Landroid/view/View;

.field private final mTrackedView:Landroid/view/View;

.field private final mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

.field private final mVisibilityHandler:Landroid/os/Handler;

.field private final mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

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
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mRootView:Landroid/view/View;

    .line 96
    iput-object p3, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    .line 98
    new-instance p2, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    invoke-direct {p2, p4, p5}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;-><init>(II)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    .line 99
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    .line 100
    new-instance p2, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;-><init>(Lcom/mopub/mobileads/BannerVisibilityTracker;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    .line 102
    new-instance p2, Lcom/mopub/mobileads/BannerVisibilityTracker$1;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/BannerVisibilityTracker$1;-><init>(Lcom/mopub/mobileads/BannerVisibilityTracker;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 110
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 111
    iget-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/BannerVisibilityTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/BannerVisibilityTracker;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsImpTrackerFired:Z

    return p0
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/BannerVisibilityTracker;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsImpTrackerFired:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/BannerVisibilityTracker;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/BannerVisibilityTracker;)Landroid/view/View;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/BannerVisibilityTracker;)Landroid/view/View;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-object p0
.end method

.method private setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_11

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 120
    :cond_11
    invoke-static {p1, p2}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_25

    .line 122
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to set Visibility Tracker due to no available root view."

    aput-object v1, v0, p2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 126
    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 128
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    aput-object v1, v0, p2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_3b
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 134
    iget-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method destroy()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iput-boolean v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    .line 155
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1d

    .line 156
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 157
    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 159
    :cond_1d
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-void
.end method

.method getBannerVisibilityChecker()Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    return-object v0
.end method

.method getBannerVisibilityTrackerListener()Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-object v0
.end method

.method getVisibilityHandler()Landroid/os/Handler;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method isImpTrackerFired()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iget-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsImpTrackerFired:Z

    return v0
.end method

.method isVisibilityScheduled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    return v0
.end method

.method scheduleVisibilityCheck()V
    .registers 5

    .line 166
    iget-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setBannerVisibilityTrackerListener(Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-void
.end method
