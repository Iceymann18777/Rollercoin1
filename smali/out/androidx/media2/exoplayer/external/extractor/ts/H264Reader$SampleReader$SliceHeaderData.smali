.class final Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceHeaderData"
.end annotation


# instance fields
.field private bottomFieldFlag:Z

.field private bottomFieldFlagPresent:Z

.field private deltaPicOrderCnt0:I

.field private deltaPicOrderCnt1:I

.field private deltaPicOrderCntBottom:I

.field private fieldPicFlag:Z

.field private frameNum:I

.field private hasSliceType:Z

.field private idrPicFlag:Z

.field private idrPicId:I

.field private isComplete:Z

.field private nalRefIdc:I

.field private picOrderCntLsb:I

.field private picParameterSetId:I

.field private sliceType:I

.field private spsData:Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$1;)V
    .registers 2

    .line 479
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .registers 2

    .line 479
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isFirstVclNalUnitOfPicture(Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result p0

    return p0
.end method

.method private isFirstVclNalUnitOfPicture(Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 551
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_74

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-eqz v0, :cond_75

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iget v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    if-ne v0, v2, :cond_75

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iget v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    if-ne v0, v2, :cond_75

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iget-boolean v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    if-ne v0, v2, :cond_75

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iget-boolean v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    if-ne v0, v2, :cond_75

    :cond_29
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iget v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eq v0, v2, :cond_33

    if-eqz v0, :cond_75

    if-eqz v2, :cond_75

    :cond_33
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    iget v0, v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v0, :cond_4b

    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    iget v0, v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v0, :cond_4b

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iget v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    if-ne v0, v2, :cond_75

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iget v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    if-ne v0, v2, :cond_75

    :cond_4b
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    iget v0, v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v0, v1, :cond_63

    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    iget v0, v0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v0, v1, :cond_63

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iget v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    if-ne v0, v2, :cond_75

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    iget v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    if-ne v0, v2, :cond_75

    :cond_63
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iget-boolean v2, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-ne v0, v2, :cond_75

    if-eqz v0, :cond_74

    if-eqz v2, :cond_74

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iget p1, p1, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    if-eq v0, p1, :cond_74

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    :cond_75
    :goto_75
    return v1
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 503
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 504
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    return-void
.end method

.method public isISlice()Z
    .registers 3

    .line 546
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    if-eqz v0, :cond_e

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public setAll(Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "spsData",
            "nalRefIdc",
            "sliceType",
            "frameNum",
            "picParameterSetId",
            "fieldPicFlag",
            "bottomFieldFlagPresent",
            "bottomFieldFlag",
            "idrPicFlag",
            "idrPicId",
            "picOrderCntLsb",
            "deltaPicOrderCntBottom",
            "deltaPicOrderCnt0",
            "deltaPicOrderCnt1"
        }
    .end annotation

    .line 527
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;

    .line 528
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    .line 529
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 530
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    .line 531
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    .line 532
    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    .line 533
    iput-boolean p7, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    .line 534
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    .line 535
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    .line 536
    iput p10, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    .line 537
    iput p11, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    .line 538
    iput p12, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    .line 539
    iput p13, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    .line 540
    iput p14, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    const/4 p1, 0x1

    .line 541
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 542
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    return-void
.end method

.method public setSliceType(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliceType"
        }
    .end annotation

    .line 508
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 p1, 0x1

    .line 509
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    return-void
.end method
