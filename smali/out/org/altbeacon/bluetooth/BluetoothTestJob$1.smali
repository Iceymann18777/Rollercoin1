.class Lorg/altbeacon/bluetooth/BluetoothTestJob$1;
.super Ljava/lang/Object;
.source "BluetoothTestJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/altbeacon/bluetooth/BluetoothTestJob;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lorg/altbeacon/bluetooth/BluetoothTestJob;Landroid/app/job/JobParameters;)V
    .registers 3

    .line 91
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    iput-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 94
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Bluetooth Test Job running"

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v2, "test_type"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_28

    .line 98
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "No test specified.  Done with job."

    invoke-static {v3, v5, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v2, :cond_50

    .line 102
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Scan test specified."

    invoke-static {v3, v5, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->getInstance()Lorg/altbeacon/bluetooth/BluetoothMedic;

    move-result-object v3

    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    invoke-virtual {v3, v4}, Lorg/altbeacon/bluetooth/BluetoothMedic;->runScanTest(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 105
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "scan test failed"

    invoke-static {v3, v5, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    const/4 v3, 0x1

    :cond_50
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_81

    if-eqz v3, :cond_5e

    const-wide/16 v3, 0x2710

    .line 112
    :try_start_59
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    nop

    .line 118
    :cond_5e
    :goto_5e
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Transmit test specified."

    invoke-static {v3, v5, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->getInstance()Lorg/altbeacon/bluetooth/BluetoothMedic;

    move-result-object v3

    iget-object v4, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    invoke-virtual {v3, v4}, Lorg/altbeacon/bluetooth/BluetoothMedic;->runTransmitterTest(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 121
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "transmit test failed"

    invoke-static {v3, v5, v4}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_82

    :cond_81
    move v2, v3

    :cond_82
    :goto_82
    if-nez v2, :cond_a3

    .line 126
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown test type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  Exiting."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_a3
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothTestJob;

    iget-object v2, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v2, v1}, Lorg/altbeacon/bluetooth/BluetoothTestJob;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
