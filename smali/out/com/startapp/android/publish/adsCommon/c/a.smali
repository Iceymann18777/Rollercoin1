.class public Lcom/startapp/android/publish/adsCommon/c/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/util/Set;)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 46
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "bluetoothClass"

    .line 47
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "name"

    .line 48
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "mac"

    .line 49
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bondState"

    .line 50
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_9

    :catch_46
    const/4 v0, 0x0

    :cond_47
    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    :try_start_5
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/a;->a:Ljava/util/Set;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/a;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1c

    const-string v1, "paired"

    .line 30
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/c/a;->a:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/startapp/android/publish/adsCommon/c/a;->b(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_1c
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/a;->b:Ljava/util/Set;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/c/a;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_35

    const-string v1, "available"

    .line 33
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/c/a;->b:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/startapp/android/publish/adsCommon/c/a;->b(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    goto :goto_35

    :catch_34
    nop

    .line 38
    :cond_35
    :goto_35
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    return-object v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/a;->b:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/a;->b:Ljava/util/Set;

    .line 19
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/c/a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/c/a;->a:Ljava/util/Set;

    return-void
.end method
