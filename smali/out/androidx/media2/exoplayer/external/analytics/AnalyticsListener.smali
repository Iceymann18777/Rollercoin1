.class public interface abstract Landroidx/media2/exoplayer/external/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;
    }
.end annotation


# virtual methods
.method public abstract onAudioAttributesChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "audioAttributes"
        }
    .end annotation
.end method

.method public abstract onAudioSessionId(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "audioSessionId"
        }
    .end annotation
.end method

.method public abstract onAudioUnderrun(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "bufferSize",
            "bufferSizeMs",
            "elapsedSinceLastFeedMs"
        }
    .end annotation
.end method

.method public abstract onBandwidthEstimate(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "totalLoadTimeMs",
            "totalBytesLoaded",
            "bitrateEstimate"
        }
    .end annotation
.end method

.method public abstract onDecoderDisabled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackType",
            "decoderCounters"
        }
    .end annotation
.end method

.method public abstract onDecoderEnabled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackType",
            "decoderCounters"
        }
    .end annotation
.end method

.method public abstract onDecoderInitialized(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackType",
            "decoderName",
            "initializationDurationMs"
        }
    .end annotation
.end method

.method public abstract onDecoderInputFormatChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ILandroidx/media2/exoplayer/external/Format;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackType",
            "format"
        }
    .end annotation
.end method

.method public abstract onDownstreamFormatChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "mediaLoadData"
        }
    .end annotation
.end method

.method public abstract onDrmKeysLoaded(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onDrmKeysRestored(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onDrmSessionAcquired(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onDrmSessionManagerError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "error"
        }
    .end annotation
.end method

.method public abstract onDrmSessionReleased(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onDroppedVideoFrames(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "droppedFrames",
            "elapsedMs"
        }
    .end annotation
.end method

.method public abstract onLoadCanceled(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation
.end method

.method public abstract onLoadCompleted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation
.end method

.method public abstract onLoadError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "loadEventInfo",
            "mediaLoadData",
            "error",
            "wasCanceled"
        }
    .end annotation
.end method

.method public abstract onLoadStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation
.end method

.method public abstract onLoadingChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "isLoading"
        }
    .end annotation
.end method

.method public abstract onMediaPeriodCreated(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onMediaPeriodReleased(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onMetadata(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "metadata"
        }
    .end annotation
.end method

.method public abstract onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "playbackParameters"
        }
    .end annotation
.end method

.method public abstract onPlayerError(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "error"
        }
    .end annotation
.end method

.method public abstract onPlayerStateChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "playWhenReady",
            "playbackState"
        }
    .end annotation
.end method

.method public abstract onPositionDiscontinuity(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "reason"
        }
    .end annotation
.end method

.method public abstract onReadingStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onRenderedFirstFrame(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "surface"
        }
    .end annotation
.end method

.method public abstract onSeekProcessed(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onSeekStarted(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventTime"
        }
    .end annotation
.end method

.method public abstract onSurfaceSizeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "width",
            "height"
        }
    .end annotation
.end method

.method public abstract onTimelineChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "reason"
        }
    .end annotation
.end method

.method public abstract onTracksChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "trackGroups",
            "trackSelections"
        }
    .end annotation
.end method

.method public abstract onVideoSizeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;IIIF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "width",
            "height",
            "unappliedRotationDegrees",
            "pixelWidthHeightRatio"
        }
    .end annotation
.end method

.method public abstract onVolumeChanged(Landroidx/media2/exoplayer/external/analytics/AnalyticsListener$EventTime;F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "volume"
        }
    .end annotation
.end method
