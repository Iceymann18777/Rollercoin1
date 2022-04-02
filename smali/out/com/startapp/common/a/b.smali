.class public final Lcom/startapp/common/a/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/common/a/b$d;,
        Lcom/startapp/common/a/b$b;,
        Lcom/startapp/common/a/b$a;,
        Lcom/startapp/common/a/b$c;,
        Lcom/startapp/common/a/b$e;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/startapp/common/a/b$c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/startapp/common/a/b;
    .registers 1

    .line 38
    invoke-static {}, Lcom/startapp/common/a/b$e;->a()Lcom/startapp/common/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 1

    .line 26
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/startapp/common/a/b$a;
    .registers 2

    .line 138
    invoke-static {}, Lcom/startapp/common/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    invoke-static {p0}, Lcom/startapp/common/a/b;->c(Landroid/content/Context;)Lcom/startapp/common/a/b$a;

    move-result-object p0

    return-object p0

    .line 142
    :cond_b
    invoke-static {p0}, Lcom/startapp/common/a/b;->d(Landroid/content/Context;)Lcom/startapp/common/a/b$a;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .registers 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 191
    invoke-static {v0}, Lcom/startapp/common/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Lcom/startapp/common/a/b$a;
    .registers 7

    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 149
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 150
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getId"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isLimitAdTrackingEnabled"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 156
    new-instance v1, Lcom/startapp/common/a/b$a;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v2, "APP"

    invoke-direct {v1, v0, p0, v2}, Lcom/startapp/common/a/b$a;-><init>(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    return-object v1

    :catchall_55
    move-exception p0

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static d(Landroid/content/Context;)Lcom/startapp/common/a/b$a;
    .registers 6

    .line 163
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_66

    .line 167
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_64

    .line 173
    new-instance v0, Lcom/startapp/common/a/b$b;

    invoke-direct {v0}, Lcom/startapp/common/a/b$b;-><init>()V

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 178
    :try_start_30
    new-instance v1, Lcom/startapp/common/a/b$d;

    invoke-virtual {v0}, Lcom/startapp/common/a/b$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/startapp/common/a/b$d;-><init>(Landroid/os/IBinder;)V

    .line 179
    new-instance v2, Lcom/startapp/common/a/b$a;

    invoke-virtual {v1}, Lcom/startapp/common/a/b$d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/startapp/common/a/b$d;->a(Z)Z

    move-result v1

    const-string v3, "DEVICE"

    invoke-direct {v2, v4, v1, v3}, Lcom/startapp/common/a/b$a;-><init>(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_48} :catch_52
    .catchall {:try_start_30 .. :try_end_48} :catchall_50

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    :catchall_50
    move-exception v1

    goto :goto_54

    :catch_52
    move-exception v1

    .line 182
    :try_start_53
    throw v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_50

    .line 184
    :goto_54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    .line 187
    :cond_5c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_64
    move-exception p0

    .line 170
    throw p0

    .line 164
    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lcom/startapp/common/a/b$c;
    .registers 4

    monitor-enter p0

    .line 43
    :try_start_1
    sget-object v0, Lcom/startapp/common/a/b;->a:Lcom/startapp/common/a/b$c;

    if-nez v0, :cond_28

    .line 44
    new-instance v0, Lcom/startapp/common/a/b$c;

    invoke-direct {v0}, Lcom/startapp/common/a/b$c;-><init>()V

    sput-object v0, Lcom/startapp/common/a/b;->a:Lcom/startapp/common/a/b$c;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_36

    .line 46
    :try_start_c
    invoke-static {p1}, Lcom/startapp/common/a/b;->b(Landroid/content/Context;)Lcom/startapp/common/a/b$a;

    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/startapp/common/a/b;->a(Lcom/startapp/common/a/b$a;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14
    .catchall {:try_start_c .. :try_end_13} :catchall_36

    goto :goto_32

    :catch_14
    move-exception p1

    .line 49
    :try_start_15
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    :goto_1a
    array-length v1, p1

    if-ge v0, v1, :cond_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 52
    :cond_20
    sget-object p1, Lcom/startapp/common/a/b;->a:Lcom/startapp/common/a/b$c;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/startapp/common/a/b$c;->a(Ljava/lang/String;)V

    goto :goto_32

    .line 55
    :cond_28
    sget-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/common/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/startapp/common/a/b$1;-><init>(Lcom/startapp/common/a/b;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    .line 69
    :goto_32
    sget-object p1, Lcom/startapp/common/a/b;->a:Lcom/startapp/common/a/b$c;
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object p1

    :catchall_36
    move-exception p1

    monitor-exit p0

    goto :goto_3a

    :goto_39
    throw p1

    :goto_3a
    goto :goto_39
.end method

.method protected declared-synchronized a(Lcom/startapp/common/a/b$a;)V
    .registers 4

    monitor-enter p0

    .line 73
    :try_start_1
    sget-object v0, Lcom/startapp/common/a/b;->a:Lcom/startapp/common/a/b$c;

    invoke-virtual {p1}, Lcom/startapp/common/a/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/common/a/b$c;->a(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/startapp/common/a/b;->a:Lcom/startapp/common/a/b$c;

    invoke-virtual {p1}, Lcom/startapp/common/a/b$a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/common/a/b$c;->a(Z)V

    .line 75
    sget-object v0, Lcom/startapp/common/a/b;->a:Lcom/startapp/common/a/b$c;

    invoke-virtual {p1}, Lcom/startapp/common/a/b$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapp/common/a/b$c;->b(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 76
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
