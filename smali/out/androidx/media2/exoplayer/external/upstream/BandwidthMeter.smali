.class public interface abstract Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventHandler",
            "eventListener"
        }
    .end annotation
.end method

.method public abstract getBitrateEstimate()J
.end method

.method public abstract getTransferListener()Landroidx/media2/exoplayer/external/upstream/TransferListener;
.end method

.method public abstract removeEventListener(Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation
.end method
