.class public final Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field private hashCode:I

.field public final length:J

.field private final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const-string p1, ""

    .line 51
    :cond_7
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 52
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 53
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    return-void
.end method


# virtual methods
.method public attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .registers 15

    .line 91
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_56

    .line 92
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_56

    .line 94
    :cond_12
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_35

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    add-long v8, v6, v2

    iget-wide v10, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long p2, v8, v10

    if-nez p2, :cond_35

    .line 95
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long p1, v8, v4

    if-nez p1, :cond_2d

    goto :goto_2f

    :cond_2d
    add-long/2addr v2, v8

    move-wide v4, v2

    :goto_2f
    move-object v0, p2

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    .line 97
    :cond_35
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_56

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    add-long v6, p1, v2

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_56

    .line 98
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v0, v7, v4

    if-nez v0, :cond_4e

    goto :goto_50

    :cond_4e
    add-long/2addr v2, v7

    move-wide v4, v2

    :goto_50
    move-object v0, v6

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6

    :cond_56
    :goto_56
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_31

    .line 125
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 126
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2f

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .registers 4

    .line 107
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    if-nez v0, :cond_1b

    const/16 v0, 0x20f

    .line 109
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    .line 114
    :cond_1b
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    return v0
.end method

.method public resolveUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public resolveUriString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangedUri(referenceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
