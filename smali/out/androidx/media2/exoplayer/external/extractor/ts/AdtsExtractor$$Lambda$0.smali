.class final synthetic Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# static fields
.field static final $instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor$$Lambda$0;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor$$Lambda$0;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor$$Lambda$0;->$instance:Landroidx/media2/exoplayer/external/extractor/ExtractorsFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Landroidx/media2/exoplayer/external/extractor/Extractor;
    .registers 2

    invoke-static {}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsExtractor;->lambda$static$0$AdtsExtractor()[Landroidx/media2/exoplayer/external/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
