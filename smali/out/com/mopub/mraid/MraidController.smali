.class public Lcom/mopub/mraid/MraidController;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;,
        Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;,
        Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;,
        Lcom/mopub/mraid/MraidController$MraidListener;
    }
.end annotation


# instance fields
.field private final mAdReport:Lcom/mopub/common/AdReport;

.field private mAllowOrientationChange:Z

.field private final mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

.field private final mContext:Landroid/content/Context;

.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

.field private mDebugSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

.field private final mDefaultAdContainer:Landroid/widget/FrameLayout;

.field private mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

.field private mIsPaused:Z

.field private final mMraidBridge:Lcom/mopub/mraid/MraidBridge;

.field private final mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

.field private final mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field private mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field private mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

.field private mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

.field private mOriginalActivityOrientation:Ljava/lang/Integer;

.field private final mPlacementType:Lcom/mopub/mraid/PlacementType;

.field private mRootView:Landroid/view/ViewGroup;

.field private final mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

.field private final mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

.field private final mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

.field private final mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

.field private mViewState:Lcom/mopub/mraid/ViewState;

.field private mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V
    .registers 11

    .line 161
    new-instance v4, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v4, p2, p3}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v5, Lcom/mopub/mraid/MraidBridge;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, p2, v0}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v6, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-direct {v6}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V
    .registers 9

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 125
    new-instance v0, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    .line 133
    new-instance v0, Lcom/mopub/mraid/MraidController$1;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$1;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    .line 153
    sget-object v1, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 157
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 217
    new-instance v0, Lcom/mopub/mraid/MraidController$4;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$4;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 296
    new-instance v0, Lcom/mopub/mraid/MraidController$5;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$5;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    .line 175
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_45

    .line 176
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    goto :goto_4d

    .line 180
    :cond_45
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 183
    :goto_4d
    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    .line 184
    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    .line 185
    iput-object p5, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    .line 186
    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    .line 188
    sget-object p1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 190
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 191
    new-instance p2, Lcom/mopub/mraid/MraidScreenMetrics;

    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p2, p3, p1}, Lcom/mopub/mraid/MraidScreenMetrics;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 192
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    .line 193
    new-instance p1, Lcom/mopub/common/CloseableLayout;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    .line 194
    new-instance p2, Lcom/mopub/mraid/MraidController$2;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$2;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p1, p2}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 201
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance p2, Lcom/mopub/mraid/MraidController$3;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$3;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 212
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidBridge;->setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 213
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidBridge;->setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 214
    new-instance p1, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mopub/mraid/MraidController;)I
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getDisplayRotation()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-object p0
.end method

.method static callMraidListenerCallbacks(Lcom/mopub/mraid/MraidController$MraidListener;Lcom/mopub/mraid/ViewState;Lcom/mopub/mraid/ViewState;)V
    .registers 4

    .line 725
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 726
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 727
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 729
    sget-object v0, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_11

    .line 730
    invoke-interface {p0}, Lcom/mopub/mraid/MraidController$MraidListener;->onExpand()V

    goto :goto_3a

    .line 731
    :cond_11
    sget-object v0, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_1d

    .line 732
    invoke-interface {p0}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_3a

    .line 733
    :cond_1d
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p2, v0, :cond_25

    .line 734
    invoke-interface {p0}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_3a

    .line 735
    :cond_25
    sget-object v0, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_32

    sget-object p1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p2, p1, :cond_32

    const/4 p1, 0x1

    .line 736
    invoke-interface {p0, p1}, Lcom/mopub/mraid/MraidController$MraidListener;->onResize(Z)V

    goto :goto_3a

    .line 737
    :cond_32
    sget-object p1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne p2, p1, :cond_3a

    const/4 p1, 0x0

    .line 738
    invoke-interface {p0, p1}, Lcom/mopub/mraid/MraidController$MraidListener;->onResize(Z)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private detachMraidWebView()V
    .registers 2

    .line 694
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->detach()V

    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-void
.end method

.method private detachTwoPartWebView()V
    .registers 2

    .line 699
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->detach()V

    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-void
.end method

.method private getAndMemoizeRootView()Landroid/view/ViewGroup;
    .registers 2

    .line 960
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 961
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    .line 964
    :cond_a
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getDisplayRotation()I
    .registers 3

    .line 432
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 434
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private getRootView()Landroid/view/ViewGroup;
    .registers 3

    .line 947
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    return-object v0

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 953
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1a

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1c

    :cond_1a
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    :goto_1c
    return-object v0
.end method

.method private isUsingCustomClose()Z
    .registers 2

    .line 1073
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setViewState(Lcom/mopub/mraid/ViewState;)V
    .registers 6

    .line 705
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MRAID state set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 707
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 708
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewState(Lcom/mopub/mraid/ViewState;)V

    .line 711
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 712
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewState(Lcom/mopub/mraid/ViewState;)V

    .line 715
    :cond_32
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v1, :cond_39

    .line 716
    invoke-static {v1, v0, p1}, Lcom/mopub/mraid/MraidController;->callMraidListenerCallbacks(Lcom/mopub/mraid/MraidController$MraidListener;Lcom/mopub/mraid/ViewState;Lcom/mopub/mraid/ViewState;)V

    :cond_39
    const/4 p1, 0x0

    .line 719
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateScreenMetricsAsync(Ljava/lang/Runnable;)V
    .registers 7

    .line 593
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 596
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 602
    :cond_c
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->waitFor([Landroid/view/View;)Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$7;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->start(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method applyOrientation()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    sget-object v1, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    if-ne v0, v1, :cond_28

    .line 990
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    if-eqz v0, :cond_e

    .line 993
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    goto :goto_31

    .line 995
    :cond_e
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 1003
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->lockOrientation(I)V

    goto :goto_31

    .line 997
    :cond_20
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_28
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidOrientation;->getActivityInfoOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->lockOrientation(I)V

    :goto_31
    return-void
.end method

.method clampInt(III)I
    .registers 4

    .line 743
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public destroy()V
    .registers 4

    .line 669
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 672
    :try_start_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;->unregister()V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_18

    :catch_b
    move-exception v0

    .line 674
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 680
    :goto_18
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 681
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->pause(Z)V

    .line 685
    :cond_20
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 688
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->detachMraidWebView()V

    .line 689
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->detachTwoPartWebView()V

    .line 690
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    return-void

    .line 675
    :cond_2f
    throw v0
.end method

.method public fillContent(Ljava/lang/String;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)V
    .registers 6

    const-string v0, "htmlData cannot be null"

    .line 391
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    new-instance v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz p2, :cond_14

    const/4 v1, 0x0

    .line 396
    invoke-interface {p2, v0, v1}, Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;->onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    .line 398
    :cond_14
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p2, v0}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 399
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p2, p1}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    return-void
.end method

.method public getAdContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 1078
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getAllowOrientationChange()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1239
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1130
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :goto_d
    return-object v0
.end method

.method getExpandedAdContainer()Lcom/mopub/common/CloseableLayout;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    return-object v0
.end method

.method getForceOrientation()Lcom/mopub/mraid/MraidOrientation;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    return-object v0
.end method

.method getMraidWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1257
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method getOriginalActivityOrientation()Ljava/lang/Integer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1233
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method getTwoPartWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1263
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method getViewState()Lcom/mopub/mraid/ViewState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1202
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-object v0
.end method

.method getWeakActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method protected handleClose()V
    .registers 5

    .line 896
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_5

    return-void

    .line 901
    :cond_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_79

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_12

    goto :goto_79

    .line 906
    :cond_12
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_21

    .line 907
    :cond_1e
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    .line 910
    :cond_21
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_40

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_2e

    goto :goto_40

    .line 927
    :cond_2e
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_79

    .line 928
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 929
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto :goto_79

    .line 911
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_55

    .line 914
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->detachTwoPartWebView()V

    .line 915
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    goto :goto_6f

    .line 918
    :cond_55
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 919
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 923
    :goto_6f
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 926
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    :cond_79
    :goto_79
    return-void
.end method

.method handleConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_9

    .line 441
    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method protected handleCustomClose(Z)V
    .registers 4

    .line 1061
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->isUsingCustomClose()Z

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 1066
    :cond_7
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 1067
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v0, :cond_15

    .line 1068
    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    :cond_15
    return-void
.end method

.method handleExpand(Ljava/net/URI;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_a2

    .line 840
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_b

    return-void

    .line 844
    :cond_b
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_18

    return-void

    .line 848
    :cond_18
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_39

    .line 855
    new-instance v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 856
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v2, v1}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 859
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    .line 863
    :cond_39
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 865
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    const/4 v4, 0x4

    if-ne v2, v3, :cond_72

    if-eqz v0, :cond_50

    .line 867
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_63

    .line 869
    :cond_50
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 870
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    :goto_63
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getAndMemoizeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_94

    .line 875
    :cond_72
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_94

    if-eqz v0, :cond_94

    .line 879
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 880
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->handleCustomClose(Z)V

    .line 891
    sget-object p1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    return-void

    .line 837
    :cond_a2
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "Unable to expand after the WebView is destroyed"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method handleJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_9

    .line 449
    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 451
    :cond_9
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method handleOpen(Ljava/lang/String;)V
    .registers 9

    .line 1161
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_7

    .line 1162
    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onOpen()V

    .line 1166
    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1167
    sget-object v1, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v0}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_37

    .line 1168
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    .line 1169
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "Uri scheme %s is not allowed."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    const-string v2, "Unsupported MRAID Javascript command"

    invoke-direct {v0, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    aput-object v0, v1, v3

    .line 1168
    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 1174
    :cond_37
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 1176
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    if-eqz v1, :cond_47

    .line 1177
    invoke-virtual {v1}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1180
    :cond_47
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/mopub/common/UrlAction;

    sget-object v6, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v6, v5, v4

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v5, v3

    sget-object v3, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 1188
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/util/ManifestUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1189
    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1190
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mDebugSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    invoke-virtual {v0, v2}, Lcom/mopub/common/UrlHandler$Builder;->withMoPubSchemeListener(Lcom/mopub/common/UrlHandler$MoPubSchemeListener;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1193
    :cond_78
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 1195
    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method handleOrientationChange(I)V
    .registers 2

    const/4 p1, 0x0

    .line 641
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method handlePageLoad()V
    .registers 7

    .line 555
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 556
    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isSmsAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 557
    invoke-virtual {v2, v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isTelAvailable(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 558
    invoke-static {v3}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 559
    invoke-static {v4}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v4

    .line 560
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->isInlineVideoAvailable()Z

    move-result v5

    .line 555
    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mraid/MraidBridge;->notifySupports(ZZZZZ)V

    .line 561
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyPlacementType(Lcom/mopub/mraid/PlacementType;)V

    .line 562
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isViewable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyViewability(Z)V

    .line 563
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V

    .line 564
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    .line 565
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->notifyReady()V

    return-void
.end method

.method handleRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 3

    .line 935
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_7

    .line 936
    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidController$MraidListener;->onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_7
    return-void
.end method

.method handleResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 751
    iget-object v6, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v6, :cond_205

    .line 757
    iget-object v6, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v7, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v6, v7, :cond_204

    iget-object v6, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v7, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v6, v7, :cond_1e

    goto/16 :goto_204

    .line 760
    :cond_1e
    iget-object v6, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v7, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v6, v7, :cond_1fc

    .line 764
    iget-object v6, v0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v7, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-eq v6, v7, :cond_1f4

    int-to-float v6, v1

    .line 769
    iget-object v7, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v6

    int-to-float v7, v2

    .line 770
    iget-object v8, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v7

    int-to-float v8, v3

    .line 771
    iget-object v9, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    int-to-float v9, v4

    .line 772
    iget-object v10, v0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    .line 773
    iget-object v10, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v10}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    .line 774
    iget-object v8, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v8}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    .line 775
    new-instance v9, Landroid/graphics/Rect;

    add-int/2addr v6, v10

    add-int v11, v8, v7

    invoke-direct {v9, v10, v8, v6, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v6, ")"

    const-string v8, ") and offset ("

    const-string v10, "resizeProperties specified a size ("

    const-string v11, ", "

    if-nez p6, :cond_f4

    .line 779
    iget-object v12, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v12}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 780
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-gt v13, v14, :cond_a8

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-gt v13, v14, :cond_a8

    .line 790
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v9, Landroid/graphics/Rect;->left:I

    iget v15, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v0, v13, v14, v15}, Lcom/mopub/mraid/MraidController;->clampInt(III)I

    move-result v13

    .line 791
    iget v14, v12, Landroid/graphics/Rect;->top:I

    iget v15, v9, Landroid/graphics/Rect;->top:I

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v12, v12, v16

    invoke-virtual {v0, v14, v15, v12}, Lcom/mopub/mraid/MraidController;->clampInt(III)I

    move-result v12

    .line 792
    invoke-virtual {v9, v13, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_f4

    .line 781
    :cond_a8
    new-instance v5, Lcom/mopub/mraid/MraidCommandException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t allow the ad to appear within the max allowed size ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 785
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 786
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 796
    :cond_f4
    :goto_f4
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 797
    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v13, v5, v9, v12}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 798
    iget-object v13, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v13}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_1a8

    .line 807
    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 814
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 817
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 818
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v3}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 819
    iget v2, v9, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v3}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 820
    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_166

    .line 821
    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 822
    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 823
    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/mopub/mraid/MraidController;->getAndMemoizeRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_171

    .line 826
    :cond_166
    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v2, v3, :cond_171

    .line 827
    iget-object v2, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    :cond_171
    :goto_171
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 831
    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    return-void

    .line 808
    :cond_17c
    new-instance v2, Lcom/mopub/mraid/MraidCommandException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that don\'t allow the close region to appear within the resized ad."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 799
    :cond_1a8
    new-instance v5, Lcom/mopub/mraid/MraidCommandException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t allow the close region to appear within the max allowed size ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 803
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 804
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 765
    :cond_1f4
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v2, "Not allowed to resize from an interstitial ad"

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 761
    :cond_1fc
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v2, "Not allowed to resize from an already expanded ad"

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_204
    :goto_204
    return-void

    .line 752
    :cond_205
    new-instance v1, Lcom/mopub/mraid/MraidCommandException;

    const-string v2, "Unable to resize after the WebView is destroyed"

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method handleSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 1141
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1146
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    .line 1147
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 1149
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object p2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq p1, p2, :cond_1a

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object p2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne p1, p2, :cond_1d

    iget-boolean p1, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    if-nez p1, :cond_1d

    .line 1151
    :cond_1a
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V

    :cond_1d
    return-void

    .line 1142
    :cond_1e
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to force orientation to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method handleShowVideo(Ljava/lang/String;)V
    .registers 3

    .line 969
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method handleTwoPartPageLoad()V
    .registers 2

    .line 570
    new-instance v0, Lcom/mopub/mraid/MraidController$6;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$6;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method isInlineVideoAvailable()Z
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_24

    .line 544
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_24

    .line 546
    :cond_11
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v2, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    if-eq v1, v2, :cond_19

    const/4 v0, 0x1

    return v0

    .line 550
    :cond_19
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isInlineVideoAvailable(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_24
    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .registers 3

    .line 1085
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method lockOrientation(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_24

    .line 975
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 980
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    if-nez v1, :cond_20

    .line 981
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    .line 984
    :cond_20
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 976
    :cond_24
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 977
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidOrientation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPreloadFinished(Lcom/mopub/mobileads/BaseWebView;)V
    .registers 5

    .line 406
    check-cast p1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 407
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 408
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->handlePageLoad()V

    return-void
.end method

.method public onShow(Landroid/app/Activity;)V
    .registers 3

    .line 419
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 420
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz p1, :cond_12

    .line 421
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->isUsingCustomClose()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    .line 424
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V
    :try_end_15
    .catch Lcom/mopub/mraid/MraidCommandException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    const-string p1, "Failed to apply orientation."

    .line 426
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public pause(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 648
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_a

    .line 649
    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 651
    :cond_a
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_11

    .line 652
    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    :cond_11
    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 657
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 660
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_a

    .line 661
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    .line 663
    :cond_a
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_11

    .line 664
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    :cond_11
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    return-void
.end method

.method public setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V
    .registers 2

    .line 370
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    return-void
.end method

.method setOrientationBroadcastReceiver(Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1251
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    return-void
.end method

.method setRootView(Landroid/widget/FrameLayout;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1221
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method

.method setRootViewSize(II)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/mopub/mraid/MraidScreenMetrics;->setRootViewPosition(IIII)V

    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    return-void
.end method

.method setViewStateForTesting(Lcom/mopub/mraid/ViewState;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1208
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-void
.end method

.method shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z
    .registers 8

    .line 1023
    sget-object v0, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 1027
    :cond_6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    .line 1035
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1035
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_23} :catch_48

    .line 1042
    iget v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 1044
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidOrientation;->getActivityInfoOrientation()I

    move-result p1

    if-ne v3, p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1

    .line 1049
    :cond_31
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    .line 1050
    invoke-static {p1, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1053
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x400

    .line 1054
    invoke-static {p1, v0}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    :goto_47
    return v1

    :catch_48
    return v2
.end method

.method unApplyOrientation()V
    .registers 3

    .line 1013
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_15

    .line 1014
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 1015
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_15
    const/4 v0, 0x0

    .line 1017
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    return-void
.end method
