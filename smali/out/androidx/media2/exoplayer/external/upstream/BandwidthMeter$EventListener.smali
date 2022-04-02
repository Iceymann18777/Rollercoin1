.class public interface abstract Landroidx/media2/exoplayer/external/upstream/BandwidthMeter$EventListener;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onBandwidthSample(IJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elapsedMs",
            "bytesTransferred",
            "bitrateEstimate"
        }
    .end annotation
.end method
