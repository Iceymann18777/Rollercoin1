.class public final synthetic Lcom/google/android/exoplayer2/extractor/flv/-$$Lambda$FlvExtractor$bd1zICO7f-FQot_hbozdu7LjVyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/flv/-$$Lambda$FlvExtractor$bd1zICO7f-FQot_hbozdu7LjVyE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/flv/-$$Lambda$FlvExtractor$bd1zICO7f-FQot_hbozdu7LjVyE;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flv/-$$Lambda$FlvExtractor$bd1zICO7f-FQot_hbozdu7LjVyE;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/-$$Lambda$FlvExtractor$bd1zICO7f-FQot_hbozdu7LjVyE;->INSTANCE:Lcom/google/android/exoplayer2/extractor/flv/-$$Lambda$FlvExtractor$bd1zICO7f-FQot_hbozdu7LjVyE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 2

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
