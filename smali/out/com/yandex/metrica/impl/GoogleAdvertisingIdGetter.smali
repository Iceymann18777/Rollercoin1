.class public Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;,
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;,
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c;,
        Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$b;
    }
.end annotation


# instance fields
.field private volatile a:Ljava/lang/String;

.field private volatile b:Ljava/lang/Boolean;

.field private final c:Ljava/lang/Object;

.field private volatile d:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;)V

    .line 92
    :try_start_3
    iget-object p1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;)Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V
    .registers 8

    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 1146
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 1147
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 1148
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    .line 1150
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getId"

    new-array v2, v5, [Ljava/lang/Class;

    .line 1151
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 1152
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "isLimitAdTrackingEnabled"

    new-array v3, v5, [Ljava/lang/Class;

    .line 1155
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    .line 1156
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1157
    monitor-enter p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_4e

    .line 1158
    :try_start_44
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Ljava/lang/String;)V

    .line 2082
    iput-object p1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    .line 1160
    monitor-exit p0

    return-void

    :catchall_4b
    move-exception p1

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw p1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4e} :catch_4e

    :catch_4e
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 77
    invoke-static {}, Lcom/yandex/metrica/impl/ob/g;->a()Lcom/yandex/metrica/impl/ob/g;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/l;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/i;)V

    .line 78
    iput-object p1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;)Ljava/lang/Boolean;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V
    .registers 6

    .line 2170
    new-instance v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;-><init>(B)V

    .line 2171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 2172
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 2173
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2175
    :try_start_19
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$a;->a()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->Create(Landroid/os/IBinder;)Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;

    move-result-object v1

    .line 2176
    invoke-interface {v1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 2178
    invoke-interface {v1, v2}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$GoogleAdvertisingInfo;->getEnabled(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2180
    monitor-enter p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_40
    .catchall {:try_start_19 .. :try_end_2e} :catchall_3b

    .line 2181
    :try_start_2e
    invoke-direct {p0, v3}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Ljava/lang/String;)V

    .line 3082
    iput-object v1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;

    .line 2183
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_38

    .line 2186
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catchall_38
    move-exception v1

    .line 2183
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_40
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    .line 2186
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw p0

    :catch_40
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_43
    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .registers 1

    .line 31
    invoke-static {p0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.google.android.gms.common.GooglePlayServicesUtil"

    .line 133
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isGooglePlayServicesAvailable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 134
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    .line 135
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    return p0

    :catch_26
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_26

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_21

    .line 56
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;

    invoke-direct {v2, p0, p1}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$1;-><init>(Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    .line 70
    new-instance p1, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->d:Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 72
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$2;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$2;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public declared-synchronized c()Z
    .registers 2

    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yandex/metrica/impl/GoogleAdvertisingIdGetter;->b:Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method
