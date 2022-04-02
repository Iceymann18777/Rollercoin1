.class final Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
.implements Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;
.implements Landroidx/media2/exoplayer/external/source/SequenceableLoader;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Callback;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;,
        Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;",
        "Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;",
        "Landroidx/media2/exoplayer/external/source/SequenceableLoader;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
        "Landroidx/media2/exoplayer/external/source/chunk/Chunk;",
        ">;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private audioSampleQueueIndex:I

.field private audioSampleQueueMappingDone:Z

.field private final callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

.field private chunkUid:I

.field private downstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

.field private enabledTrackGroupCount:I

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoSampleQueues:Z

.field private final hlsSampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final loader:Landroidx/media2/exoplayer/external/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

.field private final nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

.field private final onTracksEndedRunnable:Ljava/lang/Runnable;

.field private optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field private pendingResetPositionUs:J

.field private pendingResetUpstreamFormats:Z

.field private prepared:Z

.field private primarySampleQueueIndex:I

.field private primarySampleQueueType:I

.field private primaryTrackGroupIndex:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private sampleOffsetUs:J

.field private sampleQueueIsAudioVideoFlags:[Z

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private sampleQueuesEnabledStates:[Z

.field private seenFirstTrackSelection:Z

.field private trackGroupToSampleQueueIndex:[I

.field private trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field private final trackType:I

.field private tracksEnded:Z

.field private upstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

.field private videoSampleQueueIndex:I

.field private videoSampleQueueMappingDone:Z


# direct methods
.method public constructor <init>(ILandroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/Allocator;JLandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackType",
            "callback",
            "chunkSource",
            "overridingDrmInitData",
            "allocator",
            "positionUs",
            "muxedAudioFormat",
            "loadErrorHandlingPolicy",
            "eventDispatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;",
            "Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;",
            "Landroidx/media2/exoplayer/external/upstream/Allocator;",
            "J",
            "Landroidx/media2/exoplayer/external/Format;",
            "Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 175
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    .line 176
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    .line 177
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    .line 178
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 179
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    .line 180
    iput-object p9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 181
    iput-object p10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 182
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 183
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 184
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    const/4 p2, -0x1

    .line 185
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    .line 186
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 187
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    new-array p2, p1, [Z

    .line 188
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    new-array p1, p1, [Z

    .line 189
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 191
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 193
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$0;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 194
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$1;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 196
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 197
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-void
.end method

.method private buildTracksFromSampleStreams()V
    .registers 15

    .line 990
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, -0x1

    :goto_9
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_44

    .line 992
    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    iget-object v9, v9, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 994
    invoke-static {v9}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    goto :goto_2f

    .line 996
    :cond_1e
    invoke-static {v9}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    const/4 v7, 0x1

    goto :goto_2f

    .line 998
    :cond_26
    invoke-static {v9}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const/4 v7, 0x3

    goto :goto_2f

    :cond_2e
    const/4 v7, 0x6

    .line 1003
    :goto_2f
    invoke-static {v7}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v8

    invoke-static {v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v9

    if-le v8, v9, :cond_3c

    move v6, v4

    move v5, v7

    goto :goto_41

    :cond_3c
    if-ne v7, v5, :cond_41

    if-eq v6, v2, :cond_41

    const/4 v6, -0x1

    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1014
    :cond_44
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v1

    .line 1015
    iget v4, v1, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 1018
    iput v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 1019
    new-array v2, v0, [I

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v2, 0x0

    :goto_53
    if-ge v2, v0, :cond_5c

    .line 1021
    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1025
    :cond_5c
    new-array v2, v0, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    const/4 v9, 0x0

    :goto_5f
    if-ge v9, v0, :cond_b4

    .line 1027
    iget-object v10, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    if-ne v9, v6, :cond_94

    .line 1029
    new-array v11, v4, [Landroidx/media2/exoplayer/external/Format;

    if-ne v4, v8, :cond_7a

    .line 1031
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/media2/exoplayer/external/Format;->copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    aput-object v10, v11, v3

    goto :goto_8a

    :cond_7a
    const/4 v12, 0x0

    :goto_7b
    if-ge v12, v4, :cond_8a

    .line 1034
    invoke-virtual {v1, v12}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    invoke-static {v13, v10, v8}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->deriveFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7b

    .line 1037
    :cond_8a
    :goto_8a
    new-instance v10, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v10, v11}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v10, v2, v9

    .line 1038
    iput v9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    goto :goto_b1

    :cond_94
    if-ne v5, v7, :cond_a1

    .line 1042
    iget-object v11, v10, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 1043
    iget-object v11, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Landroidx/media2/exoplayer/external/Format;

    goto :goto_a2

    :cond_a1
    const/4 v11, 0x0

    .line 1045
    :goto_a2
    new-instance v12, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v13, v8, [Landroidx/media2/exoplayer/external/Format;

    invoke-static {v11, v10, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->deriveFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    aput-object v10, v13, v3

    invoke-direct {v12, v13}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v12, v2, v9

    :goto_b1
    add-int/lit8 v9, v9, 0x1

    goto :goto_5f

    .line 1048
    :cond_b4
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 1049
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-nez v0, :cond_c0

    const/4 v3, 0x1

    :cond_c0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 1050
    sget-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-void
.end method

.method private static createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;-><init>()V

    return-object p0
.end method

.method private static deriveFormat(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Landroidx/media2/exoplayer/external/Format;
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playlistFormat",
            "sampleFormat",
            "propagateBitrate"
        }
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    const/4 v0, -0x1

    if-eqz p2, :cond_a

    .line 1120
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    move v7, p2

    goto :goto_b

    :cond_a
    const/4 v7, -0x1

    .line 1122
    :goto_b
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq p2, v0, :cond_12

    .line 1123
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    goto :goto_14

    .line 1124
    :cond_12
    iget p2, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    :goto_14
    move v10, p2

    .line 1125
    iget-object p2, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p2

    .line 1126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1127
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_29

    .line 1129
    iget-object p2, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    :cond_29
    move-object v4, p2

    .line 1131
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v11, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget-object v12, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v12}, Landroidx/media2/exoplayer/external/Format;->copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method private finishedReadingChunk(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    .line 894
    iget p1, p1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uid:I

    .line 895
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1d

    .line 897
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->peekSourceId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method private static formatsMatch(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manifestFormat",
            "sampleFormat"
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1151
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1152
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_16

    .line 1154
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    return v3

    .line 1155
    :cond_16
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v4

    :cond_1d
    const-string v1, "application/cea-608"

    .line 1158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "application/cea-708"

    .line 1159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    return v3

    .line 1160
    :cond_2f
    :goto_2f
    iget p0, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    if-ne p0, p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    return v3
.end method

.method private getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;
    .registers 3

    .line 1054
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    return-object v0
.end method

.method private static getTrackTypeScore(I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackType"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_d

    const/4 v2, 0x3

    if-eq p0, v0, :cond_c

    if-eq p0, v2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v1

    :cond_c
    return v2

    :cond_d
    return v0
.end method

.method private static isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    .line 1146
    instance-of p0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    return p0
.end method

.method private isPendingReset()Z
    .registers 6

    .line 1058
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private mapSampleQueuesToMatchTrackGroups()V
    .registers 7

    .line 938
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    .line 939
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v2, -0x1

    .line 940
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_37

    const/4 v3, 0x0

    .line 942
    :goto_11
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v5, v4

    if-ge v3, v5, :cond_34

    .line 943
    aget-object v4, v4, v3

    .line 944
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v5, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->formatsMatch(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 945
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v3, v4, v2

    goto :goto_34

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 950
    :cond_37
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    .line 951
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->bindSampleQueue()V

    goto :goto_3d

    :cond_4d
    return-void
.end method

.method private maybeFinishPrepare()V
    .registers 5

    .line 917
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v0, :cond_d

    goto :goto_32

    .line 920
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 921
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    if-nez v3, :cond_1c

    return-void

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 925
    :cond_1f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    if-eqz v0, :cond_27

    .line 928
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mapSampleQueuesToMatchTrackGroups()V

    goto :goto_32

    .line 931
    :cond_27
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->buildTracksFromSampleStreams()V

    const/4 v0, 0x1

    .line 932
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 933
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    :cond_32
    :goto_32
    return-void
.end method

.method private onTracksEnded()V
    .registers 2

    const/4 v0, 0x1

    .line 912
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 913
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method private resetSampleQueues()V
    .registers 7

    .line 905
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 906
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 908
    :cond_11
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_28

    .line 1070
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v4, v4, v2

    .line 1071
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 1072
    invoke-virtual {v4, p1, p2, v3, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-nez v3, :cond_25

    .line 1078
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_24

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-nez v3, :cond_25

    :cond_24
    return v1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_28
    return v3
.end method

.method private updateSampleStreams([Landroidx/media2/exoplayer/external/source/SampleStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 886
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    if-eqz v2, :cond_14

    .line 888
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method


# virtual methods
.method public bindSampleQueueToSampleStream(I)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackGroupIndex"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v0, v0, p1

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    .line 240
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result p1

    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, -0x3

    :goto_18
    return v1

    .line 244
    :cond_19
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_20

    return v1

    :cond_20
    const/4 v1, 0x1

    .line 248
    aput-boolean v1, p1, v0

    return v0
.end method

.method final bridge synthetic bridge$lambda$0$HlsSampleStreamWrapper()V
    .registers 1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$HlsSampleStreamWrapper()V
    .registers 1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onTracksEnded()V

    return-void
.end method

.method public continueLoading(J)Z
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 578
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a7

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_a7

    .line 584
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 585
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 586
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    :goto_1d
    move-object v10, v1

    move-wide v8, v3

    goto :goto_38

    .line 588
    :cond_20
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 589
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v3

    .line 591
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 592
    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->endTimeUs:J

    goto :goto_1d

    .line 593
    :cond_2f
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iget-wide v6, v3, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_1d

    .line 595
    :goto_38
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getNextChunk(JJLjava/util/List;Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 596
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 597
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    .line 598
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 599
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v1, :cond_5f

    .line 602
    iput-wide v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 603
    iput-boolean v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    return v7

    :cond_5f
    if-nez v3, :cond_69

    if-eqz v4, :cond_68

    .line 609
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Landroid/net/Uri;)V

    :cond_68
    return v2

    .line 614
    :cond_69
    invoke-static {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 615
    iput-wide v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 616
    move-object v1, v3

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    .line 617
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->init(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;)V

    .line 618
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 621
    :cond_80
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v4, v3, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    .line 623
    invoke-interface {v2, v4}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 622
    invoke-virtual {v1, v3, v0, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J

    move-result-wide v19

    .line 624
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v9, v3, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget v10, v3, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v11, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v12, v3, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v13, v3, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v14, v3, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v1, v3, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v8 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return v7

    :cond_a7
    :goto_a7
    return v2
.end method

.method public continuePreparing()V
    .registers 3

    .line 201
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_9

    .line 202
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    :cond_9
    return-void
.end method

.method public discardBuffer(JZ)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "toKeyframe"
        }
    .end annotation

    .line 394
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    .line 397
    :cond_b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    .line 399
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    :goto_1f
    return-void
.end method

.method public endTracks()V
    .registers 3

    const/4 v0, 0x1

    .line 857
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    .line 858
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBufferedPositionUs()J
    .registers 8

    .line 545
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 547
    :cond_7
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 548
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 550
    :cond_10
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 551
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v2

    .line 552
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_36

    .line 553
    :cond_1d
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_35

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    if-eqz v2, :cond_3e

    .line 555
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 557
    :cond_3e
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v2, :cond_55

    .line 558
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    .line 560
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_55
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 569
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 570
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 572
    :cond_9
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_16

    :cond_10
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->endTimeUs:J

    :goto_16
    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .registers 2

    .line 230
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method public init(IZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chunkUid",
            "shouldSpliceIn",
            "reusingExtractor"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_7

    .line 771
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 772
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    .line 774
    :cond_7
    iput p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkUid:I

    .line 775
    iget-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, p3, v2

    .line 776
    invoke-virtual {v3, p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->sourceId(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    if-eqz p2, :cond_26

    .line 779
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length p2, p1

    :goto_1c
    if-ge v0, p2, :cond_26

    aget-object p3, p1, v0

    .line 780
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->splice()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_26
    return-void
.end method

.method public isReady(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleQueueIndex"
        }
    .end annotation

    .line 466
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_17

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError()V

    .line 471
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJZ)V
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs",
            "released"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 671
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v19

    .line 671
    invoke-virtual/range {v2 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_37

    .line 686
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 687
    iget v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-lez v1, :cond_37

    .line 688
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    :cond_37
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJZ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs",
            "released"
        }
    .end annotation

    .line 66
    check-cast p1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJ)V
    .registers 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 646
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->onChunkLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)V

    .line 647
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 649
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v19

    .line 647
    invoke-virtual/range {v2 .. v20}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 661
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_38

    .line 662
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_3d

    .line 664
    :cond_38
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    :goto_3d
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs"
        }
    .end annotation

    .line 66
    check-cast p1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .registers 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs",
            "error",
            "errorCount"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v18

    .line 701
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Landroidx/media2/exoplayer/external/source/chunk/Chunk;)Z

    move-result v2

    .line 705
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v4, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 706
    invoke-interface/range {v3 .. v8}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getBlacklistDurationMsFor(IJLjava/io/IOException;I)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_2d

    .line 709
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v8, v1, v3, v4}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->maybeBlacklistTrack(Landroidx/media2/exoplayer/external/source/chunk/Chunk;J)Z

    move-result v3

    move/from16 v22, v3

    goto :goto_2f

    :cond_2d
    const/16 v22, 0x0

    :goto_2f
    const/4 v3, 0x1

    if-eqz v22, :cond_5e

    if-eqz v2, :cond_59

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-nez v2, :cond_59

    .line 714
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    if-ne v2, v1, :cond_4a

    const/4 v7, 0x1

    .line 715
    :cond_4a
    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 716
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 717
    iget-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 720
    :cond_59
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    :goto_5b
    move-object/from16 v23, v2

    goto :goto_78

    .line 722
    :cond_5e
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    move-wide/from16 v10, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    .line 723
    invoke-interface/range {v8 .. v13}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-eqz v2, :cond_75

    .line 727
    invoke-static {v7, v8, v9}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_5b

    .line 728
    :cond_75
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    goto :goto_5b

    .line 731
    :goto_78
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->type:I

    iget v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v9, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v10, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v11, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v12, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->startTimeUs:J

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;->endTimeUs:J

    .line 746
    invoke-virtual/range {v23 .. v23}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v1

    xor-int/lit8 v21, v1, 0x1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move v8, v10

    move-object v9, v11

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    .line 731
    invoke-virtual/range {v1 .. v21}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_bd

    .line 749
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_b8

    .line 750
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_bd

    .line 752
    :cond_b8
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    :cond_bd
    :goto_bd
    return-object v23
.end method

.method public bridge synthetic onLoadError(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "loadable",
            "elapsedRealtimeMs",
            "loadDurationMs",
            "error",
            "errorCount"
        }
    .end annotation

    .line 66
    check-cast p1, Landroidx/media2/exoplayer/external/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p7}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->onLoadError(Landroidx/media2/exoplayer/external/source/chunk/Chunk;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .registers 1

    .line 452
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playlistUrl",
            "blacklistDurationMs"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result p1

    return p1
.end method

.method public onUpstreamFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 870
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareWithMasterPlaylistInfo(Landroidx/media2/exoplayer/external/source/TrackGroupArray;ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackGroups",
            "primaryTrackGroupIndex",
            "optionalTrackGroups"
        }
    .end annotation

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 219
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 220
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 221
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 222
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->callback:Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$2;->get$Lambda(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$Callback;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public readData(ILandroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleQueueIndex",
            "formatHolder",
            "buffer",
            "requireFormat"
        }
    .end annotation

    .line 476
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x3

    return p1

    .line 481
    :cond_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_54

    const/4 v0, 0x0

    .line 483
    :goto_12
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2d

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 484
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;)Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 487
    :cond_2d
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2, v1, v0}, Landroidx/media2/exoplayer/external/util/Util;->removeRange(Ljava/util/List;II)V

    .line 488
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    .line 489
    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 490
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v9, v2}, Landroidx/media2/exoplayer/external/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 491
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackSelectionReason:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->startTimeUs:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    .line 495
    :cond_52
    iput-object v9, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 498
    :cond_54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 499
    invoke-virtual/range {v2 .. v8}, Landroidx/media2/exoplayer/external/source/SampleQueue;->read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZJ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_bc

    .line 502
    iget-object p4, p2, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    .line 503
    iget v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    if-ne p1, v0, :cond_a4

    .line 505
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->peekSourceId()I

    move-result p1

    .line 507
    :goto_74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8b

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    iget v0, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->uid:I

    if-eq v0, p1, :cond_8b

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 511
    :cond_8b
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_9e

    .line 512
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    goto :goto_a0

    .line 513
    :cond_9e
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 514
    :goto_a0
    invoke-virtual {p4, p1}, Landroidx/media2/exoplayer/external/Format;->copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p4

    .line 516
    :cond_a4
    iget-object p1, p4, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz p1, :cond_ba

    .line 517
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    iget-object v0, p4, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz p1, :cond_ba

    .line 519
    invoke-virtual {p4, p1}, Landroidx/media2/exoplayer/external/Format;->copyWithDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p4

    .line 522
    :cond_ba
    iput-object p4, p2, Landroidx/media2/exoplayer/external/FormatHolder;->format:Landroidx/media2/exoplayer/external/Format;

    :cond_bc
    return p3
.end method

.method public reevaluateBuffer(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    return-void
.end method

.method public release()V
    .registers 5

    .line 437
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_12

    .line 440
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 441
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 444
    :cond_12
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    .line 445
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->released:Z

    .line 447
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekMap"
        }
    .end annotation

    return-void
.end method

.method public seekToUs(JZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "forceReset"
        }
    .end annotation

    .line 412
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 413
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 415
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return v1

    .line 420
    :cond_c
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    if-nez p3, :cond_1a

    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seekInsideBufferUs(J)Z

    move-result p3

    if-eqz p3, :cond_1a

    return v2

    .line 425
    :cond_1a
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 426
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 427
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 428
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 429
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto :goto_34

    .line 431
    :cond_31
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    :goto_34
    return v1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJZ)Z
    .registers 27
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
            "selections",
            "mayRetainStreamFlags",
            "streams",
            "streamResetFlags",
            "positionUs",
            "forceReset"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 277
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 278
    iget v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    const/4 v14, 0x0

    const/4 v4, 0x0

    .line 280
    :goto_11
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_33

    .line 281
    aget-object v5, v2, v4

    if-eqz v5, :cond_30

    aget-object v5, v1, v4

    if-eqz v5, :cond_22

    aget-boolean v5, p2, v4

    if-nez v5, :cond_30

    .line 282
    :cond_22
    iget v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    sub-int/2addr v5, v15

    iput v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 283
    aget-object v5, v2, v4

    check-cast v5, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->unbindSampleQueue()V

    .line 284
    aput-object v6, v2, v4

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_33
    if-nez p7, :cond_45

    .line 290
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-eqz v4, :cond_3c

    if-nez v3, :cond_43

    goto :goto_45

    :cond_3c
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    cmp-long v5, v12, v3

    if-eqz v5, :cond_43

    goto :goto_45

    :cond_43
    const/4 v3, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v3, 0x1

    .line 297
    :goto_46
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getTrackSelection()Landroidx/media2/exoplayer/external/trackselection/TrackSelection;

    move-result-object v4

    move/from16 v16, v3

    move-object v11, v4

    const/4 v3, 0x0

    .line 300
    :goto_50
    array-length v5, v1

    if-ge v3, v5, :cond_b0

    .line 301
    aget-object v5, v2, v3

    if-nez v5, :cond_ad

    aget-object v5, v1, v3

    if-eqz v5, :cond_ad

    .line 302
    iget v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    add-int/2addr v5, v15

    iput v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 303
    aget-object v5, v1, v3

    .line 304
    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroups:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-interface {v5}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v7

    .line 305
    iget v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v7, v8, :cond_76

    .line 307
    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v8, v5}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->selectTracks(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V

    move-object v11, v5

    .line 309
    :cond_76
    new-instance v5, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    invoke-direct {v5, v0, v7}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;-><init>(Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v5, v2, v3

    .line 310
    aput-boolean v15, p4, v3

    .line 311
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-eqz v5, :cond_8a

    .line 312
    aget-object v5, v2, v3

    check-cast v5, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStream;->bindSampleQueue()V

    .line 315
    :cond_8a
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v5, :cond_ad

    if-nez v16, :cond_ad

    .line 316
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v7, v8, v7

    aget-object v5, v5, v7

    .line 317
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 322
    invoke-virtual {v5, v12, v13, v15, v15}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_aa

    .line 323
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getReadIndex()I

    move-result v5

    if-eqz v5, :cond_aa

    const/4 v5, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v5, 0x0

    :goto_ab
    move/from16 v16, v5

    :cond_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 328
    :cond_b0
    iget v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v1, :cond_e7

    .line 329
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->reset()V

    .line 330
    iput-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Landroidx/media2/exoplayer/external/Format;

    .line 331
    iput-boolean v15, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 332
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 334
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v1, :cond_db

    .line 336
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v3, v1

    :goto_d1
    if-ge v14, v3, :cond_db

    aget-object v4, v1, v14

    .line 337
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_d1

    .line 340
    :cond_db
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto/16 :goto_14d

    .line 342
    :cond_e2
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    goto/16 :goto_14d

    .line 345
    :cond_e7
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 346
    invoke-static {v11, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13a

    .line 350
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-nez v1, :cond_131

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_100

    neg-long v3, v12

    :cond_100
    move-wide v6, v3

    .line 352
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;

    move-result-object v1

    .line 353
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    .line 354
    invoke-virtual {v3, v1, v12, v13}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->createMediaChunkIterators(Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;J)[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 355
    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    invoke-interface/range {v3 .. v11}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V

    .line 361
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaChunk;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v1

    .line 362
    invoke-interface/range {v18 .. v18}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v3

    if-eq v3, v1, :cond_12f

    goto :goto_131

    :cond_12f
    const/4 v1, 0x0

    goto :goto_132

    :cond_131
    :goto_131
    const/4 v1, 0x1

    :goto_132
    if-eqz v1, :cond_13a

    .line 374
    iput-boolean v15, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    const/4 v1, 0x1

    const/16 v16, 0x1

    goto :goto_13c

    :cond_13a
    move/from16 v1, p7

    :goto_13c
    if-eqz v16, :cond_14d

    .line 378
    invoke-virtual {v0, v12, v13, v1}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 380
    :goto_141
    array-length v1, v2

    if-ge v14, v1, :cond_14d

    .line 381
    aget-object v1, v2, v14

    if-eqz v1, :cond_14a

    .line 382
    aput-boolean v15, p4, v14

    :cond_14a
    add-int/lit8 v14, v14, 0x1

    goto :goto_141

    .line 388
    :cond_14d
    :goto_14d
    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->updateSampleStreams([Landroidx/media2/exoplayer/external/source/SampleStream;)V

    .line 389
    iput-boolean v15, v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    return v16
.end method

.method public setIsTimestampMaster(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTimestampMaster"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkSource:Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;->setIsTimestampMaster(Z)V

    return-void
.end method

.method public setSampleOffsetUs(J)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleOffsetUs"
        }
    .end annotation

    .line 876
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    .line 877
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 878
    invoke-virtual {v3, p1, p2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setSampleOffsetUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public skipData(IJ)I
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleQueueIndex",
            "positionUs"
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 532
    :cond_8
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object p1, v0, p1

    .line 533
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v0, p2, v2

    if-lez v0, :cond_1d

    .line 534
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceToEnd()I

    move-result p1

    return p1

    :cond_1d
    const/4 v0, 0x1

    .line 536
    invoke-virtual {p1, p2, p3, v0, v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_26

    goto :goto_27

    :cond_26
    move v1, p1

    :goto_27
    return v1
.end method

.method public track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_31

    .line 793
    iget v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    if-eq v6, v3, :cond_28

    .line 794
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    if-eqz v1, :cond_1f

    .line 795
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_1a

    .line 796
    aget-object p1, v0, v6

    goto :goto_1e

    .line 797
    :cond_1a
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object p1

    :goto_1e
    return-object p1

    .line 799
    :cond_1f
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 800
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, p2, v6

    .line 801
    aget-object p1, v0, v6

    return-object p1

    .line 802
    :cond_28
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_75

    .line 803
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    :cond_31
    if-ne p2, v4, :cond_5b

    .line 806
    iget v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    if-eq v6, v3, :cond_52

    .line 807
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    if-eqz v1, :cond_49

    .line 808
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v1, v1, v6

    if-ne v1, p1, :cond_44

    .line 809
    aget-object p1, v0, v6

    goto :goto_48

    .line 810
    :cond_44
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object p1

    :goto_48
    return-object p1

    .line 812
    :cond_49
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    .line 813
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, p2, v6

    .line 814
    aget-object p1, v0, v6

    return-object p1

    .line 815
    :cond_52
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_75

    .line 816
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v1, :cond_6c

    .line 820
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_69

    .line 821
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object p1, p1, v0

    return-object p1

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 824
    :cond_6c
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_75

    .line 825
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->createDummyTrackOutput(II)Landroidx/media2/exoplayer/external/extractor/DummyTrackOutput;

    move-result-object p1

    return-object p1

    .line 828
    :cond_75
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-direct {v0, v3}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;-><init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V

    .line 829
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    invoke-virtual {v0, v6, v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 830
    iget v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->chunkUid:I

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->sourceId(I)V

    .line 831
    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setUpstreamFormatChangeListener(Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 832
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 833
    aput p1, v3, v1

    .line 834
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 835
    aput-object v0, p1, v1

    .line 836
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    if-eq p2, v5, :cond_ad

    if-ne p2, v4, :cond_ae

    :cond_ad
    const/4 v2, 0x1

    .line 837
    :cond_ae
    aput-boolean v2, p1, v1

    .line 839
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v2, v2, v1

    or-int/2addr p1, v2

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-ne p2, v5, :cond_c0

    .line 841
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueMappingDone:Z

    .line 842
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->audioSampleQueueIndex:I

    goto :goto_c6

    :cond_c0
    if-ne p2, v4, :cond_c6

    .line 844
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueMappingDone:Z

    .line 845
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->videoSampleQueueIndex:I

    .line 847
    :cond_c6
    :goto_c6
    invoke-static {p2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result p1

    iget v2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    invoke-static {v2}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v2

    if-le p1, v2, :cond_d6

    .line 848
    iput v1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    .line 849
    iput p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    .line 851
    :cond_d6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    return-object v0
.end method

.method public unbindSampleQueue(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackGroupIndex"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget p1, v0, p1

    .line 254
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 255
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method
