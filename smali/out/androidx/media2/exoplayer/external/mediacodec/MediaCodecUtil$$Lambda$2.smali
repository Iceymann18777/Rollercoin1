.class final synthetic Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;


# static fields
.field static final $instance:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$2;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$2;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$2;->$instance:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$ScoreProvider;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScore(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$2$MediaCodecUtil(Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
