.class final synthetic Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;


# instance fields
.field private final arg$1:Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$4;->arg$1:Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;

    return-void
.end method


# virtual methods
.method public invokeListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate$$Lambda$4;->arg$1:Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImpl$PlaybackInfoUpdate;->lambda$run$4$ExoPlayerImpl$PlaybackInfoUpdate(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    return-void
.end method
