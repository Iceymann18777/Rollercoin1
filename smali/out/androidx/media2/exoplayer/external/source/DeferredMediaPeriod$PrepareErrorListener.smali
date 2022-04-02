.class public interface abstract Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod$PrepareErrorListener;
.super Ljava/lang/Object;
.source "DeferredMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/DeferredMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrepareErrorListener"
.end annotation


# virtual methods
.method public abstract onPrepareError(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaPeriodId",
            "exception"
        }
    .end annotation
.end method
