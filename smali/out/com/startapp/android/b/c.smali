.class public Lcom/startapp/android/b/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Lcom/startapp/android/b/a;


# direct methods
.method private static a()Z
    .registers 2

    .line 22
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .line 14
    sget-object v0, Lcom/startapp/android/b/c;->a:Lcom/startapp/android/b/a;

    if-nez v0, :cond_f

    .line 15
    new-instance v0, Lcom/startapp/android/b/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/startapp/android/b/c;->a:Lcom/startapp/android/b/a;

    .line 18
    :cond_f
    sget-object v0, Lcom/startapp/android/b/c;->a:Lcom/startapp/android/b/a;

    invoke-virtual {v0}, Lcom/startapp/android/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/startapp/android/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/startapp/android/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/startapp/android/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/startapp/android/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/startapp/android/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {p0}, Lcom/startapp/android/b/c;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p0, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p0, 0x1

    :goto_3f
    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 76
    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    return v0

    :catchall_9
    const/4 p0, 0x0

    return p0
.end method

.method private static b()Z
    .registers 10

    const-string v0, "/system/app/Superuser.apk"

    const-string v1, "/sbin/su"

    const-string v2, "/system/bin/su"

    const-string v3, "/system/xbin/su"

    const-string v4, "/data/local/xbin/su"

    const-string v5, "/data/local/bin/su"

    const-string v6, "/system/sd/xbin/su"

    const-string v7, "/system/bin/failsafe/su"

    const-string v8, "/data/local/su"

    const-string v9, "/su/bin/su"

    .line 27
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1a
    const/16 v3, 0xa

    if-ge v2, v3, :cond_30

    .line 29
    aget-object v3, v0, v2

    .line 30
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v0, 0x1

    return v0

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_30
    return v1
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "com.noshufou.android.su"

    const-string v1, "com.thirdparty.superuser"

    const-string v2, "eu.chainfire.supersu"

    const-string v3, "com.koushikdutta.superuser"

    const-string v4, "com.zachspong.temprootremovejb"

    const-string v5, "com.ramdroid.appquarantine"

    .line 62
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x6

    if-ge v2, v3, :cond_22

    .line 65
    aget-object v3, v0, v2

    .line 66
    invoke-static {p0, v3}, Lcom/startapp/android/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_22
    return v1
.end method

.method private static c()Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "/system/xbin/which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_2d

    if-eqz v2, :cond_27

    const/4 v0, 0x1

    :cond_27
    if-eqz v1, :cond_2c

    .line 47
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_2c
    return v0

    :catchall_2d
    nop

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_33
    return v0
.end method

.method private static d()Z
    .registers 2

    .line 54
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return v0

    :catchall_c
    const/4 v0, 0x0

    return v0
.end method
