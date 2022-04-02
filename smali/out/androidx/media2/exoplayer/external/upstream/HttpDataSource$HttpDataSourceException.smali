.class public Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation


# instance fields
.field public final dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cause",
            "dataSpec",
            "type"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 267
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 268
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "dataSpec",
            "type"
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 261
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 262
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "cause",
            "dataSpec",
            "type"
        }
    .end annotation

    .line 273
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 275
    iput p4, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method
