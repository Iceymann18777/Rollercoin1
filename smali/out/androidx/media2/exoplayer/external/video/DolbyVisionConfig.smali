.class public final Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;
.super Ljava/lang/Object;
.source "DolbyVisionConfig.java"


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final level:I

.field public final profile:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "profile",
            "level",
            "codecs"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->profile:I

    .line 69
    iput p2, p0, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->level:I

    .line 70
    iput-object p3, p0, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method public static parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x2

    .line 42
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 43
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    shl-int/2addr v0, v2

    .line 45
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2d

    if-ne v1, v2, :cond_1d

    goto :goto_2d

    :cond_1d
    const/16 v0, 0x8

    if-ne v1, v0, :cond_24

    const-string v0, "hev1"

    goto :goto_2f

    :cond_24
    const/16 v0, 0x9

    if-ne v1, v0, :cond_2b

    const-string v0, "avc3"

    goto :goto_2f

    :cond_2b
    const/4 p0, 0x0

    return-object p0

    :cond_2d
    :goto_2d
    const-string v0, "dvhe"

    .line 56
    :goto_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;

    invoke-direct {v2, v1, p0, v0}, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
