.class Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForAndroidO;
.super Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;
.source "CycledLeScannerForAndroidO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForAndroidO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForAndroidO;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V
    .registers 9

    .line 26
    invoke-direct/range {p0 .. p8}, Lorg/altbeacon/beacon/service/scanner/CycledLeScannerForLollipop;-><init>(Landroid/content/Context;JJZLorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;Lorg/altbeacon/bluetooth/BluetoothCrashResolver;)V

    return-void
.end method
