.class public final synthetic Lcom/google/android/exoplayer2/extractor/ts/-$$Lambda$TsExtractor$f-UE6PC86cqq4V-qVoFQnPhfFZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/extractor/ts/-$$Lambda$TsExtractor$f-UE6PC86cqq4V-qVoFQnPhfFZ8;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/-$$Lambda$TsExtractor$f-UE6PC86cqq4V-qVoFQnPhfFZ8;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/-$$Lambda$TsExtractor$f-UE6PC86cqq4V-qVoFQnPhfFZ8;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/-$$Lambda$TsExtractor$f-UE6PC86cqq4V-qVoFQnPhfFZ8;->INSTANCE:Lcom/google/android/exoplayer2/extractor/ts/-$$Lambda$TsExtractor$f-UE6PC86cqq4V-qVoFQnPhfFZ8;

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

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;->lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method