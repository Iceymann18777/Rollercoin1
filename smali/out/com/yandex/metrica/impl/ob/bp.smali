.class public Lcom/yandex/metrica/impl/ob/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/metrica/impl/ob/bp;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/bo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/bq;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:Lcom/yandex/metrica/impl/ob/bo;

.field private f:Lcom/yandex/metrica/impl/ob/bq;

.field private g:Lcom/yandex/metrica/impl/ob/bq;

.field private h:Lcom/yandex/metrica/impl/ob/bq;

.field private i:Lcom/yandex/metrica/impl/ob/br;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->c:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bp;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/bp;
    .registers 3

    .line 40
    sget-object v0, Lcom/yandex/metrica/impl/ob/bp;->a:Lcom/yandex/metrica/impl/ob/bp;

    if-nez v0, :cond_17

    .line 41
    const-class v0, Lcom/yandex/metrica/impl/ob/bp;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/impl/ob/bp;->a:Lcom/yandex/metrica/impl/ob/bp;

    if-nez v1, :cond_12

    .line 43
    new-instance v1, Lcom/yandex/metrica/impl/ob/bp;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/bp;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/bp;->a:Lcom/yandex/metrica/impl/ob/bp;

    .line 45
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 47
    :cond_17
    :goto_17
    sget-object p0, Lcom/yandex/metrica/impl/ob/bp;->a:Lcom/yandex/metrica/impl/ob/bp;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x15

    .line 133
    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 134
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_42

    .line 145
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bp;->d:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 148
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bp;->d:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 153
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 157
    :cond_42
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_46

    :catch_46
    return-object p1
.end method


# virtual methods
.method public declared-synchronized a()Lcom/yandex/metrica/impl/ob/bo;
    .registers 3

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->e:Lcom/yandex/metrica/impl/ob/bo;

    if-nez v0, :cond_11

    const-string v0, "metrica_data.db"

    .line 81
    invoke-static {}, Lcom/yandex/metrica/impl/ob/bm;->b()Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bs;)Lcom/yandex/metrica/impl/ob/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->e:Lcom/yandex/metrica/impl/ob/bo;

    .line 83
    :cond_11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->e:Lcom/yandex/metrica/impl/ob/bo;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bo;
    .registers 4

    monitor-enter p0

    .line 1165
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db_metrica_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/bo;

    if-nez v0, :cond_26

    .line 72
    invoke-static {}, Lcom/yandex/metrica/impl/ob/bm;->a()Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bs;)Lcom/yandex/metrica/impl/ob/bo;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 76
    :cond_26
    monitor-exit p0

    return-object v0

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bs;)Lcom/yandex/metrica/impl/ob/bo;
    .registers 5

    .line 129
    new-instance v0, Lcom/yandex/metrica/impl/ob/bo;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/bo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bs;)V

    return-object v0
.end method

.method public declared-synchronized b()Lcom/yandex/metrica/impl/ob/bq;
    .registers 4

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->f:Lcom/yandex/metrica/impl/ob/bq;

    if-nez v0, :cond_12

    .line 99
    new-instance v0, Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->a()Lcom/yandex/metrica/impl/ob/bo;

    move-result-object v1

    const-string v2, "preferences"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Lcom/yandex/metrica/impl/ob/bo;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->f:Lcom/yandex/metrica/impl/ob/bq;

    .line 101
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->f:Lcom/yandex/metrica/impl/ob/bq;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bq;
    .registers 5

    monitor-enter p0

    .line 87
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/r;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bp;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/bq;

    if-nez v1, :cond_1f

    .line 90
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/bp;->a(Lcom/yandex/metrica/impl/ob/r;)Lcom/yandex/metrica/impl/ob/bo;

    move-result-object p1

    .line 91
    new-instance v1, Lcom/yandex/metrica/impl/ob/bq;

    const-string v2, "preferences"

    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Lcom/yandex/metrica/impl/ob/bo;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bp;->c:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 94
    :cond_1f
    monitor-exit p0

    return-object v1

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Lcom/yandex/metrica/impl/ob/br;
    .registers 4

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->i:Lcom/yandex/metrica/impl/ob/br;

    if-nez v0, :cond_12

    .line 106
    new-instance v0, Lcom/yandex/metrica/impl/ob/br;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->a()Lcom/yandex/metrica/impl/ob/bo;

    move-result-object v1

    const-string v2, "permissions"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/br;-><init>(Lcom/yandex/metrica/impl/ob/bo;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->i:Lcom/yandex/metrica/impl/ob/br;

    .line 108
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->i:Lcom/yandex/metrica/impl/ob/br;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lcom/yandex/metrica/impl/ob/bq;
    .registers 4

    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->g:Lcom/yandex/metrica/impl/ob/bq;

    if-nez v0, :cond_12

    .line 113
    new-instance v0, Lcom/yandex/metrica/impl/ob/bq;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bp;->a()Lcom/yandex/metrica/impl/ob/bo;

    move-result-object v1

    const-string v2, "startup"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Lcom/yandex/metrica/impl/ob/bo;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->g:Lcom/yandex/metrica/impl/ob/bq;

    .line 115
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->g:Lcom/yandex/metrica/impl/ob/bq;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lcom/yandex/metrica/impl/ob/bq;
    .registers 4

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->h:Lcom/yandex/metrica/impl/ob/bq;

    if-nez v0, :cond_1b

    const-string v0, "metrica_client_data.db"

    .line 120
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/bp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/yandex/metrica/impl/ob/bw;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bp;->d:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/bw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/yandex/metrica/impl/ob/bq;

    const-string v2, "preferences"

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/bq;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bv;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->h:Lcom/yandex/metrica/impl/ob/bq;

    .line 124
    :cond_1b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bp;->h:Lcom/yandex/metrica/impl/ob/bq;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
