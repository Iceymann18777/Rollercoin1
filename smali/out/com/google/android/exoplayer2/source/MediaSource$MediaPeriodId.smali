.class public final Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodId"
.end annotation


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final nextAdGroupIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final windowSequenceNumber:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    const-wide/16 v0, -0x1

    .line 100
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .registers 13

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;IIJI)V
    .registers 7

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 164
    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 165
    iput p3, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 166
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 167
    iput p6, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 11

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .registers 12

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    .line 129
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3b

    .line 194
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 195
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v2, v3, :cond_39

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_39

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v2, p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0

    :cond_3b
    :goto_3b
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 207
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 208
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 209
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    add-int/2addr v1, v0

    return v1
.end method

.method public isAd()Z
    .registers 3

    .line 182
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
