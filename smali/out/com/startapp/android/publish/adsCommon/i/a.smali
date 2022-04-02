.class public Lcom/startapp/android/publish/adsCommon/i/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/i/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/CountDownLatch;

.field private static b:Lcom/startapp/android/publish/adsCommon/i/b;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/startapp/android/publish/adsCommon/i/b;
    .registers 10

    const-string v0, "com.android.vending"

    const-string v1, "PlayReferrer"

    .line 35
    sget-object v2, Lcom/startapp/android/publish/adsCommon/i/a;->b:Lcom/startapp/android/publish/adsCommon/i/b;

    if-nez v2, :cond_81

    const/4 v2, 0x5

    .line 37
    :try_start_9
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Lcom/startapp/android/publish/adsCommon/i/a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 38
    new-instance v3, Lcom/startapp/android/publish/adsCommon/i/a$a;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/startapp/android/publish/adsCommon/i/a$a;-><init>(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/i/a$1;)V

    .line 40
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v6, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_81

    .line 44
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_81

    .line 45
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 46
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_81

    .line 47
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 48
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    if-eqz v6, :cond_81

    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/i/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_66
    .catchall {:try_start_9 .. :try_end_66} :catchall_7b

    if-eqz v0, :cond_75

    .line 54
    :try_start_68
    sget-object v0, Lcom/startapp/android/publish/adsCommon/i/a;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_71} :catch_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_7b

    .line 57
    :catch_71
    :try_start_71
    invoke-virtual {p0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_81

    :cond_75
    const-string p0, "failed to connect to referrer service"

    .line 59
    invoke-static {v1, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7b

    goto :goto_81

    :catchall_7b
    move-exception p0

    const-string v0, "getReferrerDetails"

    .line 65
    invoke-static {v1, v2, v0, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :cond_81
    :goto_81
    sget-object p0, Lcom/startapp/android/publish/adsCommon/i/a;->b:Lcom/startapp/android/publish/adsCommon/i/b;

    return-object p0
.end method

.method static synthetic a(Lcom/startapp/android/publish/adsCommon/i/b;)Lcom/startapp/android/publish/adsCommon/i/b;
    .registers 1

    .line 22
    sput-object p0, Lcom/startapp/android/publish/adsCommon/i/a;->b:Lcom/startapp/android/publish/adsCommon/i/b;

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 22
    sget-object v0, Lcom/startapp/android/publish/adsCommon/i/a;->a:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 4

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "com.android.vending"

    const/16 v2, 0x80

    .line 75
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 76
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_15

    const v1, 0x4d17ab4

    if-lt p0, v1, :cond_15

    const/4 v0, 0x1

    :catch_15
    :cond_15
    return v0
.end method
