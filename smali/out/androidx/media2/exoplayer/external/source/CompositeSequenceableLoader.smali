.class public Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/SequenceableLoader;


# instance fields
.field protected final loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/source/SequenceableLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loaders"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    move-wide/from16 v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 74
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_11

    move-object/from16 v8, p0

    goto :goto_3e

    :cond_11
    move-object/from16 v8, p0

    .line 78
    iget-object v9, v8, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_18
    if-ge v11, v10, :cond_3b

    aget-object v13, v9, v11

    .line 79
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v14

    cmp-long v16, v14, v6

    if-eqz v16, :cond_2b

    cmp-long v16, v14, v0

    if-gtz v16, :cond_2b

    const/16 v16, 0x1

    goto :goto_2d

    :cond_2b
    const/16 v16, 0x0

    :goto_2d
    cmp-long v17, v14, v4

    if-eqz v17, :cond_33

    if-eqz v16, :cond_38

    .line 84
    :cond_33
    invoke-interface {v13, v0, v1}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->continueLoading(J)Z

    move-result v13

    or-int/2addr v12, v13

    :cond_38
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :cond_3b
    or-int/2addr v3, v12

    if-nez v12, :cond_4

    :goto_3e
    return v3
.end method

.method public final getBufferedPositionUs()J
    .registers 13

    .line 40
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1f

    aget-object v9, v0, v4

    .line 41
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    .line 43
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v2

    if-nez v0, :cond_24

    move-wide v5, v7

    :cond_24
    return-wide v5
.end method

.method public final getNextLoadPositionUs()J
    .registers 13

    .line 52
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1f

    aget-object v9, v0, v4

    .line 53
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    .line 55
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v2

    if-nez v0, :cond_24

    move-wide v5, v7

    :cond_24
    return-wide v5
.end method

.method public final reevaluateBuffer(J)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionUs"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeSequenceableLoader;->loaders:[Landroidx/media2/exoplayer/external/source/SequenceableLoader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 64
    invoke-interface {v3, p1, p2}, Landroidx/media2/exoplayer/external/source/SequenceableLoader;->reevaluateBuffer(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
