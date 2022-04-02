.class final Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media2/exoplayer/external/Player$EventListener;
.implements Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;
.implements Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;
.implements Landroidx/media2/exoplayer/external/metadata/MetadataOutput;
.implements Landroidx/media2/exoplayer/external/text/TextOutput;
.implements Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1249
    iput-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/SimpleExoPlayer$1;)V
    .registers 3

    .line 1249
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;-><init>(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerCommand"
        }
    .end annotation

    .line 1465
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;ZI)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "decoderName",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation

    .line 1362
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1363
    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public onAudioDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counters"
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1387
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    goto :goto_a

    .line 1389
    :cond_1a
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1002(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    .line 1390
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$602(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1391
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$802(Landroidx/media2/exoplayer/external/SimpleExoPlayer;I)I

    return-void
.end method

.method public onAudioEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counters"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$602(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1336
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1337
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1002(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    .line 1371
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1372
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public onAudioSessionId(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 1346
    :cond_9
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$802(Landroidx/media2/exoplayer/external/SimpleExoPlayer;I)I

    .line 1347
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioListener;

    .line 1350
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1351
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioListener;->onAudioSessionId(I)V

    goto :goto_18

    .line 1354
    :cond_34
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    .line 1355
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioSessionId(I)V

    goto :goto_3e

    :cond_4e
    return-void
.end method

.method public onAudioSinkUnderrun(IJJ)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferSize",
            "bufferSizeMs",
            "elapsedSinceLastFeedMs"
        }
    .end annotation

    .line 1379
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$700(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1380
    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/audio/AudioRendererEventListener;->onAudioSinkUnderrun(IJJ)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "elapsed"
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1289
    invoke-interface {v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public onLoadingChanged(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLoading"
        }
    .end annotation

    .line 1472
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    move-result-object v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 1473
    iget-object v1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1474
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->add(I)V

    .line 1475
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1902(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Z)Z

    goto :goto_3b

    :cond_23
    if-nez p1, :cond_3b

    .line 1476
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1900(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1477
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1800(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroidx/media2/exoplayer/external/util/PriorityTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/PriorityTaskManager;->remove(I)V

    .line 1478
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1902(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Z)Z

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1300(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/metadata/MetadataOutput;

    .line 1409
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/metadata/MetadataOutput;->onMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media2/exoplayer/external/PlaybackParameters;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onPlaybackParametersChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/PlaybackParameters;)V

    return-void
.end method

.method public onPlayerError(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onPlayerError$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onPlayerStateChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onPositionDiscontinuity$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;I)V

    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 1312
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_22

    .line 1313
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoListener;

    .line 1314
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/video/VideoListener;->onRenderedFirstFrame()V

    goto :goto_12

    .line 1317
    :cond_22
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1318
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onRenderedFirstFrame(Landroid/view/Surface;)V

    goto :goto_2c

    :cond_3c
    return-void
.end method

.method public onSeekProcessed()V
    .registers 1

    invoke-static {p0}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onSeekProcessed$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceTexture",
            "width",
            "height"
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1436
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    .line 1446
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1447
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceTexture",
            "width",
            "height"
        }
    .end annotation

    .line 1441
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    return-void
.end method

.method public onTimelineChanged(Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onTimelineChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/Player$EventListener$$CC;->onTracksChanged$$dflt$$(Landroidx/media2/exoplayer/external/Player$EventListener;Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "decoderName",
            "initializedTimestampMs",
            "initializationDurationMs"
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1273
    invoke-interface/range {v2 .. v7}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public onVideoDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counters"
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1325
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoDisabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    goto :goto_a

    .line 1327
    :cond_1a
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$302(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    .line 1328
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$102(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counters"
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$102(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)Landroidx/media2/exoplayer/external/decoder/DecoderCounters;

    .line 1264
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1265
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoEnabled(Landroidx/media2/exoplayer/external/decoder/DecoderCounters;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$302(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;

    .line 1281
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1282
    invoke-interface {v1, p1}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoInputFormatChanged(Landroidx/media2/exoplayer/external/Format;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "unappliedRotationDegrees",
            "pixelWidthHeightRatio"
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoListener;

    .line 1299
    iget-object v2, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1300
    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/video/VideoListener;->onVideoSizeChanged(IIIF)V

    goto :goto_a

    .line 1304
    :cond_26
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$200(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;

    .line 1305
    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/video/VideoRendererEventListener;->onVideoSizeChanged(IIIF)V

    goto :goto_30

    :cond_40
    return-void
.end method

.method public setVolumeMultiplier(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volumeMultiplier"
        }
    .end annotation

    .line 1460
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1600(Landroidx/media2/exoplayer/external/SimpleExoPlayer;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "width",
            "height"
        }
    .end annotation

    .line 1422
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1, p3, p4}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1417
    iget-object v0, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1427
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1400(Landroidx/media2/exoplayer/external/SimpleExoPlayer;Landroid/view/Surface;Z)V

    .line 1428
    iget-object p1, p0, Landroidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener;->this$0:Landroidx/media2/exoplayer/external/SimpleExoPlayer;

    invoke-static {p1, v1, v1}, Landroidx/media2/exoplayer/external/SimpleExoPlayer;->access$1500(Landroidx/media2/exoplayer/external/SimpleExoPlayer;II)V

    return-void
.end method
