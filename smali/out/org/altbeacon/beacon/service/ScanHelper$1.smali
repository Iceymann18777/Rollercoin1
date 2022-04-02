.class Lorg/altbeacon/beacon/service/ScanHelper$1;
.super Ljava/lang/Object;
.source "ScanHelper.java"

# interfaces
.implements Lorg/altbeacon/beacon/service/scanner/CycledLeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/ScanHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/beacon/service/ScanHelper;


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/ScanHelper;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCycleEnd()V
    .registers 5

    .line 221
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->access$000(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/scanner/DistinctPacketDetector;->clearDetections()V

    .line 222
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->access$100(Lorg/altbeacon/beacon/service/ScanHelper;)Lorg/altbeacon/beacon/service/MonitoringStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/MonitoringStatus;->updateNewlyOutside()V

    .line 223
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->access$200(Lorg/altbeacon/beacon/service/ScanHelper;)V

    .line 225
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->access$300(Lorg/altbeacon/beacon/service/ScanHelper;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 228
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanHelper;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Simulated scan data is deprecated and will be removed in a future release. Please use the new BeaconSimulator interface instead."

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->access$500(Lorg/altbeacon/beacon/service/ScanHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_59

    .line 231
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->access$300(Lorg/altbeacon/beacon/service/ScanHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/altbeacon/beacon/Beacon;

    .line 235
    iget-object v3, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v3, v2}, Lorg/altbeacon/beacon/service/ScanHelper;->access$600(Lorg/altbeacon/beacon/service/ScanHelper;Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_47

    .line 238
    :cond_59
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanHelper;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Simulated scan data provided, but ignored because we are not running in debug mode.  Please remove simulated scan data for production."

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_64
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 244
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/simulator/BeaconSimulator;->getBeacons()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 245
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v0}, Lorg/altbeacon/beacon/service/ScanHelper;->access$500(Lorg/altbeacon/beacon/service/ScanHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_a4

    .line 246
    invoke-static {}, Lorg/altbeacon/beacon/BeaconManager;->getBeaconSimulator()Lorg/altbeacon/beacon/simulator/BeaconSimulator;

    move-result-object v0

    invoke-interface {v0}, Lorg/altbeacon/beacon/simulator/BeaconSimulator;->getBeacons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Beacon;

    .line 250
    iget-object v2, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-static {v2, v1}, Lorg/altbeacon/beacon/service/ScanHelper;->access$600(Lorg/altbeacon/beacon/service/ScanHelper;Lorg/altbeacon/beacon/Beacon;)V

    goto :goto_92

    .line 253
    :cond_a4
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanHelper;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Beacon simulations provided, but ignored because we are not running in debug mode.  Please remove beacon simulations for production."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_bb

    .line 256
    :cond_b0
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanHelper;->access$400()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getBeacons is returning null. No simulated beacons to report."

    invoke-static {v0, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 5

    .line 214
    iget-object v0, p0, Lorg/altbeacon/beacon/service/ScanHelper$1;->this$0:Lorg/altbeacon/beacon/service/ScanHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/altbeacon/beacon/service/ScanHelper;->processScanResult(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method
