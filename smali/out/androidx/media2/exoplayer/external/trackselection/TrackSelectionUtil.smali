.class public final Landroidx/media2/exoplayer/external/trackselection/TrackSelectionUtil;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# direct methods
.method public static getFormatBitrates([Landroidx/media2/exoplayer/external/Format;[I)[I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formats",
            "bitrates"
        }
    .end annotation

    .line 302
    array-length v0, p0

    if-nez p1, :cond_5

    .line 304
    new-array p1, v0, [I

    :cond_5
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_11

    .line 307
    aget-object v2, p0, v1

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    return-object p1
.end method
