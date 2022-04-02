.class Lcom/yandex/metrica/impl/NativeCrashesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/NativeCrashesHelper$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/NativeCrashesHelper;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 2151
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_26

    .line 2154
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 2159
    :cond_26
    new-instance p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$1;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper$1;-><init>()V

    .line 2167
    invoke-virtual {v0, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    return-object p0

    :cond_32
    new-array p0, v1, [Ljava/lang/String;

    return-object p0
.end method

.method private b()Z
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Z)Z
    .registers 1

    .line 100
    :try_start_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->logsEnabled(Z)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    const/4 p0, 0x1

    return p0

    :catchall_5
    const/4 p0, 0x0

    return p0
.end method

.method private c()Z
    .registers 2

    .line 95
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static native cancelSetUpNativeUncaughtExceptionHandler()V
.end method

.method private static native logsEnabled(Z)V
.end method

.method private static native setUpNativeUncaughtExceptionHandler(Ljava/lang/String;)V
.end method


# virtual methods
.method declared-synchronized a(Lcom/yandex/metrica/impl/ay;Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    monitor-enter p0

    .line 52
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2109
    new-instance v0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;

    invoke-direct {v0, p1, p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;-><init>(Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/NativeCrashesHelper;)V

    .line 53
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 56
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_46

    .line 2059
    :try_start_4
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->d:Z

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 2060
    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b(Z)Z

    .line 2061
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/YandexMetricaNativeCrashes"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    :cond_2e
    const/4 p1, 0x1

    .line 2063
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->d:Z

    .line 1069
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->b()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1070
    iget-object v1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->setUpNativeUncaughtExceptionHandler(Ljava/lang/String;)V

    .line 1071
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_40

    .line 1076
    :cond_3e
    monitor-exit p0

    return-void

    .line 1074
    :catchall_40
    :try_start_40
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_44

    .line 42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    goto :goto_53

    .line 2085
    :cond_46
    :try_start_46
    invoke-direct {p0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 2086
    invoke-static {}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->cancelSetUpNativeUncaughtExceptionHandler()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_4f

    .line 2091
    :catchall_4f
    :cond_4f
    :try_start_4f
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper;->c:Z
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_44

    .line 46
    monitor-exit p0

    return-void

    :goto_53
    monitor-exit p0

    throw p1
.end method

.method a()Z
    .registers 2

    :try_start_0
    const-string v0, "YandexMetricaNativeModule"

    .line 174
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_7

    const/4 v0, 0x1

    return v0

    :catchall_7
    const/4 v0, 0x0

    return v0
.end method
