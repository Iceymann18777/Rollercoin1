.class public final synthetic Lcom/google/android/exoplayer2/extractor/mp3/-$$Lambda$Mp3Extractor$6eyGfoogMVGFHZKg1gVp93FAKZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/mp3/-$$Lambda$Mp3Extractor$6eyGfoogMVGFHZKg1gVp93FAKZA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/-$$Lambda$Mp3Extractor$6eyGfoogMVGFHZKg1gVp93FAKZA;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/-$$Lambda$Mp3Extractor$6eyGfoogMVGFHZKg1gVp93FAKZA;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/-$$Lambda$Mp3Extractor$6eyGfoogMVGFHZKg1gVp93FAKZA;->INSTANCE:Lcom/google/android/exoplayer2/extractor/mp3/-$$Lambda$Mp3Extractor$6eyGfoogMVGFHZKg1gVp93FAKZA;

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

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
