.class final Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyMediaSource"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1166
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$1;)V
    .registers 2

    .line 1166
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource$DummyMediaSource;-><init>()V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/upstream/Allocator;J)Landroidx/media2/exoplayer/external/source/MediaPeriod;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "allocator",
            "startPositionUs"
        }
    .end annotation

    .line 1191
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaTransferListener"
        }
    .end annotation

    return-void
.end method

.method public releasePeriod(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPeriod"
        }
    .end annotation

    return-void
.end method

.method protected releaseSourceInternal()V
    .registers 1

    return-void
.end method
