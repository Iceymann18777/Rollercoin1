.class final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodecKey"
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final secure:Z

.field public final tunneling:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mimeType",
            "secure",
            "tunneling"
        }
    .end annotation

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 888
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    .line 889
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 907
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;

    if-eq v2, v3, :cond_10

    goto :goto_2b

    .line 910
    :cond_10
    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;

    .line 911
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-ne v2, v3, :cond_29

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-ne v2, p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 896
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 897
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_1a

    const/16 v2, 0x4cf

    goto :goto_1c

    :cond_1a
    const/16 v2, 0x4d5

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 898
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const/16 v3, 0x4d5

    :goto_26
    add-int/2addr v0, v3

    return v0
.end method
