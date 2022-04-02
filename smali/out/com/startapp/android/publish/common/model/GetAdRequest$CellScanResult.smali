.class Lcom/startapp/android/publish/common/model/GetAdRequest$CellScanResult;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/common/model/GetAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CellScanResult"
.end annotation


# static fields
.field private static final DELIMITER:C = ','


# instance fields
.field private cellInfo:Landroid/telephony/NeighboringCellInfo;


# direct methods
.method public constructor <init>(Landroid/telephony/NeighboringCellInfo;)V
    .registers 2

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest$CellScanResult;->cellInfo:Landroid/telephony/NeighboringCellInfo;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    iget-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest$CellScanResult;->cellInfo:Landroid/telephony/NeighboringCellInfo;

    if-eqz v1, :cond_42

    .line 482
    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest$CellScanResult;->cellInfo:Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest$CellScanResult;->cellInfo:Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    iget-object v2, p0, Lcom/startapp/android/publish/common/model/GetAdRequest$CellScanResult;->cellInfo:Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v2}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    iget-object v1, p0, Lcom/startapp/android/publish/common/model/GetAdRequest$CellScanResult;->cellInfo:Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
