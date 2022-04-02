.class public final Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final bitrateMax:I

.field public final bitrateMin:I

.field public final bitrateNominal:I

.field public final blockSize0:I

.field public final blockSize1:I

.field public final channels:I

.field public final data:[B

.field public final framingFlag:Z

.field public final sampleRate:J

.field public final version:J


# direct methods
.method public constructor <init>(JIJIIIIIZ[B)V
    .registers 13
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
            0x0
        }
        names = {
            "version",
            "channels",
            "sampleRate",
            "bitrateMax",
            "bitrateNominal",
            "bitrateMin",
            "blockSize0",
            "blockSize1",
            "framingFlag",
            "data"
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->version:J

    .line 468
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    .line 469
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    .line 470
    iput p6, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    .line 471
    iput p7, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 472
    iput p8, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    .line 473
    iput p9, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    .line 474
    iput p10, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    .line 475
    iput-boolean p11, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->framingFlag:Z

    .line 476
    iput-object p12, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    return-void
.end method
