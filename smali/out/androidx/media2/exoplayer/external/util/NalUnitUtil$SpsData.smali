.class public final Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final constraintsFlagsAndReservedZero2Bits:I

.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final levelIdc:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthAspectRatio:F

.field public final profileIdc:I

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIFZZIIIZ)V
    .registers 14
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
            0x0
        }
        names = {
            "profileIdc",
            "constraintsFlagsAndReservedZero2Bits",
            "levelIdc",
            "seqParameterSetId",
            "width",
            "height",
            "pixelWidthAspectRatio",
            "separateColorPlaneFlag",
            "frameMbsOnlyFlag",
            "frameNumLength",
            "picOrderCountType",
            "picOrderCntLsbLength",
            "deltaPicOrderAlwaysZeroFlag"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->profileIdc:I

    .line 68
    iput p2, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    .line 69
    iput p3, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->levelIdc:I

    .line 70
    iput p4, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    .line 71
    iput p5, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->width:I

    .line 72
    iput p6, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->height:I

    .line 73
    iput p7, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 74
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    .line 75
    iput-boolean p9, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    .line 76
    iput p10, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->frameNumLength:I

    .line 77
    iput p11, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCountType:I

    .line 78
    iput p12, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    .line 79
    iput-boolean p13, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    return-void
.end method
