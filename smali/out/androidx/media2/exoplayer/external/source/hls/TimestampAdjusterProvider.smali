.class public final Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;
.super Ljava/lang/Object;
.source "TimestampAdjusterProvider.java"


# instance fields
.field private final timestampAdjusters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/util/TimestampAdjuster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getAdjuster(I)Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discontinuitySequence"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    if-nez v0, :cond_19

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    .line 51
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_19
    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/TimestampAdjusterProvider;->timestampAdjusters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
