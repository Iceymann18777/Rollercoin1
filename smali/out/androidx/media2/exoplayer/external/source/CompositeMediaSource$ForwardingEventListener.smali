.class final Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private final id:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/CompositeMediaSource;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 183
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childWindowIndex",
            "childMediaPeriodId"
        }
    .end annotation

    if-eqz p2, :cond_e

    .line 275
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p2, 0x0

    .line 281
    :cond_f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I

    move-result p1

    .line 282
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v0, p1, :cond_27

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 283
    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 284
    :cond_27
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    const-wide/16 v1, 0x0

    .line 285
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->createEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method private maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaLoadData"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->mediaStartTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 292
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->mediaEndTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 293
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->mediaStartTimeMs:J

    cmp-long v2, v10, v0

    if-nez v2, :cond_21

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->mediaEndTimeMs:J

    cmp-long v2, v12, v0

    if-nez v2, :cond_21

    return-object p1

    .line 297
    :cond_21
    new-instance v0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    iget v5, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->dataType:I

    iget v6, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackType:I

    iget-object v7, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v8, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackSelectionReason:I

    iget-object v9, p1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "mediaLoadData"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 266
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onLoadCanceled(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "loadEventData",
            "mediaLoadData"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 229
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onLoadCompleted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "loadEventData",
            "mediaLoadData"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 218
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onLoadError(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "loadEventData",
            "mediaLoadData",
            "error",
            "wasCanceled"
        }
    .end annotation

    .line 241
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 242
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 243
    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    .line 242
    invoke-virtual {p1, p3, p2, p5, p6}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    :cond_f
    return-void
.end method

.method public onLoadStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "loadEventData",
            "mediaLoadData"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 207
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onMediaPeriodCreated(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 189
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    :cond_b
    return-void
.end method

.method public onMediaPeriodReleased(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId"
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 196
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    :cond_b
    return-void
.end method

.method public onReadingStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 250
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    :cond_b
    return-void
.end method
