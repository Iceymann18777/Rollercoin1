.class public Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/SampleStream;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field decodeOnlyUntilPositionUs:J

.field private final embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

.field private final embeddedTrackTypes:[I

.field private final embeddedTracksSelected:[Z

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field loadingFinished:Z

.field private final mediaChunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

.field private nextNotifyPrimaryFormatMediaChunkIndex:I

.field private pendingResetPositionUs:J

.field private primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private final primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

.field public final primaryTrackType:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lcom/google/android/exoplayer2/Format;",
            "TT;",
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;>;",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "*>;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 116
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    .line 117
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

    .line 118
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    .line 119
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    .line 120
    iput-object p11, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 121
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 122
    new-instance p3, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 123
    new-instance p3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .line 124
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 125
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p2, :cond_33

    const/4 p4, 0x0

    goto :goto_34

    .line 127
    :cond_33
    array-length p4, p2

    .line 128
    :goto_34
    new-array p5, p4, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 129
    new-array p5, p4, [Z

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    add-int/lit8 p5, p4, 0x1

    .line 130
    new-array p10, p5, [I

    .line 131
    new-array p5, p5, [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 133
    new-instance p11, Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-direct {p11, p6, p9}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    iput-object p11, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 134
    aput p1, p10, p3

    .line 135
    aput-object p11, p5, p3

    :goto_4d
    if-ge p3, p4, :cond_66

    .line 138
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 139
    invoke-static {}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$-CC;->getDummyDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p9

    invoke-direct {p1, p6, p9}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    .line 140
    iget-object p9, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object p1, p9, p3

    add-int/lit8 p9, p3, 0x1

    .line 141
    aput-object p1, p5, p9

    .line 142
    aget p1, p2, p3

    aput p1, p10, p9

    move p3, p9

    goto :goto_4d

    .line 145
    :cond_66
    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-direct {p1, p10, p5}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;-><init>([I[Lcom/google/android/exoplayer2/source/SampleQueue;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 146
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 147
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[I
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Lcom/google/android/exoplayer2/Format;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)J
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method private discardDownstreamMediaChunks(I)V
    .registers 4

    const/4 v0, 0x0

    .line 648
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result p1

    .line 650
    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 651
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_17

    .line 653
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 654
    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    :cond_17
    return-void
.end method

.method private discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .registers 5

    .line 712
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 713
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    .line 714
    iget p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 715
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 716
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 717
    :goto_29
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, p1

    if-ge v1, v2, :cond_3a

    .line 718
    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    goto :goto_29

    :cond_3a
    return-object v0
.end method

.method private getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .registers 3

    .line 701
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return-object v0
.end method

.method private haveReadFromMediaChunk(I)Z
    .registers 7

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 631
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_17

    return v3

    :cond_17
    const/4 v0, 0x0

    .line 634
    :cond_18
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v4, v2

    if-ge v0, v4, :cond_2c

    .line 635
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    if-le v2, v4, :cond_18

    return v3

    :cond_2c
    return v1
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .registers 2

    .line 625
    instance-of p1, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return p1
.end method

.method private maybeNotifyPrimaryTrackFormatChanged()V
    .registers 4

    .line 659
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    .line 660
    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 661
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v0

    .line 663
    :goto_e
    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    if-gt v1, v0, :cond_1a

    add-int/lit8 v2, v1, 0x1

    .line 664
    iput v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged(I)V

    goto :goto_e

    :cond_1a
    return-void
.end method

.method private maybeNotifyPrimaryTrackFormatChanged(I)V
    .registers 10

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 670
    iget-object v7, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    .line 671
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 672
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 676
    :cond_20
    iput-object v7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method private primarySampleIndexToMediaChunkIndex(II)I
    .registers 5

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1c

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 697
    :cond_1c
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 24

    move-object/from16 v0, p0

    .line 520
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a6

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_a6

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_a6

    .line 524
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 529
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_2e

    .line 531
    :cond_26
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    :goto_2e
    move-object v11, v3

    move-wide v9, v4

    .line 534
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    move-wide/from16 v7, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V

    .line 535
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    .line 536
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 537
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->clear()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v3, :cond_53

    .line 540
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 541
    iput-boolean v7, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    return v7

    :cond_53
    if-nez v4, :cond_56

    return v2

    .line 549
    :cond_56
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 550
    move-object v3, v4

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    if-eqz v1, :cond_75

    .line 552
    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_6a

    const/4 v2, 0x1

    :cond_6a
    if-eqz v2, :cond_6f

    const-wide/16 v1, 0x0

    goto :goto_71

    .line 554
    :cond_6f
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :goto_71
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    .line 555
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 557
    :cond_75
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->init(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)V

    .line 558
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_7f
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v3, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    .line 562
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 561
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v19

    .line 563
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v9, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v10, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v11, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v12, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v13, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v14, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v1, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v3, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return v7

    :cond_a6
    :goto_a6
    return v2
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstIndex()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    .line 163
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstIndex()I

    move-result p1

    if-le p1, v0, :cond_33

    .line 165
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstTimestampUs()J

    move-result-wide v0

    const/4 p2, 0x0

    .line 166
    :goto_22
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v2

    if-ge p2, v3, :cond_33

    .line 167
    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v0, v1, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_22

    .line 170
    :cond_33
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .registers 5

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 5

    .line 212
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 214
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 215
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 217
    :cond_10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 218
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_36

    :cond_1d
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_35

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    if-eqz v2, :cond_3e

    .line 222
    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 224
    :cond_3e
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 583
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 584
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 586
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_16

    :cond_10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    :goto_16
    return-wide v0
.end method

.method public isLoading()Z
    .registers 2

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    return v0
.end method

.method isPendingReset()Z
    .registers 6

    .line 643
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

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

.method public isReady()Z
    .registers 3

    .line 359
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->maybeThrowError()V

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_17

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->maybeThrowError()V

    :cond_17
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 426
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v7, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v19

    .line 426
    invoke-virtual/range {v2 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_43

    .line 441
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 442
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v2, :cond_3e

    aget-object v4, v1, v3

    .line 443
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 445
    :cond_3e
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_43
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 46
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 405
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 406
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 408
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v7, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 419
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v19

    .line 406
    invoke-virtual/range {v2 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 420
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 46
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 456
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v25

    .line 457
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v8

    .line 458
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    add-int/lit8 v10, v1, -0x1

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, v25, v1

    if-eqz v3, :cond_27

    if-eqz v8, :cond_27

    .line 460
    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v12, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v12, 0x1

    :goto_28
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v12, :cond_3f

    .line 461
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v2, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 463
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getBlacklistDurationMsFor(IJLjava/io/IOException;I)J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_40

    :cond_3f
    move-wide v5, v13

    :goto_40
    const/4 v15, 0x0

    .line 467
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-object/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLjava/lang/Exception;J)Z

    move-result v1

    if-eqz v1, :cond_74

    if-eqz v12, :cond_6d

    .line 469
    sget-object v15, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    if-eqz v8, :cond_74

    .line 471
    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v1

    if-ne v1, v7, :cond_5c

    const/4 v1, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    .line 472
    :goto_5d
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 473
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 474
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_74

    :cond_6d
    const-string v1, "ChunkSampleStream"

    const-string v2, "Ignoring attempt to cancel non-cancelable load."

    .line 478
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    :goto_74
    if-nez v15, :cond_90

    .line 484
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v2, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 485
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-eqz v3, :cond_8d

    .line 489
    invoke-static {v11, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v1

    goto :goto_8f

    :cond_8d
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_8f
    move-object v15, v1

    :cond_90
    move-object v1, v15

    .line 493
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v2

    xor-int/2addr v2, v9

    move/from16 v28, v2

    .line 494
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v9, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v10

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v11

    iget v12, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v13, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v14, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v15, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v3, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v16, v3

    iget-wide v3, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    move-wide/from16 v17, v3

    iget-wide v3, v7, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-wide/from16 v19, v3

    move-wide/from16 v21, p2

    move-wide/from16 v23, p4

    move-object/from16 v27, p6

    .line 494
    invoke-virtual/range {v8 .. v28}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v2, :cond_c8

    .line 511
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_c8
    return-object v1
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 46
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 348
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 350
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    if-eqz v0, :cond_1a

    .line 351
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;->onSampleStreamReleased(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    :cond_1a
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .registers 11

    .line 374
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x3

    return p1

    .line 377
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p1

    return p1
.end method

.method public reevaluateBuffer(J)V
    .registers 9

    .line 592
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_5a

    .line 596
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 597
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result p1

    if-gt v0, p1, :cond_28

    return-void

    :cond_28
    :goto_28
    if-ge p1, v0, :cond_34

    .line 604
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result p2

    if-nez p2, :cond_31

    goto :goto_35

    :cond_31
    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_34
    move p1, v0

    :goto_35
    if-ne p1, v0, :cond_38

    return-void

    .line 613
    :cond_38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object p2

    iget-wide v4, p2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 614
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object p1

    .line 615
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 616
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :cond_4e
    const/4 p2, 0x0

    .line 618
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 619
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    return-void
.end method

.method public release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    .line 337
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    .line 338
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    .line 339
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 341
    :cond_15
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public seekToUs(J)V
    .registers 14

    .line 246
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 247
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 249
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-void

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 255
    :goto_e
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 256
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 257
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_31

    .line 258
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->clippedStartTimeUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-nez v10, :cond_31

    move-object v0, v3

    goto :goto_39

    :cond_31
    cmp-long v3, v4, p1

    if-lez v3, :cond_36

    goto :goto_39

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 269
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    const/4 v2, 0x1

    if-eqz v0, :cond_50

    .line 274
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setReadPosition(I)Z

    move-result v0

    const-wide/16 v3, 0x0

    .line 276
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    goto :goto_6b

    .line 278
    :cond_50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 282
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getNextLoadPositionUs()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_5c

    const/4 v3, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v3, 0x0

    .line 279
    :goto_5d
    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_66

    const/4 v0, 0x1

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    .line 284
    :goto_67
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->decodeOnlyUntilPositionUs:J

    :goto_6b
    if-eqz v0, :cond_8a

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 291
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    .line 290
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_7d
    if-ge v4, v3, :cond_ba

    aget-object v5, v0, v4

    .line 294
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 295
    invoke-virtual {v5, p1, p2, v2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_7d

    .line 299
    :cond_8a
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 300
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 301
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 302
    iput v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 303
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 304
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_ba

    .line 306
    :cond_a3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->clearFatalError()V

    .line 307
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    .line 308
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_b0
    if-ge v1, p2, :cond_ba

    aget-object v0, p1, v1

    .line 309
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    :cond_ba
    :goto_ba
    return-void
.end method

.method public selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_31

    .line 186
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 187
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aput-boolean v1, p3, v0

    .line 188
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 189
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    .line 190
    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/SampleQueue;I)V

    return-object p1

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method

.method public skipData(J)I
    .registers 7

    .line 385
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 389
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1d

    .line 390
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceToEnd()I

    move-result v1

    goto :goto_29

    .line 392
    :cond_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceTo(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_28

    goto :goto_29

    :cond_28
    move v1, p1

    .line 397
    :goto_29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    return v1
.end method
