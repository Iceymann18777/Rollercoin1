.class public abstract Landroidx/media2/exoplayer/external/trackselection/TrackSelector;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;
    }
.end annotation


# instance fields
.field private bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

.field private listener:Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getBandwidthMeter()Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;
    .registers 2

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    return-object v0
.end method

.method public final init(Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "bandwidthMeter"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;->listener:Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;

    .line 119
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;->bandwidthMeter:Landroidx/media2/exoplayer/external/upstream/BandwidthMeter;

    return-void
.end method

.method protected final invalidate()V
    .registers 2

    .line 153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/TrackSelector;->listener:Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;

    if-eqz v0, :cond_7

    .line 154
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelector$InvalidationListener;->onTrackSelectionsInvalidated()V

    :cond_7
    return-void
.end method

.method public abstract onSelectionActivated(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract selectTracks([Landroidx/media2/exoplayer/external/RendererCapabilities;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/Timeline;)Landroidx/media2/exoplayer/external/trackselection/TrackSelectorResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rendererCapabilities",
            "trackGroups",
            "periodId",
            "timeline"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation
.end method
