.class Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;
.super Landroid/os/Handler;
.source "BeaconService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/BeaconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/altbeacon/beacon/service/BeaconService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/altbeacon/beacon/service/BeaconService;)V
    .registers 3

    .line 130
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 137
    iget-object v0, p0, Lorg/altbeacon/beacon/service/BeaconService$IncomingHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/altbeacon/beacon/service/BeaconService;

    if-eqz v1, :cond_10c

    .line 139
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lorg/altbeacon/beacon/service/StartRMData;->fromBundle(Landroid/os/Bundle;)Lorg/altbeacon/beacon/service/StartRMData;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "BeaconService"

    if-eqz v0, :cond_d2

    .line 141
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_ab

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8d

    const/4 v5, 0x4

    if-eq v4, v5, :cond_65

    const/4 v5, 0x5

    if-eq v4, v5, :cond_46

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2e

    .line 167
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_10c

    :cond_2e
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "set scan intervals received"

    .line 163
    invoke-static {v3, v2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto/16 :goto_10c

    :cond_46
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "stop monitoring received"

    .line 158
    invoke-static {v3, v2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getRegionData()Lorg/altbeacon/beacon/Region;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/service/BeaconService;->stopMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 160
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto/16 :goto_10c

    :cond_65
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "start monitoring received"

    .line 153
    invoke-static {v3, v2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getRegionData()Lorg/altbeacon/beacon/Region;

    move-result-object p1

    new-instance v2, Lorg/altbeacon/beacon/service/Callback;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getCallbackPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/altbeacon/beacon/service/Callback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lorg/altbeacon/beacon/service/BeaconService;->startMonitoringBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V

    .line 155
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto/16 :goto_10c

    :cond_8d
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "stop ranging received"

    .line 148
    invoke-static {v3, v2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getRegionData()Lorg/altbeacon/beacon/Region;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/service/BeaconService;->stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 150
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto :goto_10c

    :cond_ab
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "start ranging received"

    .line 143
    invoke-static {v3, v2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getRegionData()Lorg/altbeacon/beacon/Region;

    move-result-object p1

    new-instance v2, Lorg/altbeacon/beacon/service/Callback;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getCallbackPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/altbeacon/beacon/service/Callback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lorg/altbeacon/beacon/service/BeaconService;->startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;Lorg/altbeacon/beacon/service/Callback;)V

    .line 145
    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getScanPeriod()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBetweenScanPeriod()J

    move-result-wide v4

    invoke-virtual {v0}, Lorg/altbeacon/beacon/service/StartRMData;->getBackgroundFlag()Z

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/altbeacon/beacon/service/BeaconService;->setScanPeriods(JJZ)V

    goto :goto_10c

    .line 170
    :cond_d2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_f4

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "Received settings update from other process"

    .line 171
    invoke-static {v3, v4, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lorg/altbeacon/beacon/service/SettingsData;->fromBundle(Landroid/os/Bundle;)Lorg/altbeacon/beacon/service/SettingsData;

    move-result-object p1

    if-eqz p1, :cond_ec

    .line 174
    invoke-virtual {p1, v1}, Lorg/altbeacon/beacon/service/SettingsData;->apply(Lorg/altbeacon/beacon/service/BeaconService;)V

    goto :goto_10c

    :cond_ec
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Settings data missing"

    .line 177
    invoke-static {v3, v0, p1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10c

    .line 181
    :cond_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown message from other process : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10c
    :goto_10c
    return-void
.end method
