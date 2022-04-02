.class final Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
.implements Landroidx/media2/exoplayer/external/source/MediaPeriod;
.implements Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Callback;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;,
        Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;",
        "Landroidx/media2/exoplayer/external/source/MediaPeriod;",
        "Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$Callback<",
        "Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;",
        ">;",
        "Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# static fields
.field private static final ICY_FORMAT:Landroidx/media2/exoplayer/external/Format;


# instance fields
.field private final allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

.field private callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

.field private dataType:I

.field private durationUs:J

.field private enabledTrackCount:I

.field private final eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private extractedSamplesCountAtStartOfLoad:I

.field private final extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

.field private lastSeekPositionUs:J

.field private length:J

.field private final listener:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;

.field private final loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

.field private final loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private final loader:Landroidx/media2/exoplayer/external/upstream/Loader;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private notifiedReadingStarted:Z

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private preparedState:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

.field private released:Z

.field private sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

.field private sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

.field private sampleQueuesBuilt:Z

.field private seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

.field private seenFirstTrackSelection:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "icy"

    const-string v1, "application/x-icy"

    const-wide v2, 0x7fffffffffffffffL

    .line 97
    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource;[Landroidx/media2/exoplayer/external/extractor/Extractor;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;Landroidx/media2/exoplayer/external/upstream/Allocator;Ljava/lang/String;I)V
    .registers 10
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
            "uri",
            "dataSource",
            "extractors",
            "loadErrorHandlingPolicy",
            "eventDispatcher",
            "listener",
            "allocator",
            "customCacheKey",
            "continueLoadingCheckIntervalBytes"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    .line 170
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    .line 171
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    .line 172
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 173
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;

    .line 174
    iput-object p7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 175
    iput-object p8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    int-to-long p1, p9

    .line 176
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 177
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/Loader;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    .line 178
    new-instance p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    invoke-direct {p1, p3}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;-><init>([Landroidx/media2/exoplayer/external/extractor/Extractor;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    .line 179
    new-instance p1, Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    .line 180
    new-instance p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$$Lambda$0;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 181
    new-instance p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$$Lambda$1;

    invoke-direct {p1, p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 188
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 189
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    new-array p1, p1, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 190
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 191
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    const-wide/16 p3, -0x1

    .line 192
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    .line 193
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    const/4 p1, 0x1

    .line 194
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    .line 195
    invoke-virtual {p5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroid/os/Handler;
    .registers 1

    .line 68
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)J
    .registers 3

    .line 68
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .registers 1

    .line 68
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method static synthetic access$602(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .registers 2

    .line 68
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method static synthetic access$700()Landroidx/media2/exoplayer/external/Format;
    .registers 1

    .line 68
    sget-object v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media2/exoplayer/external/Format;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)J
    .registers 3

    .line 68
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;
    .registers 1

    .line 68
    iget-object p0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private configureRetry(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "loadable",
            "currentExtractedSampleCount"
        }
    .end annotation

    .line 779
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_44

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    if-eqz v0, :cond_1b

    .line 780
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1b

    goto :goto_44

    .line 785
    :cond_1b
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_29

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result p2

    if-nez p2, :cond_29

    .line 795
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    return v0

    .line 802
    :cond_29
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v3, 0x0

    .line 803
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 804
    iput v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 805
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, p2

    :goto_36
    if-ge v0, v1, :cond_40

    aget-object v5, p2, v0

    .line 806
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 808
    :cond_40
    invoke-static {p1, v3, v4, v3, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$500(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    return v2

    .line 783
    :cond_44
    :goto_44
    iput p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    return v2
.end method

.method private copyLengthFromLoader(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadable"
        }
    .end annotation

    .line 732
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 733
    invoke-static {p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    :cond_e
    return-void
.end method

.method private getExtractedSamplesCount()I
    .registers 6

    .line 840
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v4, v0, v2

    .line 841
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getWriteIndex()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    return v3
.end method

.method private getLargestQueuedTimestampUs()J
    .registers 8

    .line 848
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_15

    aget-object v5, v0, v4

    .line 850
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    .line 849
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_15
    return-wide v2
.end method

.method private getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;
    .registers 2

    .line 728
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->preparedState:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    return-object v0
.end method

.method private isPendingReset()Z
    .registers 6

    .line 856
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

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

.method private maybeFinishPrepare()V
    .registers 13

    .line 677
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 678
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->released:Z

    if-nez v1, :cond_e1

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v1, :cond_e1

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v1, :cond_e1

    if-nez v0, :cond_12

    goto/16 :goto_e1

    .line 681
    :cond_12
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_25

    aget-object v5, v1, v4

    .line 682
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    if-nez v5, :cond_22

    return-void

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 686
    :cond_25
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->close()Z

    .line 687
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v1

    .line 688
    new-array v2, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 689
    new-array v4, v1, [Z

    .line 690
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getDurationUs()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    const/4 v5, 0x0

    :goto_38
    const/4 v6, 0x1

    if-ge v5, v1, :cond_a3

    .line 692
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getUpstreamFormat()Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 693
    iget-object v8, v7, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 694
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_54

    .line 695
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_54

    :cond_52
    const/4 v8, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 v8, 0x1

    .line 696
    :goto_55
    aput-boolean v8, v4, v5

    .line 697
    iget-boolean v10, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v8, v10

    iput-boolean v8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    .line 698
    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-eqz v8, :cond_95

    if-nez v9, :cond_6a

    .line 700
    iget-object v10, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    aget-object v10, v10, v5

    iget-boolean v10, v10, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-eqz v10, :cond_84

    .line 701
    :cond_6a
    iget-object v10, v7, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v10, :cond_78

    .line 705
    new-instance v10, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v11, v6, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v8, v11, v3

    invoke-direct {v10, v11}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    goto :goto_80

    :cond_78
    new-array v11, v6, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v8, v11, v3

    .line 706
    invoke-virtual {v10, v11}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntries([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v10

    .line 703
    :goto_80
    invoke-virtual {v7, v10}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    :cond_84
    if-eqz v9, :cond_95

    .line 708
    iget v9, v7, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_95

    iget v9, v8, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v9, v10, :cond_95

    .line 711
    iget v8, v8, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/Format;->copyWithBitrate(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 714
    :cond_95
    new-instance v8, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v6, v6, [Landroidx/media2/exoplayer/external/Format;

    aput-object v7, v6, v3

    invoke-direct {v8, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 717
    :cond_a3
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->length:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_ba

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getDurationUs()J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-nez v1, :cond_ba

    const/4 v1, 0x7

    goto :goto_bb

    :cond_ba
    const/4 v1, 0x1

    .line 719
    :goto_bb
    iput v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    .line 720
    new-instance v1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    new-instance v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v3, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    invoke-direct {v1, v0, v3, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;-><init>(Landroidx/media2/exoplayer/external/extractor/SeekMap;Landroidx/media2/exoplayer/external/source/TrackGroupArray;[Z)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->preparedState:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    .line 722
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    .line 723
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->isSeekable()Z

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 724
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onPrepared(Landroidx/media2/exoplayer/external/source/MediaPeriod;)V

    :cond_e1
    :goto_e1
    return-void
.end method

.method private maybeNotifyDownstreamFormat(I)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "track"
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    .line 488
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackNotifiedDownstreamFormats:[Z

    .line 489
    aget-boolean v2, v1, p1

    if-nez v2, :cond_27

    .line 490
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 491
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v5, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 492
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 491
    invoke-virtual/range {v3 .. v9}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 497
    aput-boolean v0, v1, p1

    :cond_27
    return-void
.end method

.method private maybeStartDeferredRetry(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "track"
        }
    .end annotation

    .line 502
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackIsAudioVideoFlags:[Z

    .line 503
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v1, :cond_3f

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object p1, v0, p1

    .line 505
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_3f

    :cond_19
    const-wide/16 v0, 0x0

    .line 508
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    const/4 p1, 0x0

    .line 509
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    const/4 v2, 0x1

    .line 510
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 511
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 512
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 513
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    :goto_2a
    if-ge p1, v1, :cond_34

    aget-object v2, v0, p1

    .line 514
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    .line 516
    :cond_34
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method private prepareTrackOutput(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    .line 660
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 661
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object p1, p1, v1

    return-object p1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 664
    :cond_18
    new-instance v1, Landroidx/media2/exoplayer/external/source/SampleQueue;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->allocator:Landroidx/media2/exoplayer/external/upstream/Allocator;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;-><init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V

    .line 665
    invoke-virtual {v1, p0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->setUpstreamFormatChangeListener(Landroidx/media2/exoplayer/external/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 667
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 668
    aput-object p1, v2, v0

    .line 669
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 670
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    .line 671
    aput-object v1, p1, v0

    .line 672
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/source/SampleQueue;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    return-object v1
.end method

.method private seekInsideBufferUs([ZJ)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackIsAudioVideoFlags",
            "positionUs"
        }
    .end annotation

    .line 821
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_26

    .line 823
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v4, v4, v2

    .line 824
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 825
    invoke-virtual {v4, p2, p3, v3, v1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_17

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    if-nez v3, :cond_23

    .line 831
    aget-boolean v3, p1, v2

    if-nez v3, :cond_22

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v3, :cond_23

    :cond_22
    return v1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_26
    return v3
.end method

.method private startLoading()V
    .registers 23

    move-object/from16 v7, p0

    .line 738
    new-instance v8, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataSource:Landroidx/media2/exoplayer/external/upstream/DataSource;

    iget-object v4, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    iget-object v6, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/util/ConditionVariable;)V

    .line 741
    iget-boolean v0, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_4d

    .line 742
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 743
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 744
    iget-wide v1, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3c

    iget-wide v5, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    cmp-long v9, v5, v1

    if-ltz v9, :cond_3c

    const/4 v0, 0x1

    .line 745
    iput-boolean v0, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 746
    iput-wide v3, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-void

    .line 749
    :cond_3c
    iget-wide v1, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 750
    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;->first:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->position:J

    iget-wide v5, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 749
    invoke-static {v8, v0, v1, v5, v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$500(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    .line 751
    iput-wide v3, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 753
    :cond_4d
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iput v0, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 754
    iget-object v0, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v1, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v2, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    .line 756
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    .line 755
    invoke-virtual {v0, v8, v7, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->startLoading(Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;Landroidx/media2/exoplayer/external/upstream/Loader$Callback;I)J

    move-result-wide v20

    .line 757
    iget-object v9, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 758
    invoke-static {v8}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 764
    invoke-static {v8}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    iget-wide v0, v7, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    move-wide/from16 v18, v0

    .line 757
    invoke-virtual/range {v9 .. v21}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private suppressRead()Z
    .registers 2

    .line 520
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$ProgressiveMediaPeriod()V
    .registers 1

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method public continueLoading(J)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackPositionUs"
        }
    .end annotation

    .line 336
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez p1, :cond_24

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-nez p1, :cond_24

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz p1, :cond_11

    iget p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_11

    goto :goto_24

    .line 339
    :cond_11
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->open()Z

    move-result p1

    .line 340
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result p2

    if-nez p2, :cond_23

    .line 341
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->startLoading()V

    const/4 p1, 0x1

    :cond_23
    return p1

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 9
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

    .line 319
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 322
    :cond_7
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackEnabledStates:[Z

    .line 323
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1f

    .line 325
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    return-void
.end method

.method public endTracks()V
    .registers 3

    const/4 v0, 0x1

    .line 632
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    .line 633
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;)J
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "seekParameters"
        }
    .end annotation

    .line 430
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 431
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_f

    const-wide/16 p1, 0x0

    return-wide p1

    .line 435
    :cond_f
    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->getSeekPoints(J)Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 436
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;->first:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/SeekMap$SeekPoints;->second:Landroidx/media2/exoplayer/external/extractor/SeekPoint;

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/SeekPoint;->timeUs:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Landroidx/media2/exoplayer/external/util/Util;->resolveSeekPositionUs(JLandroidx/media2/exoplayer/external/SeekParameters;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 12

    .line 368
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackIsAudioVideoFlags:[Z

    .line 369
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_d

    return-wide v2

    .line 371
    :cond_d
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 372
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 375
    :cond_16
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_43

    .line 377
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_24
    if-ge v6, v1, :cond_44

    .line 379
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_40

    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/SampleQueue;->isLastSampleQueued()Z

    move-result v9

    if-nez v9, :cond_40

    .line 380
    iget-object v9, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v9, v9, v6

    .line 381
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v9

    .line 380
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_43
    move-wide v7, v4

    :cond_44
    cmp-long v0, v7, v4

    if-nez v0, :cond_4c

    .line 386
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v7

    :cond_4c
    cmp-long v0, v7, v2

    if-nez v0, :cond_52

    .line 388
    iget-wide v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    :cond_52
    return-wide v7
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 349
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .registers 2

    .line 238
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    return-object v0
.end method

.method icyTrack()Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .registers 4

    .line 645
    new-instance v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method

.method isReady(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "track"
        }
    .end annotation

    .line 443
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;->hasNextSample()Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method final synthetic lambda$new$0$ProgressiveMediaPeriod()V
    .registers 2

    .line 183
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_f

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 185
    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    :cond_f
    return-void
.end method

.method maybeThrowError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader;->maybeThrowError(I)V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeThrowError()V

    .line 231
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_c

    goto :goto_14

    .line 232
    :cond_c
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    return-void
.end method

.method public onLoadCanceled(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V
    .registers 27
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

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 557
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 558
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v2

    .line 559
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v3

    .line 560
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v4

    .line 566
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v10

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 570
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v18

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 557
    invoke-virtual/range {v1 .. v19}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_54

    .line 572
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    .line 573
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v2, :cond_45

    aget-object v4, v1, v3

    .line 574
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 576
    :cond_45
    iget v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-lez v1, :cond_54

    .line 577
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

    :cond_54
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

    .line 67
    check-cast p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onLoadCanceled(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .registers 30
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

    .line 528
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_2c

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    if-eqz v1, :cond_2c

    .line 529
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->isSeekable()Z

    move-result v1

    .line 530
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_22

    const-wide/16 v2, 0x0

    goto :goto_25

    :cond_22
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 532
    :goto_25
    iput-wide v2, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 533
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->listener:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;

    invoke-interface {v4, v2, v3, v1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JZ)V

    .line 535
    :cond_2c
    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 536
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v6

    .line 537
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v7

    .line 538
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 544
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v14

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    move-wide/from16 v16, v1

    .line 548
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v22

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    .line 535
    invoke-virtual/range {v5 .. v23}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    .line 549
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    const/4 v1, 0x1

    .line 550
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 551
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V

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

    .line 67
    check-cast p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p5}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onLoadCompleted(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
    .registers 33
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

    .line 589
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->copyLengthFromLoader(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    .line 591
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget v2, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 592
    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(IJLjava/io/IOException;I)J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-nez v6, :cond_22

    .line 594
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-object/from16 v6, p1

    goto :goto_3e

    .line 596
    :cond_22
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v4

    .line 597
    iget v5, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v4, v5, :cond_2e

    move-object/from16 v6, p1

    const/4 v5, 0x1

    goto :goto_31

    :cond_2e
    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 599
    :goto_31
    invoke-direct {v0, v6, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->configureRetry(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 600
    invoke-static {v5, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->createRetryAction(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object v1

    goto :goto_3e

    .line 601
    :cond_3c
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/Loader;->DONT_RETRY:Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 604
    :goto_3e
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 605
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v5

    .line 606
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v2

    .line 607
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 613
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v13

    move-wide v15, v13

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->durationUs:J

    .line 617
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v21

    .line 619
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v6

    xor-int/lit8 v24, v6, 0x1

    move-object v6, v2

    move-wide/from16 v17, v12

    const/4 v2, 0x0

    move-object v12, v2

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, p2

    move-wide/from16 v19, p4

    move-object/from16 v23, p6

    .line 604
    invoke-virtual/range {v4 .. v24}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v1
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

    .line 67
    check-cast p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p7}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->onLoadError(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 215
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 216
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 218
    :cond_e
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->release()V

    return-void
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

    .line 652
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepare(Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "positionUs"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    .line 224
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->open()Z

    .line 225
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->startLoading()V

    return-void
.end method

.method readData(ILandroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;Z)I
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "track",
            "formatHolder",
            "buffer",
            "formatRequired"
        }
    .end annotation

    .line 452
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_8

    return v1

    .line 455
    :cond_8
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 456
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 457
    invoke-virtual/range {v2 .. v8}, Landroidx/media2/exoplayer/external/source/SampleQueue;->read(Landroidx/media2/exoplayer/external/FormatHolder;Landroidx/media2/exoplayer/external/decoder/DecoderInputBuffer;ZZJ)I

    move-result p2

    if-ne p2, v1, :cond_1f

    .line 460
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_1f
    return p2
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 354
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_c

    .line 355
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifiedReadingStarted:Z

    .line 358
    :cond_c
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1c

    .line 359
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v1, :cond_22

    :cond_1c
    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 361
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    :cond_22
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
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

    .line 199
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_12

    .line 202
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 203
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 206
    :cond_12
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0, p0}, Landroidx/media2/exoplayer/external/upstream/Loader;->release(Landroidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback;)V

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->callback:Landroidx/media2/exoplayer/external/source/MediaPeriod$Callback;

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->released:Z

    .line 210
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    return-void
.end method

.method public seekMap(Landroidx/media2/exoplayer/external/extractor/SeekMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekMap"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-nez v0, :cond_5

    goto :goto_f

    :cond_5
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_f
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 639
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekToUs(J)J
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 394
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    .line 395
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->seekMap:Landroidx/media2/exoplayer/external/extractor/SeekMap;

    .line 396
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackIsAudioVideoFlags:[Z

    .line 398
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const-wide/16 p1, 0x0

    :goto_11
    const/4 v1, 0x0

    .line 400
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 401
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 402
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 404
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide p1

    .line 409
    :cond_1f
    iget v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->dataType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2b

    .line 410
    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekInsideBufferUs([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2b

    return-wide p1

    .line 415
    :cond_2b
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 416
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 417
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 418
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 419
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto :goto_4c

    .line 421
    :cond_3f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length v2, v0

    :goto_42
    if-ge v1, v2, :cond_4c

    aget-object v3, v0, v1

    .line 422
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_4c
    :goto_4c
    return-wide p1
.end method

.method public selectTracks([Landroidx/media2/exoplayer/external/trackselection/TrackSelection;[Z[Landroidx/media2/exoplayer/external/source/SampleStream;[ZJ)J
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "positionUs"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->getPreparedState()Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;

    move-result-object v0

    .line 249
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->tracks:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 250
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$PreparedState;->trackEnabledStates:[Z

    .line 251
    iget v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 253
    :goto_c
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_36

    .line 254
    aget-object v5, p3, v4

    if-eqz v5, :cond_33

    aget-object v5, p1, v4

    if-eqz v5, :cond_1c

    aget-boolean v5, p2, v4

    if-nez v5, :cond_33

    .line 255
    :cond_1c
    aget-object v5, p3, v4

    check-cast v5, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;->access$000(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;)I

    move-result v5

    .line 256
    aget-boolean v7, v0, v5

    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 257
    iget v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v7, v6

    iput v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 258
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 259
    aput-object v5, p3, v4

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 264
    :cond_36
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_3d

    if-nez v2, :cond_45

    goto :goto_43

    :cond_3d
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_45

    :goto_43
    const/4 p2, 0x1

    goto :goto_46

    :cond_45
    const/4 p2, 0x0

    :goto_46
    const/4 v2, 0x0

    .line 266
    :goto_47
    array-length v4, p1

    if-ge v2, v4, :cond_a6

    .line 267
    aget-object v4, p3, v2

    if-nez v4, :cond_a3

    aget-object v4, p1, v2

    if-eqz v4, :cond_a3

    .line 268
    aget-object v4, p1, v2

    .line 269
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->length()I

    move-result v5

    if-ne v5, v6, :cond_5c

    const/4 v5, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v5, 0x0

    :goto_5d
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 270
    invoke-interface {v4, v3}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    if-nez v5, :cond_68

    const/4 v5, 0x1

    goto :goto_69

    :cond_68
    const/4 v5, 0x0

    :goto_69
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 271
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v4

    .line 272
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 273
    iget v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    add-int/2addr v5, v6

    iput v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 274
    aput-boolean v6, v0, v4

    .line 275
    new-instance v5, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-direct {v5, p0, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;I)V

    aput-object v5, p3, v2

    .line 276
    aput-boolean v6, p4, v2

    if-nez p2, :cond_a3

    .line 279
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object p2, p2, v4

    .line 280
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->rewind()V

    .line 285
    invoke-virtual {p2, p5, p6, v6, v6}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a2

    .line 286
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getReadIndex()I

    move-result p2

    if-eqz p2, :cond_a2

    const/4 p2, 0x1

    goto :goto_a3

    :cond_a2
    const/4 p2, 0x0

    :cond_a3
    :goto_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 290
    :cond_a6
    iget p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_d6

    .line 291
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 292
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 293
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 295
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length p2, p1

    :goto_b9
    if-ge v3, p2, :cond_c3

    aget-object p3, p1, v3

    .line 296
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    .line 298
    :cond_c3
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loader:Landroidx/media2/exoplayer/external/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/upstream/Loader;->cancelLoading()V

    goto :goto_e8

    .line 300
    :cond_c9
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    array-length p2, p1

    :goto_cc
    if-ge v3, p2, :cond_e8

    aget-object p3, p1, v3

    .line 301
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/source/SampleQueue;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_cc

    :cond_d6
    if-eqz p2, :cond_e8

    .line 305
    invoke-virtual {p0, p5, p6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    .line 307
    :goto_dc
    array-length p1, p3

    if-ge v3, p1, :cond_e8

    .line 308
    aget-object p1, p3, v3

    if-eqz p1, :cond_e5

    .line 309
    aput-boolean v6, p4, v3

    :cond_e5
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 313
    :cond_e8
    :goto_e8
    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method

.method skipData(IJ)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "track",
            "positionUs"
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 469
    :cond_8
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media2/exoplayer/external/source/SampleQueue;

    aget-object v0, v0, p1

    .line 472
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_20

    .line 473
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceToEnd()I

    move-result v1

    goto :goto_2a

    :cond_20
    const/4 v2, 0x1

    .line 475
    invoke-virtual {v0, p2, p3, v2, v2}, Landroidx/media2/exoplayer/external/source/SampleQueue;->advanceTo(JZZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_29

    goto :goto_2a

    :cond_29
    move v1, p2

    :goto_2a
    if-nez v1, :cond_2f

    .line 481
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_2f
    return v1
.end method

.method public track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;
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

    .line 627
    new-instance p2, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object p1

    return-object p1
.end method
