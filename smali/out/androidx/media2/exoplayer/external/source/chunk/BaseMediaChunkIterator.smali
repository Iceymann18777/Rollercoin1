.class public abstract Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkIterator;
.super Ljava/lang/Object;
.source "BaseMediaChunkIterator.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/chunk/MediaChunkIterator;


# instance fields
.field private currentIndex:J

.field private final fromIndex:J

.field private final toIndex:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkIterator;->fromIndex:J

    .line 46
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkIterator;->toIndex:J

    .line 47
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkIterator;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 5

    .line 63
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkIterator;->fromIndex:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/chunk/BaseMediaChunkIterator;->currentIndex:J

    return-void
.end method
