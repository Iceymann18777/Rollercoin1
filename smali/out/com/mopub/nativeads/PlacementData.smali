.class Lcom/mopub/nativeads/PlacementData;
.super Ljava/lang/Object;
.source "PlacementData.java"


# static fields
.field private static final MAX_ADS:I = 0xc8

.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private final mAdjustedAdPositions:[I

.field private mDesiredCount:I

.field private final mDesiredInsertionPositions:[I

.field private final mDesiredOriginalPositions:[I

.field private final mNativeAds:[Lcom/mopub/nativeads/NativeAd;

.field private final mOriginalAdPositions:[I

.field private mPlacedCount:I


# direct methods
.method private constructor <init>([I)V
    .registers 5

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v1, v0, [I

    .line 139
    iput-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    new-array v1, v0, [I

    .line 140
    iput-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    new-array v2, v0, [I

    .line 142
    iput-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    new-array v2, v0, [I

    .line 143
    iput-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    new-array v2, v0, [Lcom/mopub/nativeads/NativeAd;

    .line 144
    iput-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    .line 145
    iput v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    .line 151
    array-length v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 152
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static binarySearch([IIII)I
    .registers 6

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-gt p1, p2, :cond_17

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .line 521
    aget v1, p0, v0

    if-ge v1, p3, :cond_10

    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_2

    :cond_10
    if-le v1, p3, :cond_16

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_2

    :cond_16
    return v0

    :cond_17
    xor-int/lit8 p0, p1, -0x1

    return p0
.end method

.method private static binarySearchFirstEquals([III)I
    .registers 4

    const/4 v0, 0x0

    .line 479
    invoke-static {p0, v0, p1, p2}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p1

    if-gez p1, :cond_a

    xor-int/lit8 p0, p1, -0x1

    return p0

    .line 487
    :cond_a
    aget p2, p0, p1

    :goto_c
    if-ltz p1, :cond_15

    .line 488
    aget v0, p0, p1

    if-ne v0, p2, :cond_15

    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    :cond_15
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static binarySearchGreaterThan([III)I
    .registers 5

    const/4 v0, 0x0

    .line 496
    invoke-static {p0, v0, p1, p2}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p2

    if-gez p2, :cond_a

    xor-int/lit8 p0, p2, -0x1

    return p0

    .line 504
    :cond_a
    aget v0, p0, p2

    :goto_c
    if-ge p2, p1, :cond_15

    .line 505
    aget v1, p0, p2

    if-ne v1, v0, :cond_15

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_15
    return p2
.end method

.method static empty()Lcom/mopub/nativeads/PlacementData;
    .registers 2

    .line 183
    new-instance v0, Lcom/mopub/nativeads/PlacementData;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/PlacementData;-><init>([I)V

    return-object v0
.end method

.method static fromAdPositioning(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/PlacementData;
    .registers 7

    .line 158
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->getFixedPositions()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->getRepeatingInterval()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_12

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_14

    :cond_12
    const/16 v1, 0xc8

    .line 162
    :goto_14
    new-array v2, v1, [I

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 169
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v5, v3, 0x1

    .line 170
    aput v4, v2, v3

    move v3, v5

    goto :goto_1c

    :cond_33
    :goto_33
    if-ge v3, v1, :cond_3e

    add-int/2addr v4, p0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v3, 0x1

    .line 176
    aput v4, v2, v3

    move v3, v0

    goto :goto_33

    .line 178
    :cond_3e
    new-instance p0, Lcom/mopub/nativeads/PlacementData;

    invoke-direct {p0, v2}, Lcom/mopub/nativeads/PlacementData;-><init>([I)V

    return-object p0
.end method


# virtual methods
.method clearAds()V
    .registers 4

    .line 415
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 419
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/PlacementData;->clearAdsInRange(II)I

    return-void
.end method

.method clearAdsInRange(II)I
    .registers 12

    .line 354
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    new-array v1, v0, [I

    .line 355
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 360
    :goto_9
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v3, v5, :cond_43

    .line 361
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v5, v5, v3

    .line 362
    iget-object v6, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v6, v6, v3

    if-gt p1, v6, :cond_2d

    if-ge v6, p2, :cond_2d

    .line 366
    aput v5, v1, v4

    sub-int/2addr v6, v4

    .line 367
    aput v6, v0, v4

    .line 370
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 371
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_2d
    if-lez v4, :cond_40

    sub-int v7, v3, v4

    .line 376
    iget-object v8, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aput v5, v8, v7

    .line 377
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    sub-int/2addr v6, v4

    aput v6, v5, v7

    .line 378
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object v6, v5, v3

    aput-object v6, v5, v7

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_43
    if-nez v4, :cond_46

    return v2

    .line 390
    :cond_46
    aget p1, v0, v2

    .line 391
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {p2, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result p1

    .line 393
    iget p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    add-int/lit8 p2, p2, -0x1

    :goto_54
    if-lt p2, p1, :cond_68

    .line 394
    iget-object v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    add-int v5, p2, v4

    aget v6, v3, p2

    aput v6, v3, v5

    .line 395
    iget-object v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v6, v3, p2

    sub-int/2addr v6, v4

    aput v6, v3, v5

    add-int/lit8 p2, p2, -0x1

    goto :goto_54

    :cond_68
    :goto_68
    if-ge v2, v4, :cond_7b

    .line 400
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    add-int v3, p1, v2

    aget v5, v1, v2

    aput v5, p2, v3

    .line 401
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v5, v0, v2

    aput v5, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 405
    :cond_7b
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 406
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    return v4
.end method

.method getAdjustedCount(I)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 343
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getAdjustedPosition(I)I
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method getOriginalCount(I)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 332
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PlacementData;->getOriginalPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    goto :goto_10

    :cond_e
    add-int/lit8 v0, p1, 0x1

    :goto_10
    return v0
.end method

.method getOriginalPosition(I)I
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_f

    xor-int/2addr v0, v1

    sub-int/2addr p1, v0

    return p1

    :cond_f
    return v1
.end method

.method getPlacedAd(I)Lcom/mopub/nativeads/NativeAd;
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p1

    if-gez p1, :cond_d

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_d
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object p1, v0, p1

    return-object p1
.end method

.method getPlacedAdPositions()[I
    .registers 5

    .line 294
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    new-array v1, v0, [I

    .line 295
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method insertItem(I)V
    .registers 5

    .line 428
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v0

    .line 430
    :goto_8
    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v0, v1, :cond_1f

    .line 431
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 432
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 436
    :cond_1f
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result p1

    .line 438
    :goto_27
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge p1, v0, :cond_3e

    .line 439
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 440
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_3e
    return-void
.end method

.method isPlacedAd(I)Z
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2
.end method

.method moveItem(II)V
    .registers 3

    .line 474
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PlacementData;->removeItem(I)V

    .line 475
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/PlacementData;->insertItem(I)V

    return-void
.end method

.method nextInsertionPosition(I)I
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result p1

    .line 201
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ne p1, v0, :cond_e

    const/4 p1, -0x1

    return p1

    .line 204
    :cond_e
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget p1, v0, p1

    return p1
.end method

.method placeAd(ILcom/mopub/nativeads/NativeAd;)V
    .registers 10

    .line 225
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v0

    .line 227
    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7a

    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_14

    goto :goto_7a

    .line 234
    :cond_14
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v1, v1, v0

    .line 235
    iget-object v3, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v4, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v3, v4, v1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v3

    .line 237
    iget v4, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v3, v4, :cond_36

    sub-int/2addr v4, v3

    .line 239
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_36
    iget-object v4, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aput v1, v4, v3

    .line 246
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aput p1, v1, v3

    .line 247
    iget-object p1, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aput-object p2, p1, v3

    .line 248
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    .line 251
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    .line 252
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    add-int/lit8 v1, v0, 0x1

    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 259
    :goto_5c
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v0, p1, :cond_6a

    .line 260
    iget-object p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget p2, p1, v0

    add-int/2addr p2, v2

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_6a
    add-int/2addr v3, v2

    .line 262
    :goto_6b
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v3, p1, :cond_79

    .line 263
    iget-object p1, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget p2, p1, v3

    add-int/2addr p2, v2

    aput p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    :cond_79
    return-void

    .line 229
    :cond_7a
    :goto_7a
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Attempted to insert an ad at an invalid position"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method previousInsertionPosition(I)I
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, -0x1

    return p1

    .line 217
    :cond_c
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v0, p1

    return p1
.end method

.method removeItem(I)V
    .registers 5

    .line 452
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v0

    .line 456
    :goto_8
    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v0, v1, :cond_1f

    .line 457
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 458
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 461
    :cond_1f
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result p1

    .line 464
    :goto_27
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge p1, v0, :cond_3e

    .line 465
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 466
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_3e
    return-void
.end method

.method shouldPlaceAd(I)Z
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2
.end method
