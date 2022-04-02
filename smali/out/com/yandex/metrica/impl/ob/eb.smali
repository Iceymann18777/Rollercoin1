.class final Lcom/yandex/metrica/impl/ob/eb;
.super Lcom/yandex/metrica/impl/ob/dy;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/eb$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/telephony/PhoneStateListener;

.field private d:Z

.field private final e:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a<",
            "Lcom/yandex/metrica/impl/ob/eg;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a<",
            "[",
            "Lcom/yandex/metrica/impl/ob/dz;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/eb$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/eb$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/eb;->a:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dy;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/eb;->d:Z

    .line 89
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    .line 90
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->f:Lcom/yandex/metrica/impl/d$a;

    .line 96
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    const-string v0, "phone"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    .line 98
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TelephonyProviderThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->g:Landroid/os/Handler;

    .line 102
    new-instance p1, Lcom/yandex/metrica/impl/ob/eb$2;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/eb$2;-><init>(Lcom/yandex/metrica/impl/ob/eb;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/eb;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eb;->c:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method private declared-synchronized a(Landroid/telephony/SignalStrength;)V
    .registers 5

    monitor-enter p0

    .line 230
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 231
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/eg;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/eg;->b()Lcom/yandex/metrica/impl/ob/dz;

    move-result-object v0

    .line 3363
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3378
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    const/16 v1, 0x63

    if-ne v1, p1, :cond_2d

    const/4 p1, -0x1

    goto :goto_47

    :cond_2d
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x71

    goto :goto_47

    .line 3366
    :cond_32
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 3367
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result p1

    const/16 v2, -0x78

    if-ne v2, p1, :cond_40

    move p1, v1

    goto :goto_47

    :cond_40
    if-ne v2, v1, :cond_43

    goto :goto_47

    .line 3368
    :cond_43
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 231
    :goto_47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dz;->a(Ljava/lang/Integer;)V
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_50

    .line 233
    :cond_4e
    monitor-exit p0

    return-void

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/eb;Landroid/telephony/SignalStrength;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/eb;->a(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/eb;)Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/yandex/metrica/impl/ob/eb;->d:Z

    return p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/eb;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/eb;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/eb;)Landroid/telephony/PhoneStateListener;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eb;->c:Landroid/telephony/PhoneStateListener;

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/eb;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private declared-synchronized g()[Lcom/yandex/metrica/impl/ob/dz;
    .registers 8

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1c

    .line 197
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/dz;

    goto/16 :goto_b3

    .line 1204
    :cond_1c
    :goto_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x11

    .line 1205
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2035
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1207
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 1208
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_8e

    const/4 v3, 0x0

    .line 1209
    :goto_41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8e

    .line 1210
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 3166
    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    const/4 v6, 0x0

    if-eqz v5, :cond_58

    .line 3167
    new-instance v5, Lcom/yandex/metrica/impl/ob/dz$c;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/dz$c;-><init>()V

    goto :goto_7f

    .line 3169
    :cond_58
    instance-of v5, v4, Landroid/telephony/CellInfoCdma;

    if-eqz v5, :cond_62

    .line 3170
    new-instance v5, Lcom/yandex/metrica/impl/ob/dz$a;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/dz$a;-><init>()V

    goto :goto_7f

    .line 3172
    :cond_62
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_6c

    .line 3173
    new-instance v5, Lcom/yandex/metrica/impl/ob/dz$d;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/dz$d;-><init>()V

    goto :goto_7f

    :cond_6c
    const/16 v5, 0x12

    .line 3175
    invoke-static {v5}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v5

    if-eqz v5, :cond_7e

    instance-of v5, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_7e

    .line 3176
    new-instance v5, Lcom/yandex/metrica/impl/ob/dz$e;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/dz$e;-><init>()V

    goto :goto_7f

    :cond_7e
    move-object v5, v6

    :goto_7f
    if-nez v5, :cond_82

    goto :goto_86

    .line 3161
    :cond_82
    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ob/dz$b;->a(Landroid/telephony/CellInfo;)Lcom/yandex/metrica/impl/ob/dz;

    move-result-object v6

    :goto_86
    if-eqz v6, :cond_8b

    .line 1212
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 1217
    :cond_8e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_a2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/dz;

    .line 1218
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/eb;->c()Lcom/yandex/metrica/impl/ob/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/eg;->b()Lcom/yandex/metrica/impl/ob/dz;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_ae

    .line 1220
    :cond_a2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/dz;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/dz;

    .line 195
    :goto_ae
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->f:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_b3
    .catchall {:try_start_1 .. :try_end_b3} :catchall_b5

    .line 199
    :goto_b3
    monitor-exit p0

    return-object v0

    :catchall_b5
    move-exception v0

    monitor-exit p0

    goto :goto_b9

    :goto_b8
    throw v0

    :goto_b9
    goto :goto_b8
.end method

.method private h()Ljava/lang/Integer;
    .registers 5

    const/4 v0, 0x0

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-object v0
.end method

.method private i()Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    .line 248
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    return-object v0
.end method

.method private j()Ljava/lang/Integer;
    .registers 5

    const/4 v0, 0x0

    .line 259
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-object v0

    :cond_14
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1c

    :catch_1c
    return-object v0
.end method

.method private k()Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    .line 267
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object v0

    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1b

    :catch_1b
    return-object v0
.end method

.method private l()Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    .line 275
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 276
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1c

    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    return-object v0
.end method

.method private m()Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    .line 288
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 289
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1c

    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 4

    const-string v0, "unknown"

    .line 310
    :try_start_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 311
    sget-object v2, Lcom/yandex/metrica/impl/ob/eb;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    move-object v0, v1

    :catch_11
    return-object v0
.end method

.method private o()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 321
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 4047
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 322
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-object v0
.end method

.method private p()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 335
    :try_start_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 5047
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    :goto_10
    const/16 v2, 0xa

    if-ge v1, v2, :cond_22

    .line 337
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 339
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_22

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 346
    :catch_22
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private q()Z
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 6047
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 352
    :try_start_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return v0

    :catch_11
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private r()Lcom/yandex/metrica/impl/ob/ee;
    .registers 8

    .line 424
    new-instance v6, Lcom/yandex/metrica/impl/ob/ee;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->j()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->q()Z

    move-result v3

    .line 6304
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    .line 424
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private s()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ee;",
            ">;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 7047
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 432
    :try_start_f
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->h:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 435
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 436
    new-instance v3, Lcom/yandex/metrica/impl/ob/ee;

    invoke-direct {v3, v2}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Landroid/telephony/SubscriptionInfo;)V

    .line 437
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_34

    goto :goto_1f

    :catch_34
    :cond_34
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/eb$3;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/eb$3;-><init>(Lcom/yandex/metrica/impl/ob/eb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 126
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/ea;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_e

    .line 157
    :try_start_3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->g()[Lcom/yandex/metrica/impl/ob/dz;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/ea;->a([Lcom/yandex/metrica/impl/ob/dz;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1

    .line 159
    :cond_e
    :goto_e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/eh;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_e

    .line 150
    :try_start_3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/eb;->c()Lcom/yandex/metrica/impl/ob/eg;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/eh;->a(Lcom/yandex/metrica/impl/ob/eg;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1

    .line 152
    :cond_e
    :goto_e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->g:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/metrica/impl/ob/eb$4;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/eb$4;-><init>(Lcom/yandex/metrica/impl/ob/eb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 145
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Lcom/yandex/metrica/impl/ob/eg;
    .registers 5

    monitor-enter p0

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1b

    .line 186
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/eg;

    goto :goto_5a

    .line 179
    :cond_1b
    :goto_1b
    new-instance v0, Lcom/yandex/metrica/impl/ob/eg;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/eb;->d()Lcom/yandex/metrica/impl/ob/dz;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/eb;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/eb;->f()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/eg;-><init>(Lcom/yandex/metrica/impl/ob/dz;Ljava/util/List;Ljava/util/List;)V

    .line 180
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/eg;->b()Lcom/yandex/metrica/impl/ob/dz;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dz;->a()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/d$a;->b()Z

    move-result v1

    if-nez v1, :cond_55

    .line 182
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/eg;->b()Lcom/yandex/metrica/impl/ob/dz;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/eg;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/eg;->b()Lcom/yandex/metrica/impl/ob/dz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dz;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/dz;->a(Ljava/lang/Integer;)V

    .line 184
    :cond_55
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/eb;->e:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 188
    :goto_5a
    monitor-exit p0

    return-object v0

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/dz;
    .registers 13

    .line 391
    new-instance v11, Lcom/yandex/metrica/impl/ob/dz;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->i()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->m()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->l()Ljava/lang/Integer;

    move-result-object v4

    .line 6300
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eb;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->n()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/yandex/metrica/impl/ob/dz;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Integer;)V

    return-object v11
.end method

.method e()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ee;",
            ">;"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x17

    .line 400
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 401
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_29

    .line 403
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->r()Lcom/yandex/metrica/impl/ob/ee;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 406
    :cond_22
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->r()Lcom/yandex/metrica/impl/ob/ee;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    :goto_29
    return-object v0
.end method

.method f()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x17

    .line 414
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 415
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c

    .line 417
    :cond_15
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/eb;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    return-object v0
.end method
