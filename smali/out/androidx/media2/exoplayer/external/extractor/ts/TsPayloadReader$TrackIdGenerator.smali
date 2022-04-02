.class public final Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackIdGenerator"
.end annotation


# instance fields
.field private final firstTrackId:I

.field private formatId:Ljava/lang/String;

.field private final formatIdPrefix:Ljava/lang/String;

.field private trackId:I

.field private final trackIdIncrement:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstTrackId",
            "trackIdIncrement"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 135
    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "programNumber",
            "firstTrackId",
            "trackIdIncrement"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1b

    const/16 v1, 0xc

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1b
    const-string p1, ""

    :goto_1d
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    .line 140
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    .line 141
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    .line 142
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    return-void
.end method

.method private maybeThrowUninitializedError()V
    .registers 3

    .line 180
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return-void

    .line 181
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateNewId()V
    .registers 5

    .line 150
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->firstTrackId:I

    goto :goto_c

    :cond_9
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackIdIncrement:I

    add-int/2addr v0, v1

    :goto_c
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatIdPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-void
.end method

.method public getFormatId()Ljava/lang/String;
    .registers 2

    .line 175
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    .line 176
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->formatId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .registers 2

    .line 161
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->maybeThrowUninitializedError()V

    .line 162
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->trackId:I

    return v0
.end method
