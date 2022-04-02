.class Lcom/yandex/metrica/impl/ob/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/fa$a;
    }
.end annotation


# static fields
.field private static a:Lcom/yandex/metrica/impl/ob/fh;

.field private static b:Lcom/yandex/metrica/impl/ob/ey;

.field private static c:Lcom/yandex/metrica/impl/ob/fs;


# direct methods
.method static declared-synchronized a(Lcom/yandex/metrica/impl/ob/fe;)Lcom/yandex/metrica/impl/ob/fh;
    .registers 6

    const-class v0, Lcom/yandex/metrica/impl/ob/fa;

    monitor-enter v0

    .line 17
    :try_start_3
    sget-object v1, Lcom/yandex/metrica/impl/ob/fa;->a:Lcom/yandex/metrica/impl/ob/fh;

    if-nez v1, :cond_1b

    .line 18
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/fa;->b(Lcom/yandex/metrica/impl/ob/fe;)Lcom/yandex/metrica/impl/ob/ey;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/fa;->c(Lcom/yandex/metrica/impl/ob/fe;)Lcom/yandex/metrica/impl/ob/fs;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/yandex/metrica/impl/ob/fd;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/fd;-><init>()V

    .line 21
    new-instance v4, Lcom/yandex/metrica/impl/ob/fh;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/fh;-><init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/ey;Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/fd;)V

    sput-object v4, Lcom/yandex/metrica/impl/ob/fa;->a:Lcom/yandex/metrica/impl/ob/fh;

    .line 23
    :cond_1b
    sget-object p0, Lcom/yandex/metrica/impl/ob/fa;->a:Lcom/yandex/metrica/impl/ob/fh;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized b(Lcom/yandex/metrica/impl/ob/fe;)Lcom/yandex/metrica/impl/ob/ey;
    .registers 4

    const-class v0, Lcom/yandex/metrica/impl/ob/fa;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/yandex/metrica/impl/ob/fa;->b:Lcom/yandex/metrica/impl/ob/ey;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    if-nez v1, :cond_17

    .line 29
    :try_start_7
    new-instance v1, Lcom/yandex/metrica/impl/ob/fa$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yandex/metrica/impl/ob/fa$a;-><init>(Lcom/yandex/metrica/impl/ob/fe;B)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/fa;->b:Lcom/yandex/metrica/impl/ob/ey;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10
    .catchall {:try_start_7 .. :try_end_f} :catchall_1b

    goto :goto_17

    .line 31
    :catch_10
    :try_start_10
    new-instance p0, Lcom/yandex/metrica/impl/ob/et;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/et;-><init>()V

    sput-object p0, Lcom/yandex/metrica/impl/ob/fa;->b:Lcom/yandex/metrica/impl/ob/ey;

    .line 34
    :cond_17
    :goto_17
    sget-object p0, Lcom/yandex/metrica/impl/ob/fa;->b:Lcom/yandex/metrica/impl/ob/ey;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized c(Lcom/yandex/metrica/impl/ob/fe;)Lcom/yandex/metrica/impl/ob/fs;
    .registers 3

    const-class v0, Lcom/yandex/metrica/impl/ob/fa;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lcom/yandex/metrica/impl/ob/fa;->c:Lcom/yandex/metrica/impl/ob/fs;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-nez v1, :cond_d

    .line 40
    :try_start_7
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fe;->d()Lcom/yandex/metrica/impl/ob/fs;

    move-result-object p0

    sput-object p0, Lcom/yandex/metrica/impl/ob/fa;->c:Lcom/yandex/metrica/impl/ob/fs;
    :try_end_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_d} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 45
    :catch_d
    :cond_d
    :try_start_d
    sget-object p0, Lcom/yandex/metrica/impl/ob/fa;->c:Lcom/yandex/metrica/impl/ob/fs;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_11

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0

    throw p0
.end method
