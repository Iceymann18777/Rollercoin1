.class final Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "codec"
        }
    .end annotation

    .line 1623
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$1;)V
    .registers 4

    .line 1621
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "presentationTimeUs",
            "nanoTime"
        }
    .end annotation

    .line 1629
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-eq p0, p1, :cond_7

    return-void

    .line 1633
    :cond_7
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    return-void
.end method
