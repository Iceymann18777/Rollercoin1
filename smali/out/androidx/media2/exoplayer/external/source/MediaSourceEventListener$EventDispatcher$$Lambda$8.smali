.class final synthetic Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private final arg$2:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

.field private final arg$3:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;->arg$1:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;->arg$2:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;->arg$3:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;->arg$1:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;->arg$2:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$8;->arg$3:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->lambda$downstreamFormatChanged$8$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    return-void
.end method
