.class public final Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;
    }
.end annotation


# static fields
.field public static final NONE:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;


# instance fields
.field public final adGroupCount:I

.field public final adGroupTimesUs:[J

.field public final adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

.field public final adResumePositionUs:J

.field public final contentDurationUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 276
    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;-><init>([J)V

    sput-object v0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->NONE:Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    return-void
.end method

.method public varargs constructor <init>([J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adGroupTimesUs"
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    array-length v0, p1

    .line 300
    iput v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    .line 301
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    .line 302
    new-array p1, v0, [Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    const/4 p1, 0x0

    :goto_11
    if-ge p1, v0, :cond_1f

    .line 304
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    new-instance v2, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    invoke-direct {v2}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;-><init>()V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_1f
    const-wide/16 v0, 0x0

    .line 306
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 307
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    return-void
.end method

.method private isPositionBeforeAdGroup(JI)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "adGroupIndex"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_8

    return v2

    .line 485
    :cond_8
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    aget-wide v4, v3, p3

    const/4 p3, 0x1

    cmp-long v3, v4, v0

    if-nez v3, :cond_22

    .line 487
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_20

    cmp-long v3, p1, v0

    if-gez v3, :cond_21

    :cond_20
    const/4 v2, 0x1

    :cond_21
    return v2

    :cond_22
    cmp-long v0, p1, v4

    if-gez v0, :cond_27

    const/4 v2, 0x1

    :cond_27
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    .line 459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_41

    .line 462
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;

    .line 463
    iget v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    if-ne v2, v3, :cond_3f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    .line 466
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    .line 467
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    return v0

    :cond_41
    :goto_41
    return v1
.end method

.method public getAdGroupIndexAfterPositionUs(JJ)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionUs",
            "periodDurationUs"
        }
    .end annotation

    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_3a

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_15

    cmp-long v3, p1, p3

    if-ltz v3, :cond_15

    goto :goto_3a

    :cond_15
    const/4 p3, 0x0

    .line 358
    :goto_16
    iget-object p4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    array-length v3, p4

    if-ge p3, v3, :cond_34

    aget-wide v3, p4, p3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_34

    aget-wide v3, p4, p3

    cmp-long p4, p1, v3

    if-gez p4, :cond_31

    iget-object p4, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    aget-object p4, p4, p3

    .line 360
    invoke-virtual {p4}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result p4

    if-nez p4, :cond_34

    :cond_31
    add-int/lit8 p3, p3, 0x1

    goto :goto_16

    .line 363
    :cond_34
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    array-length p1, p1

    if-ge p3, p1, :cond_3a

    move v0, p3

    :cond_3a
    :goto_3a
    return v0
.end method

.method public getAdGroupIndexForPositionUs(J)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_10

    .line 333
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->isPositionBeforeAdGroup(JI)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_10
    if-ltz v0, :cond_1d

    .line 336
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;->hasUnplayedAds()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, -0x1

    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 472
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupCount:I

    mul-int/lit8 v0, v0, 0x1f

    .line 473
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adResumePositionUs:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 474
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->contentDurationUs:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 475
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 476
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState;->adGroups:[Landroidx/media2/exoplayer/external/source/ads/AdPlaybackState$AdGroup;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
