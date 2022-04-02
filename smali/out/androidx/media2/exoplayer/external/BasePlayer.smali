.class public abstract Landroidx/media2/exoplayer/external/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/BasePlayer$ListenerInvocation;,
        Landroidx/media2/exoplayer/external/BasePlayer$ListenerHolder;
    }
.end annotation


# instance fields
.field protected final window:Landroidx/media2/exoplayer/external/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/BasePlayer;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    return-void
.end method


# virtual methods
.method public final getBufferedPercentage()I
    .registers 10

    .line 114
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 115
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getDuration()J

    move-result-wide v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2b

    cmp-long v8, v2, v6

    if-nez v8, :cond_19

    goto :goto_2b

    :cond_19
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_20

    goto :goto_2c

    :cond_20
    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    .line 118
    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1, v5, v4}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v4

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v4, 0x0

    :goto_2c
    return v4
.end method

.method public final getContentDuration()J
    .registers 4

    .line 135
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentTimeline()Landroidx/media2/exoplayer/external/Timeline;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1e

    .line 138
    :cond_10
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/BasePlayer;->window:Landroidx/media2/exoplayer/external/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/Timeline;->getWindow(ILandroidx/media2/exoplayer/external/Timeline$Window;)Landroidx/media2/exoplayer/external/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    :goto_1e
    return-wide v0
.end method

.method public final seekTo(J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionMs"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/BasePlayer;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/BasePlayer;->seekTo(IJ)V

    return-void
.end method
