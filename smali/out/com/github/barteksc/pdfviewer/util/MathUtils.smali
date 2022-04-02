.class public Lcom/github/barteksc/pdfviewer/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static ceil(F)I
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x40d0003fffffffffL    # 16384.999999999996

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int p0, v0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public static floor(F)I
    .registers 5

    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int p0, v0

    add-int/lit16 p0, p0, -0x4000

    return p0
.end method

.method public static limit(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_5

    return p1

    :cond_5
    cmpl-float p1, p0, p2

    if-ltz p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static max(FF)F
    .registers 3

    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    return p1

    :cond_5
    return p0
.end method

.method public static max(II)I
    .registers 2

    if-le p0, p1, :cond_3

    return p1

    :cond_3
    return p0
.end method

.method public static min(II)I
    .registers 2

    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    return p0
.end method
