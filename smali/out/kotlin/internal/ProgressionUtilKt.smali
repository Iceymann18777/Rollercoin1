.class public final Lkotlin/internal/ProgressionUtilKt;
.super Ljava/lang/Object;
.source "progressionUtil.kt"


# direct methods
.method private static final differenceModulo(III)I
    .registers 3

    .line 21
    invoke-static {p0, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result p0

    invoke-static {p1, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0, p2}, Lkotlin/internal/ProgressionUtilKt;->mod(II)I

    move-result p0

    return p0
.end method

.method public static final getProgressionLastElement(III)I
    .registers 3

    if-lez p2, :cond_b

    if-lt p0, p1, :cond_5

    goto :goto_16

    .line 46
    :cond_5
    invoke-static {p1, p0, p2}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_16

    :cond_b
    if-gez p2, :cond_17

    if-gt p0, p1, :cond_10

    goto :goto_16

    :cond_10
    neg-int p2, p2

    .line 47
    invoke-static {p0, p1, p2}, Lkotlin/internal/ProgressionUtilKt;->differenceModulo(III)I

    move-result p0

    add-int/2addr p1, p0

    :goto_16
    return p1

    .line 48
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private static final mod(II)I
    .registers 2

    .line 10
    rem-int/2addr p0, p1

    if-ltz p0, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr p0, p1

    :goto_5
    return p0
.end method