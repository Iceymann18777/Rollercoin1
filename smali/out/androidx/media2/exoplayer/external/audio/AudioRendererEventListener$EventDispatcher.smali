.class public final Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "listener"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_c

    .line 106
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 107
    iput-object p2, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    return-void
.end method


# virtual methods
.method public audioSessionId(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "audioSessionId"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    if-eqz v0, :cond_e

    .line 171
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$5;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$5;-><init>(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public audioTrackUnderrun(IJJ)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bufferSize",
            "bufferSizeMs",
            "elapsedSinceLastFeedMs"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    if-eqz v0, :cond_13

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v8, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$3;-><init>(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public decoderInitialized(Ljava/lang/String;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "decoderName",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    if-eqz v0, :cond_13

    .line 125
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v8, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public disabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "counters"
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->ensureUpdated()V

    .line 157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    if-eqz v0, :cond_11

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$4;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$4;-><init>(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public enabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "decoderCounters"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    if-eqz v0, :cond_e

    .line 115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public inputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    if-eqz v0, :cond_e

    .line 137
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$2;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher$$Lambda$2;-><init>(Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method final synthetic lambda$audioSessionId$5$AudioRendererEventListener$EventDispatcher(I)V
    .registers 3

    .line 171
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    return-void
.end method

.method final synthetic lambda$audioTrackUnderrun$3$AudioRendererEventListener$EventDispatcher(IJJ)V
    .registers 12

    .line 148
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioSinkUnderrun(IJJ)V

    return-void
.end method

.method final synthetic lambda$decoderInitialized$1$AudioRendererEventListener$EventDispatcher(Ljava/lang/String;JJ)V
    .registers 12

    .line 127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic lambda$disabled$4$AudioRendererEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .registers 3

    .line 160
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/decoder/DecoderCounters;->ensureUpdated()V

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    return-void
.end method

.method final synthetic lambda$enabled$0$AudioRendererEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .registers 3

    .line 115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    return-void
.end method

.method final synthetic lambda$inputFormatChanged$2$AudioRendererEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/Format;)V
    .registers 3

    .line 137
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;->listener:Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
