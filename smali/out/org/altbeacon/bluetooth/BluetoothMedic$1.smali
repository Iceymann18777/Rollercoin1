.class Lorg/altbeacon/bluetooth/BluetoothMedic$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMedic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/bluetooth/BluetoothMedic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;


# direct methods
.method constructor <init>(Lorg/altbeacon/bluetooth/BluetoothMedic;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 102
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Broadcast notification received."

    invoke-static {v0, v3, v2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    const-string v2, "onScanFailed"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Cannot power cycle bluetooth again"

    const/4 v4, -0x1

    const-string v5, "errorCode"

    if-eqz v2, :cond_48

    .line 107
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_79

    .line 109
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    const-string v0, "scan failed"

    const-string v2, "Power cycling bluetooth"

    invoke-static {p2, p1, v0, v2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Detected a SCAN_FAILED_APPLICATION_REGISTRATION_FAILED.  We need to cycle bluetooth to recover"

    invoke-static {p2, v2, v1}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {p2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$200(Lorg/altbeacon/bluetooth/BluetoothMedic;)Z

    move-result p2

    if-nez p2, :cond_79

    .line 114
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {p2, p1, v0, v3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    :cond_48
    const-string v2, "onStartFailed"

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 119
    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_79

    .line 121
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    const-string v0, "advertising failed"

    const-string v1, "Expected failure.  Power cycling."

    invoke-static {p2, p1, v0, v1}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {p2}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$200(Lorg/altbeacon/bluetooth/BluetoothMedic;)Z

    move-result p2

    if-nez p2, :cond_79

    .line 124
    iget-object p2, p0, Lorg/altbeacon/bluetooth/BluetoothMedic$1;->this$0:Lorg/altbeacon/bluetooth/BluetoothMedic;

    invoke-static {p2, p1, v0, v3}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$100(Lorg/altbeacon/bluetooth/BluetoothMedic;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 129
    :cond_6e
    invoke-static {}, Lorg/altbeacon/bluetooth/BluetoothMedic;->access$000()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Unknown event."

    invoke-static {p1, v0, p2}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_79
    :goto_79
    return-void
.end method
