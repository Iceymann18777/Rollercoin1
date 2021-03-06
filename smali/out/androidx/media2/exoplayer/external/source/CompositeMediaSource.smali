.class public abstract Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.super Landroidx/media2/exoplayer/external/source/BaseMediaSource;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;,
        Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/media2/exoplayer/external/source/BaseMediaSource;"
    }
.end annotation


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;",
            ">;"
        }
    .end annotation
.end field

.field private eventHandler:Landroid/os/Handler;

.field private mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/BaseMediaSource;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "mediaPeriodId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;",
            ")",
            "Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    return-object p2
.end method

.method protected getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "mediaTimeMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    return-wide p2
.end method

.method protected getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "windowIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method final synthetic lambda$prepareChildSource$0$CompositeMediaSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .registers 5

    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    .line 62
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method protected abstract onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "mediaSource",
            "timeline",
            "manifest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            "Landroidx/media2/exoplayer/external/Timeline;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected final prepareChildSource(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "id",
            "mediaSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/MediaSource;",
            ")V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 102
    new-instance v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$$Lambda$0;

    invoke-direct {v0, p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 104
    new-instance v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;-><init>(Landroidx/media2/exoplayer/external/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 105
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    new-instance v3, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-direct {v3, p2, v0, v1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;-><init>(Landroidx/media2/exoplayer/external/source/MediaSource;Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->addEventListener(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    .line 107
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    invoke-interface {p2, v0, p1}, Landroidx/media2/exoplayer/external/source/MediaSource;->prepareSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;Landroidx/media2/exoplayer/external/upstream/TransferListener;)V

    return-void
.end method

.method public prepareSourceInternal(Landroidx/media2/exoplayer/external/upstream/TransferListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaTransferListener"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->mediaTransferListener:Landroidx/media2/exoplayer/external/upstream/TransferListener;

    .line 55
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    return-void
.end method

.method protected final releaseChildSource(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    .line 117
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->listener:Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V

    .line 118
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 5

    .line 69
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;

    .line 70
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->listener:Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/source/MediaSource;->releaseSource(Landroidx/media2/exoplayer/external/source/MediaSource$SourceInfoRefreshListener;)V

    .line 71
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media2/exoplayer/external/source/MediaSource;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/MediaSource;->removeEventListener(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;)V

    goto :goto_a

    .line 73
    :cond_25
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
