.class public final Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;
.super Ljava/lang/Object;
.source "BasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/BasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ListenerHolder"
.end annotation


# instance fields
.field public final listener:Lcom/google/android/exoplayer2/Player$EventListener;

.field private released:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 194
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    check-cast p1, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;)V
    .registers 3

    .line 181
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->released:Z

    if-nez v0, :cond_9

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer$ListenerHolder;->listener:Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;->invokeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    :cond_9
    return-void
.end method
