.class public interface abstract Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final DEFAULT:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media2/exoplayer/external/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mimeType",
            "requiresSecureDecoder",
            "requiresTunnelingDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public abstract getPassthroughDecoderInfo()Landroidx/media2/exoplayer/external/mediacodec/MediaCodecInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
