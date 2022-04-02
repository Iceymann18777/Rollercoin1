.class public interface abstract Landroidx/media2/exoplayer/external/audio/AudioListener;
.super Ljava/lang/Object;
.source "AudioListener.java"


# virtual methods
.method public abstract onAudioAttributesChanged(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioAttributes"
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

.method public abstract onVolumeChanged(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method
