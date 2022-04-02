.class Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;
.super Landroid/bluetooth/le/ScanCallback;
.source "CycledLeScannerForLollipop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->getNewLeScanCallback()Landroid/bluetooth/le/ScanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CycledLeScannerForLollipop"

    const-string v3, "got batch records"

    .line 318
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 320
    iget-object v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    iget-object v3, v3, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 321
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v5

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    .line 320
    invoke-interface {v3, v4, v5, v1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    goto :goto_e

    .line 323
    :cond_32
    iget-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    invoke-static {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->access$000(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_45

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "got a filtered batch scan result in the background."

    .line 324
    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public onScanFailed(I)V
    .registers 6

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "onScanFailed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "errorCode"

    .line 332
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    iget-object v1, v1, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "CycledLeScannerForLollipop"

    if-eq p1, v0, :cond_5a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_52

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_42

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan failed with unknown error (errorCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_61

    :cond_42
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Scan failed: power optimized scan feature is not supported"

    .line 348
    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_61

    :cond_4a
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Scan failed: internal error"

    .line 354
    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_61

    :cond_52
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Scan failed: app cannot be registered"

    .line 342
    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_61

    :cond_5a
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Scan failed: a BLE scan with the same settings is already started by the app"

    .line 336
    invoke-static {v2, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_61
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 8

    .line 299
    invoke-static {}, Lorg/altbeacon/beacon/logging/LogManager;->isVerboseLoggingEnabled()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "CycledLeScannerForLollipop"

    if-eqz p1, :cond_41

    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "got record"

    .line 300
    invoke-static {v1, v2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "with service uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    .line 308
    :cond_41
    iget-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    iget-object p1, p1, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->mCycledLeScanCallback:Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 309
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p2

    .line 308
    invoke-interface {p1, v2, v3, p2}, Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 310
    iget-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$4;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    invoke-static {p1}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->access$000(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_6b

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "got a filtered scan result in the background."

    .line 311
    invoke-static {v1, p2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6b
    return-void
.end method
