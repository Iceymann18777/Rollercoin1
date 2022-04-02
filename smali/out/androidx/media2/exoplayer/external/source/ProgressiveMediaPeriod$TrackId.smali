.class final Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackId"
.end annotation


# instance fields
.field public final id:I

.field public final isIcyTrack:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "isIcyTrack"
        }
    .end annotation

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->id:I

    .line 1108
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 1116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 1119
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;

    .line 1120
    iget v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->id:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->id:I

    if-ne v2, v3, :cond_21

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1125
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    add-int/2addr v0, v1

    return v0
.end method
