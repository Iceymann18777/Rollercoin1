.class final Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/audio/AudioTrackPositionTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionTrackerListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1256
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V
    .registers 3

    .line 1256
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)V

    return-void
.end method


# virtual methods
.method public onInvalidLatency(J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latencyUs"
        }
    .end annotation

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioTrack"

    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPositionFramesMismatch(JJJJ)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioTimestampPositionFrames",
            "audioTimestampSystemTimeUs",
            "systemTimeUs",
            "playbackPositionUs"
        }
    .end annotation

    .line 1264
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1274
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$600(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1276
    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$700(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1277
    sget-boolean p2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez p2, :cond_49

    const-string p2, "AudioTrack"

    .line 1280
    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1278
    :cond_49
    new-instance p2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public onSystemTimeUsMismatch(JJJJ)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioTimestampPositionFrames",
            "audioTimestampSystemTimeUs",
            "systemTimeUs",
            "playbackPositionUs"
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1299
    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$600(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    .line 1301
    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$700(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xb4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1302
    sget-boolean p2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez p2, :cond_49

    const-string p2, "AudioTrack"

    .line 1305
    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1303
    :cond_49
    new-instance p2, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public onUnderrun(IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "bufferSizeMs"
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$900(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$1000(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 1317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;->access$900(Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;)Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Landroidx/media2/exoplayer/external/audio/AudioSink$Listener;->onUnderrun(IJJ)V

    :cond_1f
    return-void
.end method
