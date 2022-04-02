.class public final synthetic Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$D7KvJbrpXrnWw4qzd_LI9ZtQytw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$D7KvJbrpXrnWw4qzd_LI9ZtQytw;->f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$D7KvJbrpXrnWw4qzd_LI9ZtQytw;->f$1:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$D7KvJbrpXrnWw4qzd_LI9ZtQytw;->f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$D7KvJbrpXrnWw4qzd_LI9ZtQytw;->f$1:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->lambda$inputFormatChanged$2$AudioRendererEventListener$EventDispatcher(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
