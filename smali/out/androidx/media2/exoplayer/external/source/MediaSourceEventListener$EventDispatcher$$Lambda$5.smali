.class final synthetic Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private final arg$2:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

.field private final arg$3:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;

.field private final arg$4:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

.field private final arg$5:Ljava/io/IOException;

.field private final arg$6:Z


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$1:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$2:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$3:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;

    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$4:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$5:Ljava/io/IOException;

    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$6:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$1:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$2:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$3:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$4:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$5:Ljava/io/IOException;

    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher$$Lambda$5;->arg$6:Z

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->lambda$loadError$5$MediaSourceEventListener$EventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method
