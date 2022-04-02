.class public Lcom/mopub/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;,
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mAdExpiration:Ljava/lang/Runnable;

.field private volatile mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

.field private mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

.field private mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    .line 94
    new-instance p1, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 95
    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAdUnitId(Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 99
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance p1, Lcom/mopub/mobileads/MoPubInterstitial$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$1;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/MoPubInterstitial;)Landroid/app/Activity;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z
    .registers 3

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z

    move-result p1

    return p1
.end method

.method private invalidateInterstitialAdapter()V
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_a

    .line 343
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->invalidate()V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    :cond_a
    return-void
.end method

.method private setInterstitialStateDestroyed()V
    .registers 3

    .line 281
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    .line 283
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 284
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->destroy()V

    .line 285
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-void
.end method

.method private showCustomEventInterstitial()V
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_7

    .line 337
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->showInterstitial()V

    :cond_7
    return-void
.end method

.method private updatedInsets()V
    .registers 3

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1f

    .line 291
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 295
    :cond_f
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    .line 299
    :cond_1a
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setWindowInsets(Landroid/view/WindowInsets;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method declared-synchronized attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z
    .registers 10

    monitor-enter p0

    .line 132
    :try_start_1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 144
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_183

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_10c

    if-eq v0, v1, :cond_c2

    if-eq v0, v4, :cond_77

    if-eq v0, v3, :cond_6a

    if-eq v0, v2, :cond_20

    .line 273
    monitor-exit p0

    return v6

    .line 146
    :cond_20
    :try_start_20
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_183

    if-eq p1, v5, :cond_51

    if-eq p1, v1, :cond_44

    if-eq p1, v4, :cond_37

    if-eq p1, v3, :cond_32

    .line 171
    monitor-exit p0

    return v6

    .line 168
    :cond_32
    :try_start_32
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialStateDestroyed()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_183

    .line 169
    monitor-exit p0

    return v5

    .line 165
    :cond_37
    :try_start_37
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "No interstitial loading or loaded."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_183

    .line 166
    monitor-exit p0

    return v6

    .line 161
    :cond_44
    :try_start_44
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Attempted transition from IDLE to READY failed due to no known load call."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_183

    .line 163
    monitor-exit p0

    return v6

    .line 149
    :cond_51
    :try_start_51
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    .line 150
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 151
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->updatedInsets()V

    if-eqz p2, :cond_63

    .line 154
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->forceRefresh()V

    goto :goto_68

    .line 157
    :cond_63
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadAd()V
    :try_end_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_183

    .line 159
    :goto_68
    monitor-exit p0

    return v5

    .line 270
    :cond_6a
    :try_start_6a
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "MoPubInterstitial destroyed. Ignoring all requests."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_183

    .line 271
    monitor-exit p0

    return v6

    .line 244
    :cond_77
    :try_start_77
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_183

    if-eq p1, v5, :cond_b3

    if-eq p1, v4, :cond_a6

    if-eq p1, v3, :cond_a1

    if-eq p1, v2, :cond_89

    .line 266
    monitor-exit p0

    return v6

    :cond_89
    if-eqz p2, :cond_98

    .line 247
    :try_start_8b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Cannot force refresh while showing an interstitial."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_183

    .line 248
    monitor-exit p0

    return v6

    .line 251
    :cond_98
    :try_start_98
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    .line 252
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_183

    .line 253
    monitor-exit p0

    return v5

    .line 263
    :cond_a1
    :try_start_a1
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialStateDestroyed()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_183

    .line 264
    monitor-exit p0

    return v5

    .line 260
    :cond_a6
    :try_start_a6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Already showing an interstitial. Cannot show it again."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_b1
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_183

    .line 261
    monitor-exit p0

    return v6

    :cond_b3
    if-nez p2, :cond_c0

    .line 256
    :try_start_b5
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial already showing. Not loading another."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_c0
    .catchall {:try_start_b5 .. :try_end_c0} :catchall_183

    .line 258
    :cond_c0
    monitor-exit p0

    return v6

    .line 214
    :cond_c2
    :try_start_c2
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_ca
    .catchall {:try_start_c2 .. :try_end_ca} :catchall_183

    if-eq p1, v5, :cond_f6

    if-eq p1, v4, :cond_e6

    if-eq p1, v3, :cond_e1

    if-eq p1, v2, :cond_d4

    .line 241
    monitor-exit p0

    return v6

    :cond_d4
    if-eqz p2, :cond_df

    .line 218
    :try_start_d6
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    .line 219
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_183

    .line 220
    monitor-exit p0

    return v5

    .line 222
    :cond_df
    monitor-exit p0

    return v6

    .line 238
    :cond_e1
    :try_start_e1
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialStateDestroyed()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_183

    .line 239
    monitor-exit p0

    return v5

    .line 233
    :cond_e6
    :try_start_e6
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->showCustomEventInterstitial()V

    .line 234
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 235
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_f4
    .catchall {:try_start_e6 .. :try_end_f4} :catchall_183

    .line 236
    monitor-exit p0

    return v5

    .line 225
    :cond_f6
    :try_start_f6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial already loaded. Not loading another."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_10a

    .line 228
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_10a
    .catchall {:try_start_f6 .. :try_end_10a} :catchall_183

    .line 230
    :cond_10a
    monitor-exit p0

    return v6

    .line 174
    :cond_10c
    :try_start_10c
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_114
    .catchall {:try_start_10c .. :try_end_114} :catchall_183

    if-eq p1, v5, :cond_174

    if-eq p1, v1, :cond_13b

    if-eq p1, v4, :cond_12e

    if-eq p1, v3, :cond_129

    if-eq p1, v2, :cond_120

    .line 211
    monitor-exit p0

    return v6

    .line 179
    :cond_120
    :try_start_120
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    .line 180
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    :try_end_127
    .catchall {:try_start_120 .. :try_end_127} :catchall_183

    .line 181
    monitor-exit p0

    return v5

    .line 208
    :cond_129
    :try_start_129
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialStateDestroyed()V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_183

    .line 209
    monitor-exit p0

    return v5

    .line 205
    :cond_12e
    :try_start_12e
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial is not ready to be shown yet."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_139
    .catchall {:try_start_12e .. :try_end_139} :catchall_183

    .line 206
    monitor-exit p0

    return v6

    .line 190
    :cond_13b
    :try_start_13b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 191
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 193
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 194
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getCustomEventClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->isMoPubSpecific(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15c

    .line 195
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    const-wide/32 v0, 0xdbba00

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_15c
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_169

    .line 198
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->creativeDownloadSuccess()V

    .line 200
    :cond_169
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_172

    .line 201
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_172
    .catchall {:try_start_13b .. :try_end_172} :catchall_183

    .line 203
    :cond_172
    monitor-exit p0

    return v5

    :cond_174
    if-nez p2, :cond_181

    .line 185
    :try_start_176
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Already loading an interstitial."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_181
    .catchall {:try_start_176 .. :try_end_181} :catchall_183

    .line 187
    :cond_181
    monitor-exit p0

    return v6

    :catchall_183
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .registers 2

    .line 379
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    return-void
.end method

.method public forceRefresh()V
    .registers 3

    .line 314
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z

    .line 315
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getAdTimeoutDelay(I)Ljava/lang/Integer;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getAdTimeoutDelay(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method getCurrentInterstitialState()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-object v0
.end method

.method public getInterstitialAdListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method getMoPubInterstitialView()Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    return-object v0
.end method

.method public getTesting()Z
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getTesting()Z

    move-result v0

    return v0
.end method

.method public getUserDataKeywords()Ljava/lang/String;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isDestroyed()Z
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isReady()Z
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public load()V
    .registers 3

    .line 304
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 305
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    return-void
.end method

.method public onCustomEventInterstitialClicked()V
    .registers 3

    .line 459
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 462
    :cond_7
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->registerClick()V

    .line 466
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1b

    .line 467
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1b
    return-void
.end method

.method public onCustomEventInterstitialDismissed()V
    .registers 3

    .line 485
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 488
    :cond_7
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->WILL_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    .line 492
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1b

    .line 493
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1b
    return-void
.end method

.method public onCustomEventInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 7

    .line 424
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 428
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v1, :cond_24

    .line 429
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_3d

    .line 430
    :cond_24
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    if-ne v0, v1, :cond_3d

    .line 431
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 434
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    if-nez p1, :cond_4a

    .line 435
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    :cond_4a
    return-void
.end method

.method public onCustomEventInterstitialImpression()V
    .registers 2

    .line 473
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 477
    :cond_7
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_16

    .line 478
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 479
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    :cond_16
    return-void
.end method

.method public onCustomEventInterstitialLoaded()V
    .registers 2

    .line 415
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 419
    :cond_7
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    return-void
.end method

.method public onCustomEventInterstitialShown()V
    .registers 3

    .line 441
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 445
    :cond_7
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_19

    .line 448
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 449
    :cond_19
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 452
    :cond_1e
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_25

    .line 453
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_25
    return-void
.end method

.method setCurrentInterstitialState(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-void
.end method

.method setCustomEventInterstitialAdapter(Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-void
.end method

.method setInterstitialView(Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setKeywords(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setLocalExtras(Ljava/util/Map;)V

    return-void
.end method

.method public setTesting(Z)V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setTesting(Z)V

    return-void
.end method

.method public setUserDataKeywords(Ljava/lang/String;)V
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setUserDataKeywords(Ljava/lang/String;)V

    return-void
.end method

.method public show()Z
    .registers 3

    .line 309
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    move-result v0

    return v0
.end method
