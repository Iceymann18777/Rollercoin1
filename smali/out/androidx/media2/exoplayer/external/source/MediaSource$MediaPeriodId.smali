.class public final Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/MediaSource;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "periodUid"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 111
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "adGroupIndex",
            "adIndexInAdGroup",
            "windowSequenceNumber"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 160
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;IIJI)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "adGroupIndex",
            "adIndexInAdGroup",
            "windowSequenceNumber",
            "nextAdGroupIndex"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 175
    iput p2, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 176
    iput p3, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 177
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 178
    iput p6, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "windowSequenceNumber"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 122
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "periodUid",
            "windowSequenceNumber",
            "nextAdGroupIndex"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    .line 140
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method


# virtual methods
.method public copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPeriodUid"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_19

    .line 185
    :cond_a
    new-instance v0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    iget v3, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget v7, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    :goto_19
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
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

    if-eqz p1, :cond_3b

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3b

    .line 205
    :cond_12
    check-cast p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 206
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget v2, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v2, v3, :cond_39

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_39

    iget v2, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget p1, p1, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

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

    .line 216
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 217
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 218
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 220
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    add-int/2addr v1, v0

    return v1
.end method

.method public isAd()Z
    .registers 3

    .line 193
    iget v0, p0, Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
