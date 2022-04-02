.class Lorg/altbeacon/beacon/service/ScanHelper$ScanData;
.super Ljava/lang/Object;
.source "ScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/ScanHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanData"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field final rssi:I

.field scanRecord:[B

.field final synthetic this$0:Lorg/altbeacon/beacon/service/ScanHelper;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/ScanHelper;Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 5

    .line 328
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p2, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 330
    iput p3, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->rssi:I

    .line 331
    iput-object p4, p0, Lorg/altbeacon/beacon/service/ScanHelper$ScanData;->scanRecord:[B

    return-void
.end method
