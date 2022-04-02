.class public final Landroidx/media2/exoplayer/external/upstream/Allocation;
.super Ljava/lang/Object;
.source "Allocation.java"


# instance fields
.field public final data:[B

.field public final offset:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "offset"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Allocation;->data:[B

    .line 49
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/Allocation;->offset:I

    return-void
.end method
