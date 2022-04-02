.class public Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
.super Ljava/lang/Object;
.source "CacheSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final isCached:Z

.field public final key:Ljava/lang/String;

.field public final lastTouchTimestamp:J

.field public final length:J

.field public final position:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .registers 9

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    .line 77
    iput-wide p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    if-eqz p8, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 78
    :goto_e
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    .line 79
    iput-object p8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    .line 80
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->lastTouchTimestamp:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I
    .registers 6

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 102
    :cond_13
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_20

    const/4 p1, 0x0

    goto :goto_27

    :cond_20
    cmp-long p1, v0, v2

    if-gez p1, :cond_26

    const/4 p1, -0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x1

    :goto_27
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 26
    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->compareTo(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p1

    return p1
.end method

.method public isHoleSpan()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOpenEnded()Z
    .registers 6

    .line 87
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
