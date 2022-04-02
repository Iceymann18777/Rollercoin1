.class public final Landroidx/media2/exoplayer/external/upstream/DataSourceException;
.super Ljava/io/IOException;
.source "DataSourceException.java"


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 44
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/DataSourceException;->reason:I

    return-void
.end method
