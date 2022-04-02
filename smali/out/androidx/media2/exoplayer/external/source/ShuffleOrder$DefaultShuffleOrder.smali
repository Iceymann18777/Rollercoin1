.class public Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/ShuffleOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ShuffleOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultShuffleOrder"
.end annotation


# instance fields
.field private final indexInShuffled:[I

.field private final random:Ljava/util/Random;

.field private final shuffled:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "random"
        }
    .end annotation

    .line 76
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->createShuffledList(ILjava/util/Random;)[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shuffled",
            "random"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 81
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    .line 82
    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    const/4 p2, 0x0

    .line 83
    :goto_d
    array-length v0, p1

    if-ge p2, v0, :cond_19

    .line 84
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method private static createShuffledList(ILjava/util/Random;)[I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "length",
            "random"
        }
    .end annotation

    .line 165
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_13

    add-int/lit8 v2, v1, 0x1

    .line 167
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 168
    aget v4, v0, v3

    aput v4, v0, v1

    .line 169
    aput v1, v0, v3

    move v1, v2

    goto :goto_3

    :cond_13
    return-object v0
.end method


# virtual methods
.method public cloneAndClear()Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .registers 5

    .line 161
    new-instance v0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;-><init>(ILjava/util/Random;)V

    return-object v0
.end method

.method public cloneAndInsert(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "insertionIndex",
            "insertionCount"
        }
    .end annotation

    .line 117
    new-array v0, p2, [I

    .line 118
    new-array v1, p2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, p2, :cond_26

    .line 120
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aput v4, v0, v3

    .line 121
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 122
    aget v6, v1, v4

    aput v6, v1, v3

    add-int/2addr v3, p1

    .line 123
    aput v3, v1, v4

    move v3, v5

    goto :goto_6

    .line 125
    :cond_26
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 126
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v3, v3

    add-int/2addr v3, p2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 129
    :goto_31
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v6, v6

    add-int/2addr v6, p2

    if-ge v2, v6, :cond_5a

    if-ge v4, p2, :cond_45

    .line 130
    aget v6, v0, v4

    if-ne v5, v6, :cond_45

    add-int/lit8 v6, v4, 0x1

    .line 132
    aget v4, v1, v4

    aput v4, v3, v2

    move v4, v6

    goto :goto_57

    .line 134
    :cond_45
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    aput v5, v3, v2

    .line 135
    aget v5, v3, v2

    if-lt v5, p1, :cond_56

    .line 136
    aget v5, v3, v2

    add-int/2addr v5, p2

    aput v5, v3, v2

    :cond_56
    move v5, v7

    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 140
    :cond_5a
    new-instance p1, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v3, p2}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public cloneAndRemove(II)Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indexFrom",
            "indexToExclusive"
        }
    .end annotation

    sub-int v0, p2, p1

    .line 146
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 148
    :goto_a
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v5, v4

    if-ge v2, v5, :cond_2d

    .line 149
    aget v5, v4, v2

    if-lt v5, p1, :cond_1a

    aget v4, v4, v2

    if-ge v4, p2, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_1a
    sub-int v4, v2, v3

    .line 153
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v6, v5, v2

    if-lt v6, p1, :cond_26

    aget v5, v5, v2

    sub-int/2addr v5, v0

    goto :goto_28

    :cond_26
    aget v5, v5, v2

    :goto_28
    aput v5, v1, v4

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 156
    :cond_2d
    new-instance p1, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v1, p2}, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public getFirstIndex()I
    .registers 3

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public getLastIndex()I
    .registers 3

    .line 107
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v0

    if-lez v1, :cond_b

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, -0x1

    :goto_c
    return v0
.end method

.method public getLength()I
    .registers 2

    .line 90
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v0, v0

    return v0
.end method

.method public getNextIndex(I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v1, v0

    if-ge p1, v1, :cond_e

    aget p1, v0, p1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method

.method public getPreviousIndex(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_c

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v0, v0, p1

    :cond_c
    return v0
.end method
