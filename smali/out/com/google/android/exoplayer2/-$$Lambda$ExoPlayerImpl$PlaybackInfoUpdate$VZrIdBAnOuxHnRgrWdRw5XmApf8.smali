.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$PlaybackInfoUpdate$VZrIdBAnOuxHnRgrWdRw5XmApf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$PlaybackInfoUpdate$VZrIdBAnOuxHnRgrWdRw5XmApf8;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;

    return-void
.end method


# virtual methods
.method public final invokeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$PlaybackInfoUpdate$VZrIdBAnOuxHnRgrWdRw5XmApf8;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->lambda$run$6$ExoPlayerImpl$PlaybackInfoUpdate(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
