.class public Lcom/mopub/nativeads/NativeVideoController;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source "NativeVideoController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;,
        Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;,
        Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;,
        Lcom/mopub/nativeads/NativeVideoController$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_SEGMENT_COUNT:I = 0x20

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000

.field public static final RESUME_FINISHED_THRESHOLD:J = 0x2eeL

.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_CLEARED:I = 0x5

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3

.field private static final sManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/mopub/nativeads/NativeVideoController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppAudioEnabled:Z

.field private mAudioEnabled:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRenderer:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

.field private final mContext:Landroid/content/Context;

.field private volatile mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private mExoPlayerStateStartedFromIdle:Z

.field private mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

.field private final mMoPubExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;

.field private mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mOwnerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayWhenReady:Z

.field private mPreviousExoPlayerState:I

.field private mSurface:Landroid/view/Surface;

.field private mTextureView:Landroid/view/TextureView;

.field private mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private mVideoRenderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 77
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;Landroid/media/AudioManager;)V
    .registers 7

    .line 178
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    const/4 v0, 0x1

    .line 111
    iput v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mPreviousExoPlayerState:I

    .line 112
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    .line 179
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 180
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 181
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 182
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    .line 185
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mHandler:Landroid/os/Handler;

    .line 186
    iput-object p2, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 187
    iput-object p3, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    .line 188
    iput-object p4, p0, Lcom/mopub/nativeads/NativeVideoController;->mMoPubExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;

    .line 189
    iput-object p5, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .line 165
    new-instance v3, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    new-instance v0, Landroid/os/Handler;

    .line 167
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p1, v0, p2, p3}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V

    new-instance v4, Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;

    invoke-direct {v4}, Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;-><init>()V

    const-string p2, "audio"

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/media/AudioManager;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/NativeVideoController;)Landroid/content/Context;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private clearExistingPlayer()V
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    .line 392
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 393
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 394
    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 395
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->stop()V

    .line 396
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setExoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    return-void
.end method

.method public static createForId(JLandroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;Landroid/media/AudioManager;)Lcom/mopub/nativeads/NativeVideoController;
    .registers 14

    .line 140
    new-instance v6, Lcom/mopub/nativeads/NativeVideoController;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;Landroid/media/AudioManager;)V

    .line 142
    sget-object p2, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method public static createForId(JLandroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)Lcom/mopub/nativeads/NativeVideoController;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")",
            "Lcom/mopub/nativeads/NativeVideoController;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/mopub/nativeads/NativeVideoController;

    invoke-direct {v0, p2, p3, p4}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 128
    sget-object p2, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getForId(J)Lcom/mopub/nativeads/NativeVideoController;
    .registers 3

    .line 154
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/NativeVideoController;

    return-object p0
.end method

.method private preparePlayer()V
    .registers 10

    .line 400
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_8b

    .line 401
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/mopub/nativeads/NativeVideoController;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/16 v8, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoRenderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 403
    new-instance v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioRenderer:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 404
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/high16 v1, 0x10000

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZII)V

    .line 407
    new-instance v1, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    .line 408
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setAllocator(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    .line 410
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mMoPubExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/exoplayer2/Renderer;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoRenderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioRenderer:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    aput-object v5, v4, v3

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    .line 414
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v1

    .line 410
    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;->newInstance(Landroid/content/Context;[Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 416
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setExoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    .line 417
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 419
    new-instance v0, Lcom/mopub/nativeads/NativeVideoController$1;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/NativeVideoController$1;-><init>(Lcom/mopub/nativeads/NativeVideoController;)V

    .line 434
    new-instance v1, Lcom/mopub/nativeads/NativeVideoController$2;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeVideoController$2;-><init>(Lcom/mopub/nativeads/NativeVideoController;)V

    .line 441
    new-instance v2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 442
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    .line 444
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 447
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->startRepeating(J)V

    .line 450
    :cond_8b
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio()V

    .line 451
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoPlayWhenReady()V

    return-void
.end method

.method public static remove(J)Lcom/mopub/nativeads/NativeVideoController;
    .registers 3

    .line 159
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/NativeVideoController;

    return-object p0
.end method

.method private setExoAudio()V
    .registers 2

    .line 463
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio(F)V

    return-void
.end method

.method private setExoAudio(F)V
    .registers 5

    .line 467
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 468
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioRenderer:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    if-eqz v0, :cond_2d

    if-nez v1, :cond_9

    goto :goto_2d

    .line 474
    :cond_9
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 477
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ExoPlayer.createMessage returned null."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_1d
    const/4 v1, 0x2

    .line 481
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 482
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_2d
    :goto_2d
    return-void
.end method

.method private setExoPlayWhenReady()V
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_5

    return-void

    .line 459
    :cond_5
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private setExoSurface(Landroid/view/Surface;)V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 488
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoRenderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    if-eqz v0, :cond_28

    if-nez v1, :cond_9

    goto :goto_28

    .line 494
    :cond_9
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 497
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ExoPlayer.createMessage returned null."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 501
    :cond_1d
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 502
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 503
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_28
    :goto_28
    return-void
.end method

.method public static setForId(JLcom/mopub/nativeads/NativeVideoController;)V
    .registers 4

    .line 149
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    .line 287
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    return-void
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFinalFrame()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getPlaybackState()I
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x5

    return v0

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public handleCtaClick(Landroid/content/Context;)V
    .registers 4

    .line 369
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoController;->triggerImpressionTrackers()V

    .line 370
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleClickWithoutResult(Landroid/content/Context;I)V

    return-void
.end method

.method public hasFinalFrame()Z
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onAudioFocusChange(I)V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v0, :cond_5

    return-void

    .line 256
    :cond_5
    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    if-nez v0, :cond_5

    return-void

    .line 355
    :cond_5
    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeVideoController$Listener;->onError(Ljava/lang/Exception;)V

    .line 356
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->requestStop()V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_3b

    .line 310
    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_3b

    .line 311
    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    if-nez v2, :cond_16

    goto :goto_2f

    .line 316
    :cond_16
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    .line 317
    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->requestStop()V

    goto :goto_3b

    .line 312
    :cond_2f
    :goto_2f
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "onPlayerStateChanged called afer view has been recycled."

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 320
    :cond_3b
    :goto_3b
    iput p2, p0, Lcom/mopub/nativeads/NativeVideoController;->mPreviousExoPlayerState:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_43

    .line 322
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    goto :goto_47

    :cond_43
    if-ne p2, v1, :cond_47

    .line 324
    iput-boolean v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    .line 327
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    if-eqz v0, :cond_4e

    .line 328
    invoke-interface {v0, p1, p2}, Lcom/mopub/nativeads/NativeVideoController$Listener;->onStateChanged(ZI)V

    :cond_4e
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    return-void
.end method

.method public prepare(Ljava/lang/Object;)V
    .registers 3

    .line 273
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 275
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOwnerRef:Ljava/lang/ref/WeakReference;

    .line 276
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    .line 277
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->preparePlayer()V

    .line 278
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public release(Ljava/lang/Object;)V
    .registers 3

    .line 294
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOwnerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_d
    if-ne v0, p1, :cond_12

    .line 298
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    :cond_12
    return-void
.end method

.method public seekTo(J)V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_5

    return-void

    .line 337
    :cond_5
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 338
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->seekTo(J)V

    return-void
.end method

.method public setAppAudioEnabled(Z)V
    .registers 4

    .line 227
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAppAudioEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 230
    :cond_5
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAppAudioEnabled:Z

    if-eqz p1, :cond_11

    .line 233
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_16

    .line 238
    :cond_11
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_16
    return-void
.end method

.method public setAudioEnabled(Z)V
    .registers 2

    .line 222
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    .line 223
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio()V

    return-void
.end method

.method public setAudioVolume(F)V
    .registers 3

    .line 243
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 247
    :cond_5
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio(F)V

    return-void
.end method

.method public setListener(Lcom/mopub/nativeads/NativeVideoController$Listener;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    return-void
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 3

    .line 205
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 209
    :cond_5
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    .line 210
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoPlayWhenReady()V

    return-void
.end method

.method public setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .registers 4

    .line 260
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 262
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    .line 263
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    .line 264
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setTextureView(Landroid/view/TextureView;)V

    .line 265
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method triggerImpressionTrackers()V
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->checkImpressionTrackers(Z)V

    return-void
.end method
