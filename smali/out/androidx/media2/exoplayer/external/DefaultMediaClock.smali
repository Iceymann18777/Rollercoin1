.class final Landroidx/media2/exoplayer/external/DefaultMediaClock;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;
    }
.end annotation


# instance fields
.field private final listener:Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;

.field private rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

.field private rendererClockSource:Landroidx/media2/exoplayer/external/Renderer;

.field private final standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;Landroidx/media2/exoplayer/external/util/Clock;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "clock"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->listener:Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;

    .line 65
    new-instance p1, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;-><init>(Landroidx/media2/exoplayer/external/util/Clock;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    return-void
.end method

.method private ensureSynced()V
    .registers 4

    .line 166
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    .line 167
    iget-object v2, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v2, v0, v1}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->resetPosition(J)V

    .line 168
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/MediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    .line 169
    iget-object v1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 170
    iget-object v1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 171
    iget-object v1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->listener:Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;->onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    :cond_27
    return-void
.end method

.method private isUsingRendererClock()Z
    .registers 2

    .line 180
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClockSource:Landroidx/media2/exoplayer/external/Renderer;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClockSource:Landroidx/media2/exoplayer/external/Renderer;

    .line 181
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClockSource:Landroidx/media2/exoplayer/external/Renderer;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/Renderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method


# virtual methods
.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .registers 2

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/MediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    goto :goto_f

    .line 162
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getPositionUs()J
    .registers 3

    .line 142
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->isUsingRendererClock()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    .line 145
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public onRendererDisabled(Landroidx/media2/exoplayer/external/Renderer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClockSource:Landroidx/media2/exoplayer/external/Renderer;

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    .line 122
    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClockSource:Landroidx/media2/exoplayer/external/Renderer;

    :cond_9
    return-void
.end method

.method public onRendererEnabled(Landroidx/media2/exoplayer/external/Renderer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/Renderer;->getMediaClock()Landroidx/media2/exoplayer/external/util/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 101
    iget-object v1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    if-eq v0, v1, :cond_29

    if-nez v1, :cond_1d

    .line 106
    iput-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    .line 107
    iput-object p1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClockSource:Landroidx/media2/exoplayer/external/Renderer;

    .line 108
    iget-object p1, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/util/MediaClock;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 109
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->ensureSynced()V

    goto :goto_29

    .line 103
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_29
    :goto_29
    return-void
.end method

.method public resetPosition(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->resetPosition(J)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    if-eqz v0, :cond_8

    .line 152
    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/util/MediaClock;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object p1

    .line 154
    :cond_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 155
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->listener:Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/DefaultMediaClock$PlaybackParameterListener;->onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    return-object p1
.end method

.method public start()V
    .registers 2

    .line 72
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 79
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->stop()V

    return-void
.end method

.method public syncAndGetPositionUs()J
    .registers 3

    .line 130
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->isUsingRendererClock()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 131
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/DefaultMediaClock;->ensureSynced()V

    .line 132
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->rendererClock:Landroidx/media2/exoplayer/external/util/MediaClock;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    .line 134
    :cond_10
    iget-object v0, p0, Landroidx/media2/exoplayer/external/DefaultMediaClock;->standaloneMediaClock:Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method
