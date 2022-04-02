.class public Lcom/startapp/android/publish/adsCommon/c/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/startapp/common/d;

.field protected c:Lcom/startapp/android/publish/adsCommon/c/a;

.field protected d:Landroid/bluetooth/BluetoothAdapter;

.field protected e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/common/d;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/c/b;->b:Lcom/startapp/common/d;

    .line 32
    new-instance p1, Lcom/startapp/android/publish/adsCommon/c/a;

    invoke-direct {p1}, Lcom/startapp/android/publish/adsCommon/c/a;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->c:Lcom/startapp/android/publish/adsCommon/c/a;

    .line 33
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/c/b;->d()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->d:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private c()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    :try_start_5
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->a:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-static {v1, v2}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 78
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v1

    const/4 v2, 0x6

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get devices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :cond_38
    return-object v0
.end method

.method private d()Landroid/bluetooth/BluetoothAdapter;
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->a:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {v0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 89
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private e()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 96
    new-instance v0, Lcom/startapp/android/publish/adsCommon/c/b$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/adsCommon/c/b$1;-><init>(Lcom/startapp/android/publish/adsCommon/c/b;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->a:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {v0, v1}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3a

    .line 61
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 63
    :try_start_15
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_37

    :catch_1d
    move-exception v0

    const/4 v1, 0x3

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothManager - stop() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    :goto_37
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->e:Landroid/content/BroadcastReceiver;

    :cond_3a
    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6b

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->c:Lcom/startapp/android/publish/adsCommon/c/a;

    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/c/b;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/c/a;->a(Ljava/util/Set;)V

    if-eqz p1, :cond_61

    .line 43
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->a:Landroid/content/Context;

    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {p1, v0}, Lcom/startapp/common/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 44
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/c/b;->e()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->e:Landroid/content/BroadcastReceiver;

    .line 47
    :try_start_2d
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_38

    goto :goto_6a

    :catch_38
    move-exception p1

    const/4 v0, 0x3

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothManager - start() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 52
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->b:Lcom/startapp/common/d;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/c/b;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/startapp/common/d;->a(Ljava/lang/Object;)V

    goto :goto_6a

    .line 55
    :cond_61
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->b:Lcom/startapp/common/d;

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/c/b;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/startapp/common/d;->a(Ljava/lang/Object;)V

    :goto_6a
    return-void

    .line 38
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/b;->b:Lcom/startapp/common/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/startapp/common/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/b;->c:Lcom/startapp/android/publish/adsCommon/c/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/c/a;->a()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method
