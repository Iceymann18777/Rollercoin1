.class Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;
.super Ljava/lang/Object;
.source "CycledLeScannerForLollipop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;->postStartLeScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

.field final synthetic val$filters:Ljava/util/List;

.field final synthetic val$scanCallback:Landroid/bluetooth/le/ScanCallback;

.field final synthetic val$scanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field final synthetic val$settings:Landroid/bluetooth/le/ScanSettings;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;Landroid/bluetooth/le/BluetoothLeScanner;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .registers 6

    .line 208
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;

    iput-object p2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->val$scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iput-object p3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->val$filters:Ljava/util/List;

    iput-object p4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->val$settings:Landroid/bluetooth/le/ScanSettings;

    iput-object p5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->val$scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "CycledLeScannerForLollipop"

    const/4 v1, 0x0

    .line 213
    :try_start_3
    iget-object v2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->val$scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->val$filters:Ljava/util/List;

    iget-object v4, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->val$settings:Landroid/bluetooth/le/ScanSettings;

    iget-object v5, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop$2;->val$scanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_e} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_e} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_e} :catch_f

    goto :goto_27

    :catch_f
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot start scan.  Security Exception"

    .line 221
    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    :catch_17
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Cannot start scan. Unexpected NPE."

    .line 218
    invoke-static {v2, v0, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    :catch_20
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot start scan. Bluetooth may be turned off."

    .line 215
    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_27
    return-void
.end method
