.class final Lcom/google/android/exoplayer2/DefaultMediaClock;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;
    }
.end annotation


# instance fields
.field private isUsingStandaloneClock:Z

.field private final listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

.field private rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

.field private rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

.field private final standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

.field private standaloneClockIsStarted:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;Lcom/google/android/exoplayer2/util/Clock;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    .line 61
    new-instance p1, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    return-void
.end method

.method private shouldUseStandaloneClock(Z)Z
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v0, :cond_1f

    .line 193
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 194
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_1d

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 195
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method private syncClocks(Z)V
    .registers 6

    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->shouldUseStandaloneClock(Z)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    .line 161
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz p1, :cond_12

    .line 162
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    :cond_12
    return-void

    .line 166
    :cond_13
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    .line 167
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz p1, :cond_39

    .line 169
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2d

    .line 170
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    return-void

    :cond_2d
    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    .line 174
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz p1, :cond_39

    .line 175
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 179
    :cond_39
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    .line 180
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_5a
    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_9

    .line 154
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getPositionUs()J
    .registers 3

    .line 139
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    :goto_11
    return-wide v0
.end method

.method public onRendererDisabled(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 120
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    :cond_c
    return-void
.end method

.method public onRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eq v0, v1, :cond_26

    if-nez v1, :cond_1a

    .line 105
    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 107
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_26

    .line 102
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_26
    :goto_26
    return-void
.end method

.method public resetPosition(J)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_d

    .line 145
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 146
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 148
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    return-void
.end method

.method public syncAndGetPositionUs(Z)J
    .registers 4

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->syncClocks(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method
