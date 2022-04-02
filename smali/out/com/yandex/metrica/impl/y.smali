.class public final Lcom/yandex/metrica/impl/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/d;


# static fields
.field static final a:J

.field static final b:J

.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile i:Lcom/yandex/metrica/impl/y;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/HandlerThread;

.field private final f:Landroid/location/LocationManager;

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private k:Lcom/yandex/metrica/impl/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/d$a<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/yandex/metrica/impl/ob/cc;

.field private n:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/y;->a:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/metrica/impl/y;->b:J

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "gps"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/yandex/metrica/impl/y;->c:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/y;->j:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/d$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/y;->l:Z

    .line 213
    new-instance v1, Lcom/yandex/metrica/impl/y$1;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/y$1;-><init>(Lcom/yandex/metrica/impl/y;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/y;->n:Landroid/location/LocationListener;

    .line 67
    iput-object p1, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    .line 69
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    .line 70
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/y;->h:Z

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->e:Landroid/os/HandlerThread;

    .line 73
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string v0, "location"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    .line 79
    iget-object p1, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/bp;->b()Lcom/yandex/metrica/impl/ob/bq;

    move-result-object p1

    .line 80
    new-instance v0, Lcom/yandex/metrica/impl/ob/cc;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/cc;-><init>(Lcom/yandex/metrica/impl/ob/bq;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/y;->m:Lcom/yandex/metrica/impl/ob/cc;

    .line 81
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cc;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/y;->l:Z

    return-void
.end method

.method public static a([B)Landroid/location/Location;
    .registers 4

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 302
    :try_start_4
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 303
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 304
    const-class p0, Landroid/location/Location;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_21
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_1c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :catch_21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/y;
    .registers 3

    .line 85
    sget-object v0, Lcom/yandex/metrica/impl/y;->i:Lcom/yandex/metrica/impl/y;

    if-nez v0, :cond_1b

    .line 86
    sget-object v0, Lcom/yandex/metrica/impl/y;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/impl/y;->i:Lcom/yandex/metrica/impl/y;

    if-nez v1, :cond_16

    .line 88
    new-instance v1, Lcom/yandex/metrica/impl/y;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/y;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/y;->i:Lcom/yandex/metrica/impl/y;

    .line 90
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 93
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/yandex/metrica/impl/y;->i:Lcom/yandex/metrica/impl/y;

    return-object p0
.end method

.method private a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 15

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    if-eqz v0, :cond_e

    .line 134
    iget-object v1, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-void
.end method

.method static a(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 12

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p0, :cond_8

    return v1

    .line 243
    :cond_8
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 244
    sget-wide v4, Lcom/yandex/metrica/impl/y;->b:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    .line 245
    :goto_1a
    sget-wide v5, Lcom/yandex/metrica/impl/y;->b:J

    neg-long v5, v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_2c

    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    if-eqz v4, :cond_30

    return v0

    :cond_30
    if-eqz v5, :cond_33

    return v1

    .line 258
    :cond_33
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-lez v3, :cond_41

    const/4 v4, 0x1

    goto :goto_42

    :cond_41
    const/4 v4, 0x0

    :goto_42
    if-gez v3, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    int-to-long v6, v3

    const-wide/16 v8, 0xc8

    cmp-long v3, v6, v8

    if-lez v3, :cond_50

    const/4 v3, 0x1

    goto :goto_51

    :cond_50
    const/4 v3, 0x0

    .line 264
    :goto_51
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_61

    if-nez p1, :cond_5f

    const/4 p0, 0x1

    goto :goto_65

    :cond_5f
    const/4 p0, 0x0

    goto :goto_65

    .line 2279
    :cond_61
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_65
    if-eqz v5, :cond_68

    return v0

    :cond_68
    if-eqz v2, :cond_6d

    if-nez v4, :cond_6d

    return v0

    :cond_6d
    if-eqz v2, :cond_74

    if-nez v3, :cond_74

    if-eqz p0, :cond_74

    return v0

    :cond_74
    return v1
.end method

.method public static b(Landroid/location/Location;)[B
    .registers 3

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 287
    :try_start_7
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_14
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p0

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :catch_14
    :goto_14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 2

    monitor-enter p0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 148
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/y;->b()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 149
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/location/Location;)V
    .registers 3

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->c()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_17
    if-nez p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_21

    .line 170
    :cond_1b
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object p1, v0

    .line 171
    :goto_21
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/d$a;->a(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 173
    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 9

    monitor-enter p0

    .line 97
    :try_start_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/y;->l:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1035
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 98
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/y;->h:Z

    if-nez p1, :cond_48

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/y;->h:Z

    const-string v1, "network"

    const/4 v2, 0x0

    .line 104
    sget-wide v3, Lcom/yandex/metrica/impl/y;->a:J

    iget-object v5, p0, Lcom/yandex/metrica/impl/y;->n:Landroid/location/LocationListener;

    iget-object p1, p0, Lcom/yandex/metrica/impl/y;->e:Landroid/os/HandlerThread;

    .line 108
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, p0

    .line 104
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 112
    iget-object p1, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1039
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    const-string v1, "passive"

    const/4 v2, 0x0

    .line 113
    sget-wide v3, Lcom/yandex/metrica/impl/y;->a:J

    iget-object v5, p0, Lcom/yandex/metrica/impl/y;->n:Landroid/location/LocationListener;

    iget-object p1, p0, Lcom/yandex/metrica/impl/y;->e:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, p0

    .line 113
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/String;FJLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    .line 122
    :cond_48
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/Object;ZZ)V
    .registers 5

    .line 315
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/y;->l:Z

    if-eq v0, p3, :cond_1e

    if-eqz p2, :cond_19

    .line 317
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/y;->l:Z

    .line 318
    iget-object p2, p0, Lcom/yandex/metrica/impl/y;->m:Lcom/yandex/metrica/impl/ob/cc;

    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/cc;->a(Z)V

    .line 319
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/y;->l:Z

    if-eqz p2, :cond_15

    .line 321
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/y;->a(Ljava/lang/Object;)V

    return-void

    .line 324
    :cond_15
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/y;->a()V

    return-void

    :cond_19
    if-nez p3, :cond_1e

    .line 328
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/y;->b(Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method b()V
    .registers 3

    .line 153
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/y;->h:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/y;->h:Z

    .line 158
    :try_start_f
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    if-eqz v0, :cond_1a

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/yandex/metrica/impl/y;->n:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/y;->b()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 144
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized c()Landroid/location/Location;
    .registers 2

    monitor-enter p0

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->k:Lcom/yandex/metrica/impl/d$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/d$a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Landroid/location/Location;
    .registers 8

    .line 183
    iget-object v0, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 184
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 186
    iget-object v2, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2035
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 187
    iget-object v3, p0, Lcom/yandex/metrica/impl/y;->d:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 2039
    invoke-static {v3, v4}, Lcom/yandex/metrica/impl/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 188
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v1

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 189
    sget-object v6, Lcom/yandex/metrica/impl/y;->c:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    if-eqz v2, :cond_47

    :try_start_36
    const-string v6, "passive"

    .line 194
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    if-eqz v3, :cond_47

    .line 196
    :cond_40
    iget-object v6, p0, Lcom/yandex/metrica/impl/y;->f:Landroid/location/LocationManager;

    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    :cond_47
    move-object v5, v1

    :goto_48
    if-eqz v5, :cond_20

    .line 202
    invoke-static {v5, v4}, Lcom/yandex/metrica/impl/y;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v6

    if-eqz v6, :cond_20

    move-object v4, v5

    goto :goto_20

    :cond_52
    move-object v1, v4

    :cond_53
    return-object v1
.end method
