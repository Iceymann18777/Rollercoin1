.class public final Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
.super Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidResponseCodeException"
.end annotation


# instance fields
.field public final headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final responseCode:I

.field public final responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "responseCode",
            "responseMessage",
            "headerFields",
            "dataSpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroidx/media2/exoplayer/external/upstream/DataSpec;",
            ")V"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p4, v1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    .line 325
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 326
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->responseMessage:Ljava/lang/String;

    .line 327
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    return-void
.end method
