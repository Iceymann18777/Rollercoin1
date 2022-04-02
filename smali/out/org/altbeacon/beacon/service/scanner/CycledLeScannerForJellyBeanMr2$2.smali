.class Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;
.super Ljava/lang/Object;
.source "CycledLeScannerForJellyBeanMr2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;->postStartLeScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;

.field final synthetic val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .registers 4

    .line 70
    iput-object p1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;->this$0:Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2;

    iput-object p2, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;->val$leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForJellyBeanMr2$2;->val$leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_13

    :catch_8
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CycledLeScannerForJellyBeanMr2"

    const-string v3, "Internal Android exception in startLeScan()"

    .line 78
    invoke-static {v0, v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_13
    return-void
.end method
