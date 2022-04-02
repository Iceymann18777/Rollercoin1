.class public Lorg/altbeacon/beacon/startup/StartupBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartupBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "StartupBroadcastReceiver"

    const-string v3, "onReceive called in startup broadcast receiver"

    .line 27
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x12

    if-ge v1, v4, :cond_21

    new-array p1, v3, [Ljava/lang/Object;

    .line 29
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Not starting up beacon service because we do not have API version 18 (Android 4.3).  We have: %s"

    invoke-static {v2, p2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->isAnyConsumerBound()Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {v1}, Lorg/altbeacon/beacon/BeaconManager;->getScheduledScanJobsEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_3e

    :cond_36
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "No consumers are bound.  Ignoring broadcast receiver."

    .line 54
    invoke-static {v2, p2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b0

    :cond_3e
    :goto_3e
    const-string v1, "android.bluetooth.le.extra.CALLBACK_TYPE"

    const/4 v4, -0x1

    .line 34
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_90

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Passive background scan callback type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "got Android O background scan via intent"

    .line 37
    invoke-static {v2, v3, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "android.bluetooth.le.extra.ERROR_CODE"

    .line 38
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_82

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Passive background scan failed.  Code; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_82
    const-string v0, "android.bluetooth.le.extra.LIST_SCAN_RESULT"

    .line 42
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 43
    invoke-static {}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->getInstance()Lorg/altbeacon/beacon/service/ScanJobScheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/altbeacon/beacon/service/ScanJobScheduler;->scheduleAfterBackgroundWakeup(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_b0

    :cond_90
    const-string p1, "wakeup"

    .line 45
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "got wake up intent"

    .line 46
    invoke-static {v2, p2, p1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b0

    :cond_a0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 50
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "Already started.  Ignoring intent: %s of type: %s"

    .line 49
    invoke-static {v2, p1, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b0
    return-void
.end method
