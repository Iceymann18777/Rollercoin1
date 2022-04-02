.class public final Lcom/google/android/exoplayer2/util/TimedValueQueue;
.super Ljava/lang/Object;
.source "TimedValueQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private first:I

.field private size:I

.field private timestamps:[J

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    return-void
.end method

.method private addUnchecked(JLjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 151
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 152
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    aput-wide p1, v3, v0

    .line 153
    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    .line 154
    iput v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    return-void
.end method

.method private clearBufferOnTimeDiscontinuity(J)V
    .registers 6

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-lez v0, :cond_18

    .line 120
    iget v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_18

    .line 122
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    :cond_18
    return-void
.end method

.method private doubleCapacityIfFull()V
    .registers 7

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    array-length v0, v0

    .line 129
    iget v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-ge v1, v0, :cond_8

    return-void

    :cond_8
    mul-int/lit8 v1, v0, 0x2

    .line 133
    new-array v2, v1, [J

    .line 134
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 137
    iget v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    sub-int/2addr v0, v3

    .line 138
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    if-lez v3, :cond_30

    .line 142
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    :cond_30
    iput-object v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    .line 146
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    .line 147
    iput v5, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    return-void
.end method

.method private static newArray(I)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[TV;"
        }
    .end annotation

    .line 159
    new-array p0, p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private poll(JZ)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-object v3, v0

    .line 104
    :goto_7
    iget v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    if-lez v4, :cond_37

    .line 105
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->timestamps:[J

    iget v5, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    aget-wide v5, v4, v5

    sub-long v5, p1, v5

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-gez v4, :cond_21

    if-nez p3, :cond_37

    neg-long v7, v5

    cmp-long v4, v7, v1

    if-ltz v4, :cond_21

    goto :goto_37

    .line 110
    :cond_21
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    aget-object v3, v1, v2

    .line 111
    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 112
    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    .line 113
    iget v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    move-wide v1, v5

    goto :goto_7

    :cond_37
    :goto_37
    return-object v3
.end method


# virtual methods
.method public declared-synchronized add(JLjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clearBufferOnTimeDiscontinuity(J)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->doubleCapacityIfFull()V

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->addUnchecked(JLjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 51
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    :try_start_2
    iput v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->first:I

    .line 56
    iput v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->size:I

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 58
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pollFloor(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 75
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
