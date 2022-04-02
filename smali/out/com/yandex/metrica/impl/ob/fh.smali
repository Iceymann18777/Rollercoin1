.class Lcom/yandex/metrica/impl/ob/fh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/fb;

.field private c:Lcom/yandex/metrica/impl/ob/fb;

.field private d:Lcom/yandex/metrica/impl/ob/fs;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/metrica/impl/ob/fi;

.field private g:Ljava/lang/String;

.field private h:Lcom/yandex/metrica/impl/ob/fj;

.field private i:J

.field private final j:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/yandex/metrica/impl/ob/fh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/fh;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fe;Lcom/yandex/metrica/impl/ob/ey;Lcom/yandex/metrica/impl/ob/fs;Lcom/yandex/metrica/impl/ob/fd;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/ey;->c()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->b:Lcom/yandex/metrica/impl/ob/fb;

    .line 50
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/ey;->a()Lcom/yandex/metrica/impl/ob/fb;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fh;->c:Lcom/yandex/metrica/impl/ob/fb;

    .line 51
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/fh;->d:Lcom/yandex/metrica/impl/ob/fs;

    .line 52
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/fd;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fh;->g:Ljava/lang/String;

    .line 54
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fh;->j:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1179
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fh;->e:Ljava/util/Map;

    .line 1180
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fe;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "app_id"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/fh;->e:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "android_"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "app_platform"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/fh;->e:Ljava/util/Map;

    sget-object p3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "manufacturer"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/fh;->e:Ljava/util/Map;

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "model"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/fh;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fe;->a()Ljava/lang/String;

    move-result-object p1

    const-string p3, "app_version"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/fd;->a()J

    move-result-wide p1

    .line 1192
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/fh;->i:J

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/fh;Lcom/yandex/metrica/impl/ob/fi;)Lcom/yandex/metrica/impl/ob/fi;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fh;->f:Lcom/yandex/metrica/impl/ob/fi;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/fh;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fh;->h()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lcom/yandex/metrica/impl/ob/fb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fb;->a()V

    const/4 v0, 0x0

    .line 153
    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 154
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/fb;->a(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/fb;J)Z
    .registers 8

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fb;->c()J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v4, v2, p1

    if-gez v4, :cond_19

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fb;->c()J

    move-result-wide p0

    cmp-long p2, v0, p0

    if-gez p2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/fh;Lorg/json/JSONObject;)Z
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/fh;->a(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 5

    :try_start_0
    const-string v0, "pins-sha256"

    .line 138
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fh;->b:Lcom/yandex/metrica/impl/ob/fb;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/fh;->a(Lorg/json/JSONArray;Lcom/yandex/metrica/impl/ob/fb;)V

    const-string v0, "blacklist"

    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->c:Lcom/yandex/metrica/impl/ob/fb;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/fh;->a(Lorg/json/JSONArray;Lcom/yandex/metrica/impl/ob/fb;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_1f

    .line 147
    sget-object p1, Lcom/yandex/metrica/impl/ob/fh;->a:Ljava/lang/String;

    const-string v0, "pins have been updated"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :catch_1f
    move-exception p1

    .line 144
    sget-object v0, Lcom/yandex/metrica/impl/ob/fh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t update pins: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/ob/fh;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()Lorg/json/JSONObject;
    .registers 5

    .line 125
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fv;->a()Lcom/yandex/metrica/impl/ob/fv;

    move-result-object v0

    .line 126
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fh;->i()Lcom/yandex/metrica/impl/ob/fi;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fh;->d:Lcom/yandex/metrica/impl/ob/fs;

    invoke-virtual {v2, v1, v0, v0}, Lcom/yandex/metrica/impl/ob/fs;->a(Lcom/yandex/metrica/impl/ob/fu;Lcom/yandex/metrica/impl/ob/fu$b;Lcom/yandex/metrica/impl/ob/fu$a;)V

    const-wide/16 v1, 0x7530

    .line 129
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/fv;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_17} :catch_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_17} :catch_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1d

    :catch_1c
    move-exception v0

    .line 131
    :goto_1d
    sget-object v1, Lcom/yandex/metrica/impl/ob/fh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t update pins on error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private h()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->b:Lcom/yandex/metrica/impl/ob/fb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fb;->d()V

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->c:Lcom/yandex/metrica/impl/ob/fb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fb;->d()V

    return-void
.end method

.method private i()Lcom/yandex/metrica/impl/ob/fi;
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->h:Lcom/yandex/metrica/impl/ob/fj;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/fj;->a()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "uuid"

    if-eqz v1, :cond_14

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 173
    :cond_14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fh;->e:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :goto_19
    new-instance v0, Lcom/yandex/metrica/impl/ob/fi;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fh;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fh;->e:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/fi;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method private j()Z
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->d:Lcom/yandex/metrica/impl/ob/fs;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method a()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->j:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ob/fj;)V
    .registers 2

    monitor-enter p0

    .line 104
    :try_start_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fh;->h:Lcom/yandex/metrica/impl/ob/fj;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 105
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()Z
    .registers 3

    monitor-enter p0

    .line 65
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fh;->j()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 66
    sget-object v0, Lcom/yandex/metrica/impl/ob/fh;->a:Ljava/lang/String;

    const-string v1, "starting pins update on error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fh;->g()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 69
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/fh;->a(Lorg/json/JSONObject;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    monitor-exit p0

    return v0

    .line 71
    :cond_1a
    :try_start_1a
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fh;->h()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_20

    :cond_1d
    const/4 v0, 0x0

    .line 74
    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .registers 5

    monitor-enter p0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fh;->d()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fh;->j()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 79
    sget-object v0, Lcom/yandex/metrica/impl/ob/fh;->a:Ljava/lang/String;

    const-string v1, "starting pins update on schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fh;->i()Lcom/yandex/metrica/impl/ob/fi;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->f:Lcom/yandex/metrica/impl/ob/fi;

    .line 81
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fh;->d:Lcom/yandex/metrica/impl/ob/fs;

    new-instance v2, Lcom/yandex/metrica/impl/ob/fh$1;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/fh$1;-><init>(Lcom/yandex/metrica/impl/ob/fh;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/fh$2;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/fh$2;-><init>(Lcom/yandex/metrica/impl/ob/fh;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/fs;->a(Lcom/yandex/metrica/impl/ob/fu;Lcom/yandex/metrica/impl/ob/fu$b;Lcom/yandex/metrica/impl/ob/fu$a;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 96
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Z
    .registers 4

    .line 114
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fh;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->b:Lcom/yandex/metrica/impl/ob/fb;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/fh;->i:J

    .line 115
    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/fh;->a(Lcom/yandex/metrica/impl/ob/fb;J)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->c:Lcom/yandex/metrica/impl/ob/fb;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/fh;->i:J

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/fh;->a(Lcom/yandex/metrica/impl/ob/fb;J)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fh;->f:Lcom/yandex/metrica/impl/ob/fi;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
