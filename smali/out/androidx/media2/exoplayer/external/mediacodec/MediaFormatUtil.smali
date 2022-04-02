.class public final Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;
.super Ljava/lang/Object;
.source "MediaFormatUtil.java"


# direct methods
.method public static maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "key",
            "value"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 98
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_9
    return-void
.end method

.method public static maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media2/exoplayer/external/video/ColorInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "colorInfo"
        }
    .end annotation

    if-eqz p1, :cond_1e

    .line 111
    iget v0, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    const-string v1, "color-transfer"

    invoke-static {p0, v1, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 112
    iget v0, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    const-string v1, "color-standard"

    invoke-static {p0, v1, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 113
    iget v0, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    const-string v1, "color-range"

    invoke-static {p0, v1, v0}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 114
    iget-object p1, p1, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    const-string v0, "hdr-static-info"

    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaFormatUtil;->maybeSetByteBuffer(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    :cond_1e
    return-void
.end method

.method public static maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "key",
            "value"
        }
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_9

    .line 85
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_9
    return-void
.end method

.method public static maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "key",
            "value"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public static setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "csdBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    const/16 v1, 0xf

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "csd-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method
