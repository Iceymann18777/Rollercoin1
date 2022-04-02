.class Lcom/yandex/metrica/impl/ob/ew$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fe;

.field private final b:Lcom/yandex/metrica/impl/ob/fd;

.field private volatile c:[Lcom/yandex/metrica/impl/ob/er;

.field private volatile d:Lcom/yandex/metrica/impl/ob/fc;

.field private volatile e:Lcom/yandex/metrica/impl/ob/eu;

.field private volatile f:Lcom/yandex/metrica/impl/ob/ej;

.field private volatile g:Lcom/yandex/metrica/impl/ob/eq;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)V
    .registers 3

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ew$a;->a:Lcom/yandex/metrica/impl/ob/fe;

    .line 229
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ew$a;->b:Lcom/yandex/metrica/impl/ob/fd;

    return-void
.end method

.method private a()Lcom/yandex/metrica/impl/ob/eq;
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->g:Lcom/yandex/metrica/impl/ob/eq;

    if-nez v0, :cond_19

    .line 234
    monitor-enter p0

    .line 235
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->g:Lcom/yandex/metrica/impl/ob/eq;

    if-nez v0, :cond_14

    .line 236
    new-instance v0, Lcom/yandex/metrica/impl/ob/eq;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ew$a;->a:Lcom/yandex/metrica/impl/ob/fe;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ew$a;->b:Lcom/yandex/metrica/impl/ob/fd;

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/eq;-><init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/fd;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->g:Lcom/yandex/metrica/impl/ob/eq;

    .line 238
    :cond_14
    monitor-exit p0

    goto :goto_19

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0

    .line 240
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->g:Lcom/yandex/metrica/impl/ob/eq;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/fc;
    .registers 1

    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ew$a;->d()Lcom/yandex/metrica/impl/ob/fc;

    move-result-object p0

    return-object p0
.end method

.method private b()Lcom/yandex/metrica/impl/ob/ej;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->f:Lcom/yandex/metrica/impl/ob/ej;

    if-nez v0, :cond_15

    .line 245
    monitor-enter p0

    .line 246
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->f:Lcom/yandex/metrica/impl/ob/ej;

    if-nez v0, :cond_10

    .line 247
    new-instance v0, Lcom/yandex/metrica/impl/ob/ej;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ej;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->f:Lcom/yandex/metrica/impl/ob/ej;

    .line 249
    :cond_10
    monitor-exit p0

    goto :goto_15

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0

    .line 251
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->f:Lcom/yandex/metrica/impl/ob/ej;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/eu;
    .registers 1

    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ew$a;->c()Lcom/yandex/metrica/impl/ob/eu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/ew$a;)Lcom/yandex/metrica/impl/ob/eq;
    .registers 1

    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ew$a;->a()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/yandex/metrica/impl/ob/eu;
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->e:Lcom/yandex/metrica/impl/ob/eu;

    if-nez v0, :cond_1d

    .line 256
    monitor-enter p0

    .line 257
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->e:Lcom/yandex/metrica/impl/ob/eu;

    if-nez v0, :cond_18

    .line 258
    new-instance v0, Lcom/yandex/metrica/impl/ob/eu;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ew$a;->b()Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ej;->b()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/eu;-><init>(Lcom/yandex/metrica/impl/ob/fb;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->e:Lcom/yandex/metrica/impl/ob/eu;

    .line 260
    :cond_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v0

    .line 262
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->e:Lcom/yandex/metrica/impl/ob/eu;

    return-object v0
.end method

.method private d()Lcom/yandex/metrica/impl/ob/fc;
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->d:Lcom/yandex/metrica/impl/ob/fc;

    if-nez v0, :cond_1f

    .line 267
    monitor-enter p0

    .line 268
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->d:Lcom/yandex/metrica/impl/ob/fc;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1c

    if-nez v0, :cond_1a

    .line 270
    :try_start_9
    new-instance v0, Lcom/yandex/metrica/impl/ob/fc;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/fc;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->d:Lcom/yandex/metrica/impl/ob/fc;
    :try_end_10
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_10} :catch_11
    .catchall {:try_start_9 .. :try_end_10} :catchall_1c

    goto :goto_1a

    :catch_11
    move-exception v0

    .line 272
    :try_start_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t get system trust manager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 275
    :cond_1a
    :goto_1a
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1c

    throw v0

    .line 277
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->d:Lcom/yandex/metrica/impl/ob/fc;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/ew$a;)[Lcom/yandex/metrica/impl/ob/er;
    .registers 1

    .line 216
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ew$a;->e()[Lcom/yandex/metrica/impl/ob/er;

    move-result-object p0

    return-object p0
.end method

.method private e()[Lcom/yandex/metrica/impl/ob/er;
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->c:[Lcom/yandex/metrica/impl/ob/er;

    if-nez v0, :cond_2b

    .line 282
    monitor-enter p0

    .line 283
    :try_start_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->c:[Lcom/yandex/metrica/impl/ob/er;

    if-nez v0, :cond_26

    .line 284
    new-instance v0, Lcom/yandex/metrica/impl/ob/ep;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ew$a;->a()Lcom/yandex/metrica/impl/ob/eq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ep;-><init>(Lcom/yandex/metrica/impl/ob/ey;)V

    .line 285
    new-instance v1, Lcom/yandex/metrica/impl/ob/ei;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ew$a;->b()Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ei;-><init>(Lcom/yandex/metrica/impl/ob/ey;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/er;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 286
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ew$a;->c:[Lcom/yandex/metrica/impl/ob/er;

    .line 288
    :cond_26
    monitor-exit p0

    goto :goto_2b

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0

    .line 290
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ew$a;->c:[Lcom/yandex/metrica/impl/ob/er;

    return-object v0
.end method
