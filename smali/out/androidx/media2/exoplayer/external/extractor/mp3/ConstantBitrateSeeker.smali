.class final Landroidx/media2/exoplayer/external/extractor/mp3/ConstantBitrateSeeker;
.super Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/mp3/Mp3Extractor$Seeker;


# direct methods
.method public constructor <init>(JJLandroidx/media2/exoplayer/external/extractor/MpegAudioHeader;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputLength",
            "firstFramePosition",
            "mpegAudioHeader"
        }
    .end annotation

    .line 41
    iget v5, p5, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->bitrate:I

    iget v6, p5, Landroidx/media2/exoplayer/external/extractor/MpegAudioHeader;->frameSize:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/ConstantBitrateSeekMap;-><init>(JJII)V

    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mp3/ConstantBitrateSeeker;->getTimeUsAtPosition(J)J

    move-result-wide p1

    return-wide p1
.end method
