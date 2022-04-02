.class final Landroidx/media2/player/exoplayer/ExoPlayerWrapper;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;,
        Landroidx/media2/player/exoplayer/ExoPlayerWrapper$FileDescriptorRegistry;,
        Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemInfo;,
        Landroidx/media2/player/exoplayer/ExoPlayerWrapper$PollBufferRunnable;,
        Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;,
        Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;
    }
.end annotation


# instance fields
.field private mAudioSessionId:I

.field private mAudioSink:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

.field private mAuxEffectId:I

.field private mAuxEffectSendLevel:F

.field private final mBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHasAudioAttributes:Z

.field private final mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

.field private final mLooper:Landroid/os/Looper;

.field private mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

.field private mNewlyPrepared:Z

.field private mPendingSeek:Z

.field private mPlaybackParams:Landroidx/media2/player/PlaybackParams;

.field private mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

.field private mPlayerHandler:Landroid/os/Handler;

.field private final mPollBufferRunnable:Ljava/lang/Runnable;

.field private mPrepared:Z

.field private mRebuffering:Z

.field private mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;Landroid/os/Looper;)V
    .registers 4

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    .line 194
    iput-object p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mLooper:Landroid/os/Looper;

    .line 195
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHandler:Landroid/os/Handler;

    .line 197
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    .line 198
    new-instance p1, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$PollBufferRunnable;

    invoke-direct {p1, p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$PollBufferRunnable;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerWrapper;)V

    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPollBufferRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private maybeNotifyBufferingEvents()V
    .registers 7

    .line 643
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPrepared:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mRebuffering:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mRebuffering:Z

    .line 645
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItemIsRemote()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 646
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    .line 647
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 646
    invoke-interface {v0, v1, v3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onBandwidthSample(Landroidx/media2/common/MediaItem;I)V

    .line 649
    :cond_26
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onBufferingStarted(Landroidx/media2/common/MediaItem;)V

    :cond_2f
    return-void
.end method

.method private maybeNotifyEndedEvents()V
    .registers 3

    .line 682
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPendingSeek:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 684
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPendingSeek:Z

    .line 685
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-interface {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onSeekCompleted()V

    .line 687
    :cond_c
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 688
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->onPlayerEnded()V

    .line 689
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_1e
    return-void
.end method

.method private maybeNotifyReadyEvents()V
    .registers 7

    .line 654
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 655
    iget-boolean v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPrepared:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 656
    iget-boolean v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPendingSeek:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    .line 658
    iput-boolean v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPrepared:Z

    .line 659
    iput-boolean v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mNewlyPrepared:Z

    .line 660
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v1, v4}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->onPositionDiscontinuity(Z)V

    .line 664
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-interface {v1, v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onPrepared(Landroidx/media2/common/MediaItem;)V

    goto :goto_27

    :cond_1e
    if-eqz v3, :cond_27

    .line 668
    iput-boolean v4, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPendingSeek:Z

    .line 669
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-interface {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onSeekCompleted()V

    .line 671
    :cond_27
    :goto_27
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mRebuffering:Z

    if-eqz v0, :cond_51

    .line 672
    iput-boolean v4, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mRebuffering:Z

    .line 673
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItemIsRemote()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 674
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    .line 675
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 674
    invoke-interface {v0, v1, v3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onBandwidthSample(Landroidx/media2/common/MediaItem;I)V

    .line 677
    :cond_48
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onBufferingEnded(Landroidx/media2/common/MediaItem;)V

    :cond_51
    return-void
.end method

.method private maybeUpdateTimerForPlaying()V
    .registers 2

    .line 635
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->onPlaying()V

    return-void
.end method

.method private maybeUpdateTimerForStopped()V
    .registers 2

    .line 639
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->onStopped()V

    return-void
.end method

.method private static updatePlayerAudioSessionId(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;I)V
    .registers 4

    .line 809
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$1;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$1;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 496
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    if-eqz v0, :cond_1b

    .line 497
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPollBufferRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 498
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 500
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->clear()V

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHasAudioAttributes:Z

    :cond_1b
    return-void
.end method

.method public deselectTrack(I)V
    .registers 3

    .line 409
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/TrackSelector;->deselectTrack(I)V

    return-void
.end method

.method public getAudioAttributes()Landroidx/media/AudioAttributesCompat;
    .registers 2

    .line 335
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHasAudioAttributes:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 336
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getAudioAttributes()Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->getAudioAttributesCompat(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public getBufferedPosition()J
    .registers 5

    .line 260
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getState()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 261
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 262
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 264
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getStartPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_21
    return-wide v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/common/MediaItem;
    .registers 2

    .line 210
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .registers 5

    .line 245
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getState()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    const-wide/16 v0, 0x0

    .line 246
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 247
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 249
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->getStartPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_27
    return-wide v0
.end method

.method public getDuration()J
    .registers 6

    .line 255
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItemDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    const-wide/16 v0, -0x1

    :cond_11
    return-wide v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 202
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getPlaybackParams()Landroidx/media2/player/PlaybackParams;
    .registers 2

    .line 373
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlaybackParams:Landroidx/media2/player/PlaybackParams;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .registers 3

    .line 401
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/TrackSelector;->getSelectedTrack(I)I

    move-result p1

    return p1
.end method

.method public getState()I
    .registers 5

    .line 270
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->hasError()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x3ed

    return v0

    .line 273
    :cond_9
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mNewlyPrepared:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x3ea

    return v0

    .line 276
    :cond_10
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    .line 277
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_36

    const/4 v2, 0x2

    const/16 v3, 0x3eb

    if-eq v0, v2, :cond_35

    const/4 v2, 0x3

    if-eq v0, v2, :cond_31

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    goto :goto_35

    .line 290
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_31
    if-eqz v1, :cond_35

    const/16 v3, 0x3ec

    :cond_35
    :goto_35
    return v3

    :cond_36
    const/16 v0, 0x3e9

    return v0
.end method

.method public getTimestamp()Landroidx/media2/player/MediaTimestamp;
    .registers 9

    .line 442
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const-wide/16 v0, 0x0

    goto :goto_14

    .line 443
    :cond_c
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/C;->msToUs(J)J

    move-result-wide v0

    :goto_14
    move-wide v3, v0

    .line 444
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlaybackParams:Landroidx/media2/player/PlaybackParams;

    .line 445
    invoke-virtual {v0}, Landroidx/media2/player/PlaybackParams;->getSpeed()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v7, v0

    goto :goto_34

    :cond_32
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 446
    :goto_34
    new-instance v0, Landroidx/media2/player/MediaTimestamp;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/media2/player/MediaTimestamp;-><init>(JJF)V

    return-object v0
.end method

.method public getTrackInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/TrackSelector;->getTrackInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .registers 2

    .line 381
    iget v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    .line 377
    iget v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mVideoWidth:I

    return v0
.end method

.method public getVolume()F
    .registers 2

    .line 393
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method handleAudioSessionId(I)V
    .registers 2

    .line 603
    iput p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mAudioSessionId:I

    return-void
.end method

.method handleMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .registers 10

    .line 616
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_22

    .line 618
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;

    .line 619
    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    .line 620
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v4

    new-instance v5, Landroidx/media2/player/TimedMetaData;

    iget-wide v6, v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    iget-object v2, v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    invoke-direct {v5, v6, v7, v2}, Landroidx/media2/player/TimedMetaData;-><init>(J[B)V

    .line 619
    invoke-interface {v3, v4, v5}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onTimedMetadata(Landroidx/media2/common/MediaItem;Landroidx/media2/player/TimedMetaData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method handlePlayerError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .registers 5

    .line 597
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getTimestamp()Landroidx/media2/player/MediaTimestamp;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMediaTimeDiscontinuity(Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V

    .line 598
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-static {p1}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->getError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onError(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method handlePlayerStateChanged(ZI)V
    .registers 6

    .line 527
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getTimestamp()Landroidx/media2/player/MediaTimestamp;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMediaTimeDiscontinuity(Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_16

    if-eqz p1, :cond_16

    .line 530
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->maybeUpdateTimerForPlaying()V

    goto :goto_19

    .line 532
    :cond_16
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->maybeUpdateTimerForStopped()V

    :goto_19
    const/4 p1, 0x2

    if-eq p2, v0, :cond_27

    if-ne p2, p1, :cond_1f

    goto :goto_27

    .line 538
    :cond_1f
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPollBufferRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2e

    .line 536
    :cond_27
    :goto_27
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPollBufferRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2e
    const/4 v1, 0x1

    if-eq p2, v1, :cond_49

    if-eq p2, p1, :cond_46

    if-eq p2, v0, :cond_42

    const/4 p1, 0x4

    if-ne p2, p1, :cond_3c

    .line 549
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->maybeNotifyEndedEvents()V

    goto :goto_49

    .line 555
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 546
    :cond_42
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->maybeNotifyReadyEvents()V

    goto :goto_49

    .line 543
    :cond_46
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->maybeNotifyBufferingEvents()V

    :cond_49
    :goto_49
    return-void
.end method

.method handlePlayerTracksChanged()V
    .registers 3

    .line 569
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Landroidx/media2/player/exoplayer/TrackSelector;->handlePlayerTracksChanged(Landroidx/media2/exoplayer/external/Player;)V

    .line 570
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/TrackSelector;->hasPendingMetadataUpdate()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 571
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMetadataChanged(Landroidx/media2/common/MediaItem;)V

    :cond_18
    return-void
.end method

.method handlePositionDiscontinuity(I)V
    .registers 5

    .line 590
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getTimestamp()Landroidx/media2/player/MediaTimestamp;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMediaTimeDiscontinuity(Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V

    .line 591
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    if-nez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->onPositionDiscontinuity(Z)V

    return-void
.end method

.method handleRenderedFirstFrame()V
    .registers 3

    .line 522
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onVideoRenderingStart(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method handleSeekProcessed()V
    .registers 3

    .line 577
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_c

    .line 578
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-interface {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onSeekCompleted()V

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPendingSeek:Z

    .line 582
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 584
    invoke-direct {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->maybeNotifyReadyEvents()V

    :cond_1b
    return-void
.end method

.method handleSubtitleData([BJ)V
    .registers 14

    .line 608
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/player/exoplayer/TrackSelector;->getSelectedTrack(I)I

    move-result v0

    .line 609
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 610
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    new-instance v9, Landroidx/media2/common/SubtitleData;

    const-wide/16 v6, 0x0

    move-object v3, v9

    move-wide v4, p2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media2/common/SubtitleData;-><init>(JJ[B)V

    invoke-interface {v2, v1, v0, v9}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onSubtitleData(Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V

    return-void
.end method

.method handleTextRendererChannelAvailable(II)V
    .registers 4

    .line 561
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/player/exoplayer/TrackSelector;->handleTextRendererChannelAvailable(II)V

    .line 562
    iget-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    invoke-virtual {p1}, Landroidx/media2/player/exoplayer/TrackSelector;->hasPendingMetadataUpdate()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 563
    iget-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMetadataChanged(Landroidx/media2/common/MediaItem;)V

    :cond_16
    return-void
.end method

.method handleVideoSizeChanged(IIF)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_d

    int-to-float v0, p1

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 512
    iput p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mVideoWidth:I

    goto :goto_f

    .line 514
    :cond_d
    iput p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mVideoWidth:I

    .line 516
    :goto_f
    iput p2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mVideoHeight:I

    .line 517
    iget-object p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-interface {p3, v0, p1, p2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onVideoSizeChanged(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public hasError()Z
    .registers 2

    .line 506
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackError()Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public pause()V
    .registers 3

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mNewlyPrepared:Z

    .line 228
    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public play()V
    .registers 4

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mNewlyPrepared:Z

    .line 220
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 221
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->seekTo(J)V

    .line 223
    :cond_13
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public prepare()V
    .registers 2

    .line 214
    iget-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPrepared:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 215
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->preparePlayer()V

    return-void
.end method

.method public reset()V
    .registers 13

    .line 450
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 451
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 452
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getState()I

    move-result v0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_1d

    .line 453
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getTimestamp()Landroidx/media2/player/MediaTimestamp;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMediaTimeDiscontinuity(Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V

    .line 455
    :cond_1d
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->release()V

    .line 456
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->clear()V

    .line 458
    :cond_27
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$ComponentListener;-><init>(Landroidx/media2/player/exoplayer/ExoPlayerWrapper;)V

    .line 459
    new-instance v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mContext:Landroid/content/Context;

    .line 460
    invoke-static {v3}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    move-result-object v3

    new-array v4, v1, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    invoke-direct {v2, v3, v4}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    iput-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mAudioSink:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 461
    new-instance v2, Landroidx/media2/player/exoplayer/TextRenderer;

    invoke-direct {v2, v0}, Landroidx/media2/player/exoplayer/TextRenderer;-><init>(Landroidx/media2/player/exoplayer/TextRenderer$Output;)V

    .line 462
    new-instance v3, Landroidx/media2/player/exoplayer/TrackSelector;

    invoke-direct {v3, v2}, Landroidx/media2/player/exoplayer/TrackSelector;-><init>(Landroidx/media2/player/exoplayer/TextRenderer;)V

    iput-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    .line 463
    iget-object v4, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mContext:Landroid/content/Context;

    new-instance v5, Landroidx/media2/player/exoplayer/RenderersFactory;

    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mAudioSink:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-direct {v5, v4, v3, v2}, Landroidx/media2/player/exoplayer/RenderersFactory;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioSink;Landroidx/media2/player/exoplayer/TextRenderer;)V

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    .line 466
    invoke-virtual {v2}, Landroidx/media2/player/exoplayer/TrackSelector;->getPlayerTrackSelector()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    move-result-object v6

    new-instance v7, Landroidx/media2/exoplayer/external/DefaultLoadControl;

    invoke-direct {v7}, Landroidx/media2/exoplayer/external/DefaultLoadControl;-><init>()V

    const/4 v8, 0x0

    iget-object v9, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mBandwidthMeter:Landroidx/media2/exoplayer/external/upstream/DefaultBandwidthMeter;

    new-instance v10, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;

    invoke-direct {v10}, Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;-><init>()V

    iget-object v11, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mLooper:Landroid/os/Looper;

    .line 463
    invoke-static/range {v4 .. v11}, Landroidx/media2/exoplayer/external/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Landroidx/media2/exoplayer/external/RenderersFactory;Landroidx/media2/exoplayer/external/trackselection/TrackSelector;Landroidx/media2/exoplayer/external/LoadControl;Landroidx/media2/exoplayer/external/drm/DrmSessionManager;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;Landroidx/media2/exoplayer/external/analytics/AnalyticsCollector$Factory;Landroid/os/Looper;)Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    .line 472
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayerHandler:Landroid/os/Handler;

    .line 473
    new-instance v2, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    iget-object v3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    iget-object v5, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-direct {v2, v3, v4, v5}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;)V

    iput-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    .line 474
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    .line 476
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoDebugListener(Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;)V

    .line 477
    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->addMetadataOutput(Landroidx/media2/exoplayer/external/metadata/MetadataOutput;)V

    .line 478
    iput v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mVideoWidth:I

    .line 479
    iput v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mVideoHeight:I

    .line 480
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPrepared:Z

    .line 481
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mNewlyPrepared:Z

    .line 482
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mRebuffering:Z

    .line 483
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPendingSeek:Z

    .line 484
    iput-boolean v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHasAudioAttributes:Z

    .line 485
    iput v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mAudioSessionId:I

    .line 486
    iput v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mAuxEffectId:I

    const/4 v0, 0x0

    .line 487
    iput v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mAuxEffectSendLevel:F

    .line 488
    new-instance v0, Landroidx/media2/player/PlaybackParams$Builder;

    invoke-direct {v0}, Landroidx/media2/player/PlaybackParams$Builder;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 489
    invoke-virtual {v0, v2}, Landroidx/media2/player/PlaybackParams$Builder;->setSpeed(F)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    .line 490
    invoke-virtual {v0, v2}, Landroidx/media2/player/PlaybackParams$Builder;->setPitch(F)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    .line 491
    invoke-virtual {v0, v1}, Landroidx/media2/player/PlaybackParams$Builder;->setAudioFallbackMode(I)Landroidx/media2/player/PlaybackParams$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroidx/media2/player/PlaybackParams$Builder;->build()Landroidx/media2/player/PlaybackParams;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlaybackParams:Landroidx/media2/player/PlaybackParams;

    return-void
.end method

.method public seekTo(JI)V
    .registers 7

    .line 232
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p3}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->getSeekParameters(I)Landroidx/media2/exoplayer/external/SeekParameters;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setSeekParameters(Landroidx/media2/exoplayer/external/SeekParameters;)V

    .line 233
    iget-object p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {p3}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object p3

    if-eqz p3, :cond_3d

    .line 236
    invoke-virtual {p3}, Landroidx/media2/common/MediaItem;->getStartPosition()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gtz v2, :cond_23

    .line 237
    invoke-virtual {p3}, Landroidx/media2/common/MediaItem;->getEndPosition()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested seek position is out of range : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 239
    invoke-virtual {p3}, Landroidx/media2/common/MediaItem;->getStartPosition()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 241
    :cond_3d
    iget-object p3, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {p3, p1, p2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method public selectTrack(I)V
    .registers 3

    .line 405
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mTrackSelector:Landroidx/media2/player/exoplayer/TrackSelector;

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/TrackSelector;->selectTrack(I)V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media/AudioAttributesCompat;)V
    .registers 4

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHasAudioAttributes:Z

    .line 326
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->getAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V

    .line 329
    iget p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mAudioSessionId:I

    if-eqz p1, :cond_17

    .line 330
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mAudioSink:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v0, v1, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->updatePlayerAudioSessionId(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;I)V

    :cond_17
    return-void
.end method

.method public setMediaItem(Landroidx/media2/common/MediaItem;)V
    .registers 3

    .line 206
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/MediaItem;

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->setMediaItem(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public setNextMediaItem(Landroidx/media2/common/MediaItem;)V
    .registers 3

    .line 303
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 304
    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_14

    .line 305
    check-cast p1, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {p1}, Landroidx/media2/common/FileMediaItem;->increaseRefCount()V

    .line 306
    invoke-virtual {p1}, Landroidx/media2/common/FileMediaItem;->decreaseRefCount()V

    .line 308
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 310
    :cond_1a
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->setNextMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public setPlaybackParams(Landroidx/media2/player/PlaybackParams;)V
    .registers 4

    .line 365
    iput-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlaybackParams:Landroidx/media2/player/PlaybackParams;

    .line 366
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1}, Landroidx/media2/player/exoplayer/ExoPlayerUtils;->getPlaybackParameters(Landroidx/media2/player/PlaybackParams;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    .line 367
    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getState()I

    move-result p1

    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_20

    .line 368
    iget-object p1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getTimestamp()Landroidx/media2/player/MediaTimestamp;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onMediaTimeDiscontinuity(Landroidx/media2/common/MediaItem;Landroidx/media2/player/MediaTimestamp;)V

    :cond_20
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3

    .line 385
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(F)V
    .registers 3

    .line 389
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public skipToNext()V
    .registers 2

    .line 299
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->skipToNext()V

    return-void
.end method

.method updateBufferingAndScheduleNextPollBuffer()V
    .registers 5

    .line 627
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mMediaItemQueue:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;

    invoke-virtual {v0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$MediaItemQueue;->getCurrentMediaItemIsRemote()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 628
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mListener:Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;

    invoke-virtual {p0}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPlayer:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/media2/player/exoplayer/ExoPlayerWrapper$Listener;->onBufferingUpdate(Landroidx/media2/common/MediaItem;I)V

    .line 630
    :cond_17
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPollBufferRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/player/exoplayer/ExoPlayerWrapper;->mPollBufferRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
