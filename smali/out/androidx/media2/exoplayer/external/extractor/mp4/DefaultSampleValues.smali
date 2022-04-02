.class final Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;
.super Ljava/lang/Object;
.source "DefaultSampleValues.java"


# instance fields
.field public final duration:I

.field public final flags:I

.field public final sampleDescriptionIndex:I

.field public final size:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleDescriptionIndex",
            "duration",
            "size",
            "flags"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 30
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->duration:I

    .line 31
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->size:I

    .line 32
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/DefaultSampleValues;->flags:I

    return-void
.end method
