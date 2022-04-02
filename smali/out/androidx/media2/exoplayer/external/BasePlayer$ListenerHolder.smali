.class public final Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;
.super Ljava/lang/Object;
.source "BasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/BasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ListenerHolder"
.end annotation


# instance fields
.field public final listener:Landroidx/media2/exoplayer/external/Player$EventListener;

.field private released:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Player$EventListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 185
    :cond_11
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    check-cast p1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

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

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listenerInvocation"
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->released:Z

    if-nez v0, :cond_9

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;->listener:Landroidx/media2/exoplayer/external/Player$EventListener;

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;->invokeListener(Landroidx/media2/exoplayer/external/Player$EventListener;)V

    :cond_9
    return-void
.end method
