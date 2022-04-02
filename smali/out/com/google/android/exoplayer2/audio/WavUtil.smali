.class public final Lcom/google/android/exoplayer2/audio/WavUtil;
.super Ljava/lang/Object;
.source "WavUtil.java"


# direct methods
.method public static getEncodingForType(II)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p0, v0, :cond_19

    const v0, 0xfffe

    if-eq p0, v0, :cond_1f

    const/4 p1, 0x6

    if-eq p0, p1, :cond_16

    const/4 p1, 0x7

    if-eq p0, p1, :cond_13

    return v1

    :cond_13
    const/high16 p0, 0x10000000

    return p0

    :cond_16
    const/high16 p0, 0x20000000

    return p0

    :cond_19
    const/16 p0, 0x20

    if-ne p1, p0, :cond_1e

    const/4 v1, 0x4

    :cond_1e
    return v1

    .line 71
    :cond_1f
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result p0

    return p0
.end method
