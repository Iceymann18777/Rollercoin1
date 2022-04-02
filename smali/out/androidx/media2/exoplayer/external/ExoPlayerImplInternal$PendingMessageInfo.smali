.class final Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Landroidx/media2/exoplayer/external/PlayerMessage;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/PlayerMessage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1850
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media2/exoplayer/external/PlayerMessage;

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v3, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    if-eq v0, v3, :cond_18

    .line 1863
    iget-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz p1, :cond_17

    const/4 v1, -0x1

    :cond_17
    return v1

    .line 1865
    :cond_18
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v0, :cond_1d

    return v2

    .line 1870
    :cond_1d
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget v1, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_25

    return v0

    .line 1874
    :cond_25
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    invoke-static {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/util/Util;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 1841
    check-cast p1, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->compareTo(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;)I

    move-result p1

    return p1
.end method

.method public setResolvedPosition(IJLjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodIndex",
            "periodTimeUs",
            "periodUid"
        }
    .end annotation

    .line 1854
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 1855
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 1856
    iput-object p4, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    return-void
.end method
