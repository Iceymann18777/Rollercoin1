.class public abstract Landroidx/media2/player/MediaPlayer2;
.super Ljava/lang/Object;
.source "MediaPlayer2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;,
        Landroidx/media2/player/MediaPlayer2$DrmEventCallback;,
        Landroidx/media2/player/MediaPlayer2$EventCallback;,
        Landroidx/media2/player/MediaPlayer2$TrackInfo;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer2;
    .registers 2

    .line 240
    new-instance v0, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/ExoPlayerMediaPlayer2Impl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/Object;)Z
.end method

.method public abstract close()V
.end method

.method public abstract deselectTrack(I)Ljava/lang/Object;
.end method

.method public abstract getAudioAttributes()Landroidx/media/AudioAttributesCompat;
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getCurrentMediaItem()Landroidx/media2/common/MediaItem;
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlaybackParams()Landroidx/media2/player/PlaybackParams;
.end method

.method public abstract getPlayerVolume()F
.end method

.method public abstract getSelectedTrack(I)I
.end method

.method public abstract getTrackInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/player/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()Ljava/lang/Object;
.end method

.method public abstract play()Ljava/lang/Object;
.end method

.method public abstract prepare()Ljava/lang/Object;
.end method

.method public abstract reset()V
.end method

.method public seekTo(J)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/player/MediaPlayer2;->seekTo(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract seekTo(JI)Ljava/lang/Object;
.end method

.method public abstract selectTrack(I)Ljava/lang/Object;
.end method

.method public abstract setAudioAttributes(Landroidx/media/AudioAttributesCompat;)Ljava/lang/Object;
.end method

.method public abstract setDrmEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$DrmEventCallback;)V
.end method

.method public abstract setEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$EventCallback;)V
.end method

.method public abstract setMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
.end method

.method public abstract setNextMediaItem(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
.end method

.method public abstract setPlaybackParams(Landroidx/media2/player/PlaybackParams;)Ljava/lang/Object;
.end method

.method public abstract setPlayerVolume(F)Ljava/lang/Object;
.end method

.method public abstract setSurface(Landroid/view/Surface;)Ljava/lang/Object;
.end method

.method public abstract skipToNext()Ljava/lang/Object;
.end method
