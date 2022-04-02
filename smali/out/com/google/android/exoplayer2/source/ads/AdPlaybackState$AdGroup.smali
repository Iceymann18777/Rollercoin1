.class public final Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# instance fields
.field public final count:I

.field public final durationsUs:[J

.field public final states:[I

.field public final uris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    new-array v0, v0, [J

    const/4 v3, -0x1

    .line 59
    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;-><init>(I[I[Landroid/net/Uri;[J)V

    return-void
.end method

.method private constructor <init>(I[I[Landroid/net/Uri;[J)V
    .registers 7

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 69
    iput p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    .line 70
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    .line 71
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 72
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3b

    .line 112
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    .line 113
    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    .line 114
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    .line 115
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 116
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0

    :cond_3b
    :goto_3b
    return v1
.end method

.method public getFirstAdIndexToPlay()I
    .registers 2

    const/4 v0, -0x1

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v0

    return v0
.end method

.method public getNextAdIndexToPlay(I)I
    .registers 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 89
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v1

    if-ge p1, v2, :cond_13

    .line 90
    aget v2, v1, p1

    if-eqz v2, :cond_13

    aget v1, v1, p1

    if-ne v1, v0, :cond_10

    goto :goto_13

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_13
    :goto_13
    return p1
.end method

.method public hasUnplayedAds()Z
    .registers 3

    .line 101
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ge v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 121
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
