.class public final synthetic Lcom/google/android/exoplayer2/RendererCapabilities$-CC;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# direct methods
.method public static create(I)I
    .registers 2

    const/4 v0, 0x0

    .line 179
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result p0

    return p0
.end method

.method public static create(III)I
    .registers 3

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static getAdaptiveSupport(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static getFormatSupport(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static getFormatSupportString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x4

    if-ne p0, v0, :cond_11

    const-string p0, "YES"

    return-object p0

    .line 259
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_17
    const-string p0, "NO_EXCEEDS_CAPABILITIES"

    return-object p0

    :cond_1a
    const-string p0, "NO_UNSUPPORTED_DRM"

    return-object p0

    :cond_1d
    const-string p0, "NO_UNSUPPORTED_TYPE"

    return-object p0

    :cond_20
    const-string p0, "NO"

    return-object p0
.end method

.method public static getTunnelingSupport(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x20

    return p0
.end method
