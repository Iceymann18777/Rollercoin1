.class public interface abstract Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "decoderName",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation
.end method

.method public abstract onAudioDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counters"
        }
    .end annotation
.end method

.method public abstract onAudioEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counters"
        }
    .end annotation
.end method

.method public abstract onAudioInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public abstract onAudioSessionId(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSessionId"
        }
    .end annotation
.end method

.method public abstract onAudioSinkUnderrun(IJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "bufferSizeMs",
            "elapsedSinceLastFeedMs"
        }
    .end annotation
.end method
