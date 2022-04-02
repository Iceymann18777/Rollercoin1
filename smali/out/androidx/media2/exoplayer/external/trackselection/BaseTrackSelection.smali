.class public abstract Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/trackselection/TrackSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;
    }
.end annotation


# instance fields
.field private final blacklistUntilTimes:[J

.field private final formats:[Landroidx/media2/exoplayer/external/Format;

.field protected final group:Landroidx/media2/exoplayer/external/source/TrackGroup;

.field private hashCode:I

.field protected final length:I

.field protected final tracks:[I


# direct methods
.method public varargs constructor <init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "tracks"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 73
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/TrackGroup;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 74
    array-length v0, p2

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    .line 76
    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    const/4 v0, 0x0

    .line 77
    :goto_1d
    array-length v2, p2

    if-ge v0, v2, :cond_2d

    .line 78
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 80
    :cond_2d
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection$DecreasingBandwidthComparator;-><init>(Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection$1;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 82
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    .line 83
    :goto_3e
    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    if-ge v1, p2, :cond_51

    .line 84
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/TrackGroup;->indexOf(Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 86
    :cond_51
    new-array p1, p2, [J

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    return-void
.end method


# virtual methods
.method public final blacklist(IJ)Z
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "blacklistDurationMs"
        }
    .end annotation

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 163
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 164
    :goto_a
    iget v5, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1f

    if-nez v2, :cond_1f

    if-eq v4, p1, :cond_1b

    .line 165
    invoke-virtual {p0, v4, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    if-nez v2, :cond_22

    return v3

    .line 170
    :cond_22
    iget-object v7, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    aget-wide v8, v7, p1

    const-wide v4, 0x7fffffffffffffffL

    move-wide v2, p2

    .line 173
    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide p2

    .line 171
    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v7, p1

    return v6
.end method

.method public disable()V
    .registers 1

    return-void
.end method

.method public enable()V
    .registers 1

    return-void
.end method

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

    if-eqz p1, :cond_27

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 207
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;

    .line 208
    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    iget-object p1, p1, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public final getFormat(I)Landroidx/media2/exoplayer/external/Format;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getIndexInTrackGroup(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getSelectedFormat()Landroidx/media2/exoplayer/external/Format;
    .registers 3

    .line 142
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .registers 3

    .line 147
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;
    .registers 2

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 191
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_15

    .line 192
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->group:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->hashCode:I

    .line 194
    :cond_15
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->hashCode:I

    return v0
.end method

.method public final indexOf(I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indexInTrackGroup"
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_f

    .line 133
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public final indexOf(Landroidx/media2/exoplayer/external/Format;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    const/4 v0, 0x0

    .line 122
    :goto_1
    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_f

    .line 123
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method protected final isBlacklisted(IJ)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "nowMs"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->blacklistUntilTimes:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public final length()I
    .registers 2

    .line 106
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/BaseTrackSelection;->tracks:[I

    array-length v0, v0

    return v0
.end method

.method public onDiscontinuity()V
    .registers 1

    invoke-static {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$$CC;->onDiscontinuity$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackSpeed"
        }
    .end annotation

    return-void
.end method

.method public updateSelectedTrack(JJJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$$CC;->updateSelectedTrack$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;JJJ)V

    return-void
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Landroidx/media2/exoplayer/external/trackselection/TrackSelection$$CC;->updateSelectedTrack$$dflt$$(Landroidx/media2/exoplayer/external/trackselection/TrackSelection;JJJLjava/util/List;[Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;)V

    return-void
.end method
