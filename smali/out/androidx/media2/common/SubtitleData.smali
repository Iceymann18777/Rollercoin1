.class public final Landroidx/media2/common/SubtitleData;
.super Ljava/lang/Object;
.source "SubtitleData.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# instance fields
.field mData:[B

.field mDurationUs:J

.field mStartTimeUs:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ[B)V
    .registers 6

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-wide p1, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    .line 90
    iput-wide p3, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    .line 91
    iput-object p5, p0, Landroidx/media2/common/SubtitleData;->mData:[B

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

    if-eqz p1, :cond_31

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 128
    :cond_12
    check-cast p1, Landroidx/media2/common/SubtitleData;

    .line 129
    iget-wide v2, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    iget-wide v4, p1, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2f

    iget-wide v2, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    iget-wide v4, p1, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2f

    iget-object v2, p0, Landroidx/media2/common/SubtitleData;->mData:[B

    iget-object p1, p1, Landroidx/media2/common/SubtitleData;->mData:[B

    .line 131
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public getData()[B
    .registers 2

    .line 121
    iget-object v0, p0, Landroidx/media2/common/SubtitleData;->mData:[B

    return-object v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 107
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    return-wide v0
.end method

.method public getStartTimeUs()J
    .registers 3

    .line 99
    iget-wide v0, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    iget-wide v1, p0, Landroidx/media2/common/SubtitleData;->mStartTimeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroidx/media2/common/SubtitleData;->mDurationUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/common/SubtitleData;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
