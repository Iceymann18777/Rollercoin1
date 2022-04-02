.class public final Lcom/google/android/exoplayer2/util/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;,
        Lcom/google/android/exoplayer2/util/EventDispatcher$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/EventDispatcher$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;

    .line 71
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/EventDispatcher$HandlerAndListener;->dispatch(Lcom/google/android/exoplayer2/util/EventDispatcher$Event;)V

    goto :goto_6

    :cond_16
    return-void
.end method
