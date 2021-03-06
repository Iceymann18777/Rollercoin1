.class public final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;,
        Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static enablePreV21AudioSessionWorkaround:Z = false

.field public static failOnSpuriousAudioTimestamp:Z = false


# instance fields
.field private activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

.field private audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

.field private final audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

.field private final audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

.field private audioSessionId:I

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

.field private auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

.field private avSyncHeader:Ljava/nio/ByteBuffer;

.field private bytesUntilNextAvSync:I

.field private final channelMappingAudioProcessor:Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

.field private configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

.field private drainingAudioProcessorIndex:I

.field private final enableConvertHighResIntPcmToFloat:Z

.field private framesPerEncodedSample:I

.field private handledEndOfStream:Z

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastFeedElapsedRealtimeMs:J

.field private listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

.field private playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

.field private final playbackParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private playbackParametersOffsetUs:J

.field private playbackParametersPositionUs:J

.field private playing:Z

.field private preV21OutputBuffer:[B

.field private preV21OutputBufferOffset:I

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private stoppedAudioTrack:Z

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final toFloatPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private final toIntPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

.field private final trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

.field private tunneling:Z

.field private volume:F

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioCapabilities",
            "audioProcessorChain",
            "enableConvertHighResIntPcmToFloat"
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 342
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    .line 343
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->enableConvertHighResIntPcmToFloat:Z

    .line 344
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    .line 345
    new-instance p1, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    new-instance v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;-><init>(Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    .line 346
    new-instance p1, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

    .line 347
    new-instance p1, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    .line 348
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/media2/exoplayer/external/audio/BaseAudioProcessor;

    .line 349
    new-instance v1, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/audio/ResamplingAudioProcessor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

    aput-object v1, v0, p3

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 354
    invoke-interface {p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->getAudioProcessors()[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p2, v2, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 355
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    new-array p1, p3, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 356
    new-instance p2, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/audio/FloatResamplingAudioProcessor;-><init>()V

    aput-object p2, p1, v2

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 357
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    .line 358
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 359
    sget-object p1, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->DEFAULT:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 360
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 361
    new-instance p1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    const/4 p2, 0x0

    invoke-direct {p1, v2, p2}, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;-><init>(IF)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    .line 362
    sget-object p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    const/4 p1, -0x1

    .line 363
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    new-array p1, v2, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 364
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    new-array p1, v2, [Ljava/nio/ByteBuffer;

    .line 365
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 366
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioCapabilities",
            "audioProcessors"
        }
    .end annotation

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioCapabilities",
            "audioProcessors",
            "enableConvertHighResIntPcmToFloat"
        }
    .end annotation

    .line 318
    new-instance v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    invoke-direct {v0, p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    invoke-direct {p0, p1, v0, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/AudioCapabilities;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;Z)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .registers 3

    .line 58
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$1100(I)I
    .registers 1

    .line 58
    invoke-static {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .registers 1

    .line 58
    iget-object p0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .registers 3

    .line 58
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J
    .registers 3

    .line 58
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;
    .registers 1

    .line 58
    iget-object p0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    return-object p0
.end method

.method private applySkipping(J)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    .line 1079
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->getSkippedOutputFrameCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private applySpeedup(J)J
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1051
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1052
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$400(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_22

    .line 1053
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    goto :goto_1

    :cond_22
    if-eqz v0, :cond_39

    .line 1057
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 1058
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$400(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    .line 1059
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$500(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    .line 1062
    :cond_39
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iget v0, v0, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4a

    .line 1063
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 1066
    :cond_4a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1067
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long/2addr p1, v3

    .line 1068
    invoke-interface {v2, p1, p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->getMediaDuration(J)J

    move-result-wide p1

    :goto_5d
    add-long/2addr v0, p1

    return-wide v0

    .line 1072
    :cond_5f
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iget v2, v2, Landroidx/media2/exoplayer/external/PlaybackParameters;->speed:F

    .line 1073
    invoke-static {p1, p2, v2}, Landroidx/media2/exoplayer/external/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide p1

    goto :goto_5d
.end method

.method private drainAudioProcessorsToEndOfStream()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 809
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_16

    .line 811
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->processingEnabled:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_12

    :cond_f
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v0, v0

    :goto_12
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    :goto_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 814
    :goto_17
    iget v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3a

    .line 815
    aget-object v4, v5, v4

    if-eqz v0, :cond_2a

    .line 817
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->queueEndOfStream()V

    .line 819
    :cond_2a
    invoke-direct {p0, v7, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->processBuffers(J)V

    .line 820
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->isEnded()Z

    move-result v0

    if-nez v0, :cond_34

    return v3

    .line 824
    :cond_34
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    goto :goto_14

    .line 828
    :cond_3a
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_46

    .line 829
    invoke-direct {p0, v0, v7, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 830
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_46

    return v3

    .line 834
    :cond_46
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    return v2
.end method

.method private flushAudioProcessors()V
    .registers 4

    const/4 v0, 0x0

    .line 503
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 504
    aget-object v1, v1, v0

    .line 505
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->flush()V

    .line 506
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method private static getChannelConfig(IZ)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelCount",
            "isInputPcm"
        }
    .end annotation

    .line 1108
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_18

    if-nez p1, :cond_18

    const/4 v0, 0x7

    if-ne p0, v0, :cond_e

    const/16 p0, 0x8

    goto :goto_18

    :cond_e
    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-ne p0, v0, :cond_18

    :cond_17
    const/4 p0, 0x6

    .line 1122
    :cond_18
    :goto_18
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_2e

    sget-object v0, Landroidx/media2/exoplayer/external/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-nez p1, :cond_2e

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2e

    const/4 p0, 0x2

    .line 1126
    :cond_2e
    invoke-static {p0}, Landroidx/media2/exoplayer/external/util/Util;->getAudioTrackChannelConfig(I)I

    move-result p0

    return p0
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encoding",
            "buffer"
        }
    .end annotation

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4e

    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    goto :goto_4e

    :cond_8
    const/4 v0, 0x5

    if-ne p0, v0, :cond_10

    .line 1162
    invoke-static {}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result p0

    return p0

    :cond_10
    const/4 v0, 0x6

    if-ne p0, v0, :cond_18

    .line 1164
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_18
    const/16 v0, 0x11

    if-ne p0, v0, :cond_21

    .line 1166
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_21
    const/16 v0, 0xe

    if-ne p0, v0, :cond_35

    .line 1168
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2e

    const/4 p0, 0x0

    goto :goto_34

    .line 1171
    :cond_2e
    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    :goto_34
    return p0

    .line 1174
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 v0, 0x26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected audio encoding: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1160
    :cond_4e
    :goto_4e
    invoke-static {p1}, Landroidx/media2/exoplayer/external/audio/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private static getMaximumEncodedRateBytesPerSecond(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_27

    const/16 v0, 0x8

    if-eq p0, v0, :cond_23

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x11

    if-ne p0, v0, :cond_19

    const p0, 0x52080

    return p0

    .line 1154
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1f
    const p0, 0x2ebae4

    return p0

    :cond_23
    const p0, 0x225510

    return p0

    :cond_27
    const p0, 0x2ee00

    return p0

    :cond_2b
    const p0, 0xbb800

    return p0

    :cond_2f
    const p0, 0x13880

    return p0
.end method

.method private getSubmittedFrames()J
    .registers 5

    .line 1087
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v0, :cond_f

    .line 1088
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_11

    .line 1089
    :cond_f
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedEncodedFrames:J

    :goto_11
    return-wide v0
.end method

.method private getWrittenFrames()J
    .registers 5

    .line 1093
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v0, :cond_f

    .line 1094
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_11

    .line 1095
    :cond_f
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :goto_11
    return-wide v0
.end method

.method private initialize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 518
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 519
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 520
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->buildAudioTrack(ZLandroidx/media2/exoplayer/external/audio/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 521
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 522
    sget-boolean v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v1, :cond_3e

    .line 523
    sget v1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_3e

    .line 526
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_34

    .line 527
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_34

    .line 528
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V

    .line 530
    :cond_34
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_3e

    .line 531
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 535
    :cond_3e
    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v1, v0, :cond_4b

    .line 536
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 537
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    if-eqz v1, :cond_4b

    .line 538
    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;->onAudioSessionId(I)V

    .line 543
    :cond_4b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    if-eqz v0, :cond_5a

    .line 544
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    goto :goto_5c

    .line 545
    :cond_5a
    sget-object v0, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    :goto_5c
    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 546
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 548
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v3, v3, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;III)V

    .line 553
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 555
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    iget v0, v0, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    if-eqz v0, :cond_8f

    .line 556
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    iget v1, v1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 557
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    iget v1, v1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->sendLevel:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_8f
    return-void
.end method

.method private static initializeKeepSessionIdAudioTrack(I)Landroid/media/AudioTrack;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSessionId"
        }
    .end annotation

    .line 1103
    new-instance v8, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method

.method private isInitialized()Z
    .registers 2

    .line 1083
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private playPendingData()V
    .registers 4

    .line 1232
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 1233
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 1234
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->handleEndOfStream(J)V

    .line 1235
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 1236
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    :cond_18
    return-void
.end method

.method private processBuffers(J)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avSyncPresentationTimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_4
    if-ltz v1, :cond_3e

    if-lez v1, :cond_f

    .line 715
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_16

    .line 716
    :cond_f
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_14

    goto :goto_16

    :cond_14
    sget-object v2, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    :goto_16
    if-ne v1, v0, :cond_1c

    .line 718
    invoke-direct {p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    goto :goto_34

    .line 720
    :cond_1c
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 721
    invoke-interface {v3, v2}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 722
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 723
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 724
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_34

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 731
    :cond_34
    :goto_34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3b

    return-void

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3e
    return-void
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .registers 3

    .line 1034
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 1040
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1041
    new-instance v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;

    invoke-direct {v1, p0, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 1046
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$2;->start()V

    return-void
.end method

.method private setVolumeInternal()V
    .registers 3

    .line 946
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    .line 948
    :cond_7
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 949
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setVolumeInternalV21(Landroid/media/AudioTrack;F)V

    goto :goto_1c

    .line 951
    :cond_15
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setVolumeInternalV3(Landroid/media/AudioTrack;F)V

    :goto_1c
    return-void
.end method

.method private static setVolumeInternalV21(Landroid/media/AudioTrack;F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioTrack",
            "volume"
        }
    .end annotation

    .line 1224
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static setVolumeInternalV3(Landroid/media/AudioTrack;F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioTrack",
            "volume"
        }
    .end annotation

    .line 1228
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private setupAudioProcessors()V
    .registers 7

    .line 487
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->availableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    .line 490
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->isActive()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 491
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 493
    :cond_19
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->flush()V

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 496
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 497
    new-array v2, v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->activeAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    .line 498
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 499
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flushAudioProcessors()V

    return-void
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;J)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "avSyncPresentationTimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 743
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 746
    :cond_7
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    if-ne v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 747
    :goto_14
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    goto :goto_3b

    .line 749
    :cond_18
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 750
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ge v0, v2, :cond_3b

    .line 751
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 752
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    if-eqz v4, :cond_29

    array-length v4, v4

    if-ge v4, v0, :cond_2d

    .line 753
    :cond_29
    new-array v4, v0, [B

    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    .line 755
    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 756
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 757
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 758
    iput v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 761
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 763
    sget v4, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-ge v4, v2, :cond_6b

    .line 765
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    invoke-virtual {p2, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getAvailableBufferSize(J)I

    move-result p2

    if-lez p2, :cond_8e

    .line 767
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 768
    iget-object p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBuffer:[B

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_8e

    .line 770
    iget p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    add-int/2addr p2, v3

    iput p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->preV21OutputBufferOffset:I

    .line 771
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8e

    .line 774
    :cond_6b
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v2, :cond_88

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v1, 0x0

    .line 775
    :goto_7a
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 776
    iget-object v7, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v3

    goto :goto_8e

    .line 779
    :cond_88
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 782
    :cond_8e
    :goto_8e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    if-ltz v3, :cond_b6

    .line 788
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz p1, :cond_a2

    .line 789
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v1, v3

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    :cond_a2
    if-ne v3, v0, :cond_b5

    .line 792
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-nez p1, :cond_b2

    .line 793
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :cond_b2
    const/4 p1, 0x0

    .line 795
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_b5
    return-void

    .line 785
    :cond_b6
    new-instance p1, Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;

    invoke-direct {p1, v3}, Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;-><init>(I)V

    throw p1
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioTrack",
            "buffer",
            "size"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1180
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private writeNonBlockingWithAvSyncV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioTrack",
            "buffer",
            "size",
            "presentationTimeUs"
        }
    .end annotation

    .line 1191
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_19

    const/16 v0, 0x10

    .line 1192
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1193
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1196
    :cond_19
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    const/4 v1, 0x0

    if-nez v0, :cond_36

    .line 1197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long p4, p4, v3

    invoke-virtual {v0, v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1199
    iget-object p4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1200
    iput p3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1202
    :cond_36
    iget-object p4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_4d

    .line 1204
    iget-object p5, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_4a

    .line 1206
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p5

    :cond_4a
    if-ge p5, p4, :cond_4d

    return v1

    .line 1213
    :cond_4d
    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_56

    .line 1215
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1

    .line 1218
    :cond_56
    iget p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1
.end method


# virtual methods
.method public configure(IIII[III)V
    .registers 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputEncoding",
            "inputChannelCount",
            "inputSampleRate",
            "specifiedBufferSize",
            "outputChannels",
            "trimStartFrames",
            "trimEndFrames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 412
    sget v2, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-ge v2, v4, :cond_1c

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1c

    if-nez p5, :cond_1c

    const/4 v2, 0x6

    new-array v4, v2, [I

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v2, :cond_1e

    .line 417
    aput v5, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1c
    move-object/from16 v4, p5

    .line 421
    :cond_1e
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingLinearPcm(I)Z

    move-result v6

    const/4 v2, 0x4

    const/16 v17, 0x1

    move/from16 v5, p1

    if-eqz v6, :cond_2d

    if-eq v5, v2, :cond_2d

    const/4 v14, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v14, 0x0

    .line 426
    :goto_2e
    iget-boolean v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->enableConvertHighResIntPcmToFloat:Z

    if-eqz v7, :cond_40

    .line 428
    invoke-virtual {v1, v0, v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->supportsOutput(II)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 429
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingHighResolutionIntegerPcm(I)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    if-eqz v2, :cond_46

    .line 432
    iget-object v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    goto :goto_48

    .line 433
    :cond_46
    iget-object v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    :goto_48
    move-object v15, v7

    if-eqz v14, :cond_89

    .line 436
    iget-object v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual {v7, v8, v9}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->setTrimFrameCount(II)V

    .line 437
    iget-object v7, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;

    invoke-virtual {v7, v4}, Landroidx/media2/exoplayer/external/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 438
    array-length v4, v15

    move/from16 v10, p3

    move v8, v0

    move v11, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_60
    if-ge v7, v4, :cond_86

    aget-object v12, v15, v7

    .line 440
    :try_start_64
    invoke-interface {v12, v10, v8, v11}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->configure(III)Z

    move-result v13
    :try_end_68
    .catch Landroidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException; {:try_start_64 .. :try_end_68} :catch_7e

    or-int/2addr v9, v13

    .line 444
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->isActive()Z

    move-result v13

    if-eqz v13, :cond_7b

    .line 445
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutputChannelCount()I

    move-result v8

    .line 446
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutputSampleRateHz()I

    move-result v10

    .line 447
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->getOutputEncoding()I

    move-result v11

    :cond_7b
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    :catch_7e
    move-exception v0

    move-object v2, v0

    .line 442
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_86
    move v4, v9

    move v12, v11

    goto :goto_8e

    :cond_89
    move/from16 v10, p3

    move v8, v0

    move v12, v5

    const/4 v4, 0x0

    .line 452
    :goto_8e
    invoke-static {v8, v6}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getChannelConfig(IZ)I

    move-result v11

    if-eqz v11, :cond_d9

    const/4 v7, -0x1

    if-eqz v6, :cond_9c

    .line 458
    invoke-static/range {p1 .. p2}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v0

    goto :goto_9d

    :cond_9c
    const/4 v0, -0x1

    :goto_9d
    if-eqz v6, :cond_a5

    .line 460
    invoke-static {v12, v8}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v5

    move v9, v5

    goto :goto_a6

    :cond_a5
    const/4 v9, -0x1

    :goto_a6
    if-eqz v14, :cond_ac

    if-nez v2, :cond_ac

    const/4 v2, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v2, 0x0

    .line 462
    :goto_ad
    new-instance v13, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    move-object v5, v13

    move v7, v0

    move/from16 v8, p3

    move-object v0, v13

    move/from16 v13, p4

    move-object/from16 v16, v15

    move v15, v2

    invoke-direct/range {v5 .. v16}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;-><init>(ZIIIIIIIZZ[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    if-nez v4, :cond_c2

    .line 477
    iget-object v2, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v2, :cond_c3

    :cond_c2
    const/4 v3, 0x1

    .line 478
    :cond_c3
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 479
    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;)Z

    move-result v2

    if-eqz v2, :cond_d3

    if-eqz v3, :cond_d6

    .line 480
    :cond_d3
    iput-object v0, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    goto :goto_d8

    .line 482
    :cond_d6
    iput-object v0, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    :goto_d8
    return-void

    .line 454
    :cond_d9
    new-instance v0, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported channel count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;)V

    goto :goto_f3

    :goto_f2
    throw v0

    :goto_f3
    goto :goto_f2
.end method

.method public disableTunneling()V
    .registers 2

    .line 930
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 931
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    .line 932
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 933
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    :cond_c
    return-void
.end method

.method public enableTunnelingV21(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tunnelingAudioSessionId"
        }
    .end annotation

    .line 920
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 921
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_15

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_1c

    .line 922
    :cond_15
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    .line 923
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 924
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    :cond_1c
    return-void
.end method

.method public flush()V
    .registers 6

    .line 965
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_80

    const-wide/16 v0, 0x0

    .line 966
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 967
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 968
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 969
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const/4 v2, 0x0

    .line 970
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 971
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    .line 972
    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 973
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    goto :goto_33

    .line 974
    :cond_1d
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 975
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 977
    :cond_33
    :goto_33
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 978
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersOffsetUs:J

    .line 979
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersPositionUs:J

    .line 980
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->resetTrimmedFrameCount()V

    .line 981
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flushAudioProcessors()V

    .line 982
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 983
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 984
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 985
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->handledEndOfStream:Z

    const/4 v0, -0x1

    .line 986
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainingAudioProcessorIndex:I

    .line 987
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 988
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 989
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 990
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 991
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 994
    :cond_62
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 995
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 996
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v1, :cond_6e

    .line 997
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 998
    iput-object v4, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 1000
    :cond_6e
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->reset()V

    .line 1001
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1002
    new-instance v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;

    invoke-direct {v1, p0, v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 1012
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;->start()V

    :cond_80
    return-void
.end method

.method public getCurrentPositionUs(Z)J
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceEnded"
        }
    .end annotation

    .line 394
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    if-nez v0, :cond_b

    goto :goto_2b

    .line 397
    :cond_b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 398
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 399
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->applySpeedup(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->applySkipping(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_2b
    :goto_2b
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getPlaybackParameters()Landroidx/media2/exoplayer/external/PlaybackParameters;
    .registers 2

    .line 875
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-object v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "presentationTimeUs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException;,
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 582
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_11

    if-ne v1, v4, :cond_f

    goto :goto_11

    :cond_f
    const/4 v4, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v4, 0x1

    :goto_12
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 584
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    const/4 v7, 0x0

    if-eqz v4, :cond_55

    .line 585
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v4

    if-nez v4, :cond_21

    return v5

    .line 588
    :cond_21
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v4, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 589
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playPendingData()V

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v4

    if-eqz v4, :cond_35

    return v5

    .line 594
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    goto :goto_3f

    .line 597
    :cond_39
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iput-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 598
    iput-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 601
    :goto_3f
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    if-eqz v4, :cond_4e

    .line 602
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    invoke-interface {v4, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v4

    goto :goto_50

    .line 603
    :cond_4e
    sget-object v4, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    :goto_50
    iput-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 604
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 607
    :cond_55
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_65

    .line 608
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->initialize()V

    .line 609
    iget-boolean v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playing:Z

    if-eqz v4, :cond_65

    .line 610
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->play()V

    .line 614
    :cond_65
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->mayHandleBuffer(J)Z

    move-result v4

    if-nez v4, :cond_72

    return v5

    .line 618
    :cond_72
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const-string v8, "AudioTrack"

    if-nez v4, :cond_163

    .line 620
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_7f

    return v6

    .line 625
    :cond_7f
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-nez v4, :cond_96

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v4, :cond_96

    .line 627
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v4, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v4, :cond_96

    return v6

    .line 637
    :cond_96
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_ce

    .line 638
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v4

    if-nez v4, :cond_a3

    return v5

    .line 642
    :cond_a3
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 643
    iput-object v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 644
    iget-object v11, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    invoke-interface {v11, v4}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v13

    .line 646
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v11, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    .line 649
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iget-object v12, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    move-object/from16 v19, v8

    .line 650
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;-><init>(Landroidx/media2/exoplayer/external/PlaybackParameters;JJLandroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    .line 646
    invoke-virtual {v4, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setupAudioProcessors()V

    goto :goto_d0

    :cond_ce
    move-object/from16 v19, v8

    .line 655
    :goto_d0
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    if-nez v4, :cond_df

    .line 656
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 657
    iput v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    move-object/from16 v12, v19

    goto :goto_147

    .line 660
    :cond_df
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    .line 663
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v11

    iget-object v13, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;

    invoke-virtual {v13}, Landroidx/media2/exoplayer/external/audio/TrimmingAudioProcessor;->getTrimmedFrameCount()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 662
    invoke-virtual {v4, v11, v12}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->inputFramesToDurationUs(J)J

    move-result-wide v11

    add-long/2addr v7, v11

    .line 664
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    const/4 v11, 0x2

    if-ne v4, v6, :cond_12d

    sub-long v12, v7, v2

    .line 665
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x30d40

    cmp-long v4, v12, v14

    if-lez v4, :cond_12d

    const/16 v4, 0x50

    .line 666
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", got "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v19

    invoke-static {v12, v4}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iput v11, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    goto :goto_12f

    :cond_12d
    move-object/from16 v12, v19

    .line 670
    :goto_12f
    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    if-ne v4, v11, :cond_147

    sub-long v7, v2, v7

    .line 674
    iget-wide v13, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v13, v7

    iput-wide v13, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 675
    iput v6, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    .line 676
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    if-eqz v4, :cond_147

    cmp-long v11, v7, v9

    if-eqz v11, :cond_147

    .line 677
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    .line 682
    :cond_147
    :goto_147
    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v4, v4, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->isInputPcm:Z

    if-eqz v4, :cond_158

    .line 683
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_160

    .line 685
    :cond_158
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v4, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 688
    :goto_160
    iput-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_164

    :cond_163
    move-object v12, v8

    .line 691
    :goto_164
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->processingEnabled:Z

    if-eqz v1, :cond_16e

    .line 692
    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->processBuffers(J)V

    goto :goto_173

    .line 694
    :cond_16e
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->writeBuffer(Ljava/nio/ByteBuffer;J)V

    .line 697
    :goto_173
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_17f

    const/4 v1, 0x0

    .line 698
    iput-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    return v6

    .line 702
    :cond_17f
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->isStalled(J)Z

    move-result v1

    if-eqz v1, :cond_194

    const-string v1, "Resetting stalled audio track"

    .line 703
    invoke-static {v12, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    return v6

    :cond_194
    return v5
.end method

.method public handleDiscontinuity()V
    .registers 3

    .line 573
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    .line 574
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->startMediaTimeState:I

    :cond_8
    return-void
.end method

.method public hasPendingData()Z
    .registers 4

    .line 845
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isEnded()Z
    .registers 2

    .line 840
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playing:Z

    .line 958
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->pause()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 959
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_16
    return-void
.end method

.method public play()V
    .registers 2

    const/4 v0, 0x1

    .line 563
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playing:Z

    .line 564
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 565
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrackPositionTracker:Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker;->start()V

    .line 566
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_13
    return-void
.end method

.method public playToEndOfStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 801
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->drainAudioProcessorsToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 802
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playPendingData()V

    const/4 v0, 0x1

    .line 803
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->handledEndOfStream:Z

    :cond_16
    return-void
.end method

.method public reset()V
    .registers 6

    .line 1018
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    .line 1019
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->releaseKeepSessionIdAudioTrack()V

    .line 1020
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_15

    aget-object v4, v0, v3

    .line 1021
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1023
    :cond_15
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:[Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 1024
    invoke-interface {v4}, Landroidx/media2/exoplayer/external/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1026
    :cond_23
    iput v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 1027
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playing:Z

    return-void
.end method

.method public setAudioAttributes(Landroidx/media2/exoplayer/external/audio/AudioAttributes;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioAttributes"
        }
    .end annotation

    .line 880
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 883
    :cond_9
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioAttributes:Landroidx/media2/exoplayer/external/audio/AudioAttributes;

    .line 884
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->tunneling:Z

    if-eqz p1, :cond_10

    return-void

    .line 888
    :cond_10
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    const/4 p1, 0x0

    .line 889
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSessionId"
        }
    .end annotation

    .line 894
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_9

    .line 895
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioSessionId:I

    .line 896
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->flush()V

    :cond_9
    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auxEffectInfo"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 905
    :cond_9
    iget v0, p1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    .line 906
    iget v1, p1, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->sendLevel:F

    .line 907
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_23

    .line 908
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    iget v2, v2, Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;->effectId:I

    if-eq v2, v0, :cond_1c

    .line 909
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1c
    if-eqz v0, :cond_23

    .line 912
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 915
    :cond_23
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media2/exoplayer/external/audio/AuxEffectInfo;

    return-void
.end method

.method public setListener(Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->listener:Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->configuration:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$Configuration;->canApplyPlaybackParameters:Z

    if-nez v0, :cond_d

    .line 851
    sget-object p1, Landroidx/media2/exoplayer/external/PlaybackParameters;->DEFAULT:Landroidx/media2/exoplayer/external/PlaybackParameters;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-object p1

    .line 855
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    if-eqz v0, :cond_12

    goto :goto_29

    .line 857
    :cond_12
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 858
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;->access$200(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PlaybackParametersCheckpoint;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object v0

    goto :goto_29

    .line 859
    :cond_27
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 860
    :goto_29
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 861
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 864
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->afterDrainPlaybackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    goto :goto_40

    .line 867
    :cond_38
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$AudioProcessorChain;->applyPlaybackParameters(Landroidx/media2/exoplayer/external/PlaybackParameters;)Landroidx/media2/exoplayer/external/PlaybackParameters;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    .line 870
    :cond_40
    :goto_40
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->playbackParameters:Landroidx/media2/exoplayer/external/PlaybackParameters;

    return-object p1
.end method

.method public setVolume(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 939
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 940
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->volume:F

    .line 941
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->setVolumeInternal()V

    :cond_b
    return-void
.end method

.method public supportsOutput(II)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelCount",
            "encoding"
        }
    .end annotation

    .line 378
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 p1, 0x4

    if-ne p2, p1, :cond_13

    .line 383
    sget p1, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_13
    return v1

    .line 385
    :cond_14
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    if-eqz v0, :cond_2a

    .line 386
    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result p2

    if-eqz p2, :cond_2a

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2b

    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->audioCapabilities:Landroidx/media2/exoplayer/external/audio/AudioCapabilities;

    .line 388
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/audio/AudioCapabilities;->getMaxChannelCount()I

    move-result p2

    if-gt p1, p2, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :cond_2b
    :goto_2b
    return v1
.end method
