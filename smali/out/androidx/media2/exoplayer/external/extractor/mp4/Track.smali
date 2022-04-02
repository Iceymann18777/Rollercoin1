.class public final Landroidx/media2/exoplayer/external/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field public final durationUs:J

.field public final editListDurations:[J

.field public final editListMediaTimes:[J

.field public final format:Landroidx/media2/exoplayer/external/Format;

.field public final id:I

.field public final movieTimescale:J

.field public final nalUnitLengthFieldLength:I

.field private final sampleDescriptionEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

.field public final sampleTransformation:I

.field public final timescale:J

.field public final type:I


# direct methods
.method public constructor <init>(IIJJJLandroidx/media2/exoplayer/external/Format;I[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;I[J[J)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "type",
            "timescale",
            "movieTimescale",
            "durationUs",
            "format",
            "sampleTransformation",
            "sampleDescriptionEncryptionBoxes",
            "nalUnitLengthFieldLength",
            "editListDurations",
            "editListMediaTimes"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    .line 113
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    .line 114
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    .line 115
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    .line 116
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->durationUs:J

    .line 117
    iput-object p9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    .line 118
    iput p10, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->sampleTransformation:I

    .line 119
    iput-object p11, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    .line 120
    iput p12, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 121
    iput-object p13, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    .line 122
    iput-object p14, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    return-void
.end method


# virtual methods
.method public getSampleDescriptionEncryptionBox(I)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleDescriptionIndex"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    .line 134
    :cond_6
    aget-object p1, v0, p1

    :goto_8
    return-object p1
.end method
