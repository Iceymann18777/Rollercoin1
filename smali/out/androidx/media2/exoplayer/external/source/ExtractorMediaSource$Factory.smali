.class public final Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
.super Ljava/lang/Object;
.source "ExtractorMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

.field private extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

.field private isCreateCalled:Z

.field private loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSourceFactory"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    .line 89
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    const/high16 p1, 0x100000

    .line 90
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    if-nez v0, :cond_e

    .line 200
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    .line 202
    :cond_e
    new-instance v0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->dataSourceFactory:Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource$Factory;Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$1;)V

    return-object v0
.end method

.method public setExtractorsFactory(Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractorsFactory"
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 105
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->extractorsFactory:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 134
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ExtractorMediaSource$Factory;->tag:Ljava/lang/Object;

    return-object p0
.end method
