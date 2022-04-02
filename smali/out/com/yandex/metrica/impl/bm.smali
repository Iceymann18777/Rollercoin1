.class Lcom/yandex/metrica/impl/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/bm$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/yandex/metrica/impl/bm;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/net/wifi/WifiManager;

.field private d:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a<",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bm$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/bm;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bm;->d:Lcom/yandex/metrica/impl/d$a;

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bm;->e:Lcom/yandex/metrica/impl/d$a;

    const-string v0, "wifi"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/yandex/metrica/impl/bm;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bm;
    .registers 3

    .line 64
    sget-object v0, Lcom/yandex/metrica/impl/bm;->b:Lcom/yandex/metrica/impl/bm;

    if-nez v0, :cond_1b

    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/bm;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/impl/bm;->b:Lcom/yandex/metrica/impl/bm;

    if-nez v1, :cond_16

    .line 67
    new-instance v1, Lcom/yandex/metrica/impl/bm;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/bm;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/bm;->b:Lcom/yandex/metrica/impl/bm;

    .line 69
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 72
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/yandex/metrica/impl/bm;->b:Lcom/yandex/metrica/impl/bm;

    return-object p0
.end method

.method private static a(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bm$a;",
            ">;)V"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 142
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    if-eqz v3, :cond_11

    .line 148
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_26
    const/4 v7, 0x1

    if-ge v6, v4, :cond_41

    aget-byte v8, v3, v6

    .line 149
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%02X:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v9, v10, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 151
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_11

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 153
    new-instance v3, Lcom/yandex/metrica/impl/bm$a;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/yandex/metrica/impl/bm$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_63

    goto :goto_11

    :catchall_63
    :cond_63
    return-void
.end method

.method private c()Lorg/json/JSONArray;
    .registers 9

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 93
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 96
    iget-object v3, p0, Lcom/yandex/metrica/impl/bm;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 98
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_1c

    .line 102
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 103
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    .line 104
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "signal_strength"

    .line 105
    iget v6, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "ssid"

    .line 106
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "is_connected"

    .line 107
    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_60} :catch_62

    goto :goto_1c

    :cond_61
    return-object v1

    .line 117
    :catch_62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method private d()Z
    .registers 2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method declared-synchronized a()Lorg/json/JSONArray;
    .registers 3

    monitor-enter p0

    .line 77
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bm;->d()Z

    move-result v0

    if-nez v0, :cond_e

    .line 79
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_31

    monitor-exit p0

    return-object v0

    .line 82
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->d:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->d:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 83
    :cond_1e
    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->d:Lcom/yandex/metrica/impl/d$a;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/bm;->c()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V

    .line 86
    :cond_27
    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->d:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v0

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 1055
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 165
    iget-object p1, p0, Lcom/yandex/metrica/impl/bm;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getWifiApConfiguration"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/yandex/metrica/impl/bm;->a:Landroid/net/wifi/WifiManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_27

    .line 167
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    return-object p1

    :catchall_27
    :cond_27
    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bm$a;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 130
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-static {v0}, Lcom/yandex/metrica/impl/bm;->a(Ljava/util/List;)V

    .line 132
    iget-object v1, p0, Lcom/yandex/metrica/impl/bm;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V

    .line 134
    :cond_1d
    iget-object v0, p0, Lcom/yandex/metrica/impl/bm;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c(Landroid/content/Context;)I
    .registers 6

    const/4 v0, -0x1

    :try_start_1
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 2055
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 187
    iget-object p1, p0, Lcom/yandex/metrica/impl/bm;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getWifiApState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 189
    iget-object v1, p0, Lcom/yandex/metrica/impl/bm;->a:Landroid/net/wifi/WifiManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2d

    const/16 v0, 0xa

    if-le p1, v0, :cond_2c

    add-int/lit8 p1, p1, -0xa

    :cond_2c
    move v0, p1

    :catchall_2d
    :cond_2d
    return v0
.end method
