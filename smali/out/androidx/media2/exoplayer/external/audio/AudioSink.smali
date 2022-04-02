.class public interface abstract Landroidx/media2/exoplayer/external/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;,
        Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;,
        Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;,
        Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;
    }
.end annotation


# virtual methods
.method public abstract configure(IIII[III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputEncoding",
            "inputChannelCount",
            "inputSampleRate",
            "specifiedBufferSize",
            "outputChannels",
            "trimStartFrames",
            "trimEndFrames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract enableTunnelingV21(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tunnelingAudioSessionId"
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public abstract getCurrentPositionUs(Z)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceEnded"
        }
    .end annotation
.end method

.method public abstract getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "presentationTimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;,
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioAttributes"
        }
    .end annotation
.end method

.method public abstract setAuxEffectInfo(Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auxEffectInfo"
        }
    .end annotation
.end method

.method public abstract setListener(Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation
.end method

.method public abstract setVolume(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract supportsOutput(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelCount",
            "encoding"
        }
    .end annotation
.end method
