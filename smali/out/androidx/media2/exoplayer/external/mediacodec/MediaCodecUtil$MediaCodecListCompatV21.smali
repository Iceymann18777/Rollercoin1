.class final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field private final codecKind:I

.field private mediaCodecInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "includeSecure",
            "includeTunneling"
        }
    .end annotation

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 p1, 0x1

    .line 806
    :goto_b
    iput p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    return-void
.end method

.method private ensureMediaCodecInfosInitialized()V
    .registers 3

    .line 839
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_11

    .line 840
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    :cond_11
    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .registers 2

    .line 811
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 812
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 817
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 818
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "feature",
            "mimeType",
            "capabilities"
        }
    .end annotation

    .line 835
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "feature",
            "mimeType",
            "capabilities"
        }
    .end annotation

    .line 829
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public secureDecodersExplicit()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
