.class public final synthetic Lcom/google/android/exoplayer2/Player$EventListener$-CC;
.super Ljava/lang/Object;
.source "Player.java"


# direct methods
.method public static $default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V
    .registers 2

    return-void
.end method

.method public static $default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V
    .registers 2

    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    return-void
.end method

.method public static $default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V
    .registers 2

    return-void
.end method

.method public static $default$onPlayerError(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 2

    return-void
.end method

.method public static $default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V
    .registers 3

    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$EventListener;I)V
    .registers 2

    return-void
.end method

.method public static $default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .registers 1

    return-void
.end method

.method public static $default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 5
    .param p0, "_this"    # Lcom/google/android/exoplayer2/Player$EventListener;

    .line 366
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 368
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 372
    :goto_15
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/Player$EventListener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public static $default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static $default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    return-void
.end method
