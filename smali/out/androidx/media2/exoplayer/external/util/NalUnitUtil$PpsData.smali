.class public final Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final bottomFieldPicOrderInFramePresentFlag:Z

.field public final picParameterSetId:I

.field public final seqParameterSetId:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "picParameterSetId",
            "seqParameterSetId",
            "bottomFieldPicOrderInFramePresentFlag"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;->picParameterSetId:I

    .line 96
    iput p2, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    .line 97
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    return-void
.end method
