.class public Lcom/yandex/metrica/impl/ob/ef;
.super Lcom/yandex/metrica/impl/ob/dy;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lcom/yandex/metrica/impl/ob/ef;


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/dy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ef;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/dy;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/ob/eb;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/eb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ef;->c:Lcom/yandex/metrica/impl/ob/dy;

    return-void

    .line 42
    :cond_17
    new-instance p1, Lcom/yandex/metrica/impl/ob/ec;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/ec;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ef;->c:Lcom/yandex/metrica/impl/ob/dy;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ef;
    .registers 3

    .line 25
    sget-object v0, Lcom/yandex/metrica/impl/ob/ef;->b:Lcom/yandex/metrica/impl/ob/ef;

    if-nez v0, :cond_1b

    .line 26
    sget-object v0, Lcom/yandex/metrica/impl/ob/ef;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_7
    sget-object v1, Lcom/yandex/metrica/impl/ob/ef;->b:Lcom/yandex/metrica/impl/ob/ef;

    if-nez v1, :cond_16

    .line 28
    new-instance v1, Lcom/yandex/metrica/impl/ob/ef;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/ef;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/ef;->b:Lcom/yandex/metrica/impl/ob/ef;

    .line 30
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 32
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/yandex/metrica/impl/ob/ef;->b:Lcom/yandex/metrica/impl/ob/ef;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ef;->c:Lcom/yandex/metrica/impl/ob/dy;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dy;->a()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 48
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/ea;)V
    .registers 3

    monitor-enter p0

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ef;->c:Lcom/yandex/metrica/impl/ob/dy;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dy;->a(Lcom/yandex/metrica/impl/ob/ea;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 62
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/eh;)V
    .registers 3

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ef;->c:Lcom/yandex/metrica/impl/ob/dy;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/dy;->a(Lcom/yandex/metrica/impl/ob/eh;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 57
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ef;->c:Lcom/yandex/metrica/impl/ob/dy;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dy;->b()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 52
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
