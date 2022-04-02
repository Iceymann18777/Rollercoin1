.class public Lcom/google/firebase/iid/Metadata;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"


# instance fields
.field private appVersionCode:Ljava/lang/String;

.field private appVersionName:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private gmsVersionCode:I

.field private iidImplementation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/firebase/iid/Metadata;->iidImplementation:I

    .line 3
    iput-object p1, p0, Lcom/google/firebase/iid/Metadata;->context:Landroid/content/Context;

    return-void
.end method

.method public static getDefaultSenderId(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;
    .registers 4

    .line 31
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 34
    :cond_b
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1:"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-object p0

    :cond_1c
    const-string v0, ":"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 38
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_28

    return-object v2

    :cond_28
    const/4 v0, 0x1

    .line 40
    aget-object p0, p0, v0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    return-object v2

    :cond_32
    return-object p0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/Metadata;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p1

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to find package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized populateAppVersionInfo()V
    .registers 3

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/Metadata;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/iid/Metadata;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 67
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/iid/Metadata;->appVersionCode:Ljava/lang/String;

    .line 68
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/iid/Metadata;->appVersionName:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 69
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getAppVersionCode()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/Metadata;->appVersionCode:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 55
    invoke-direct {p0}, Lcom/google/firebase/iid/Metadata;->populateAppVersionInfo()V

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/Metadata;->appVersionCode:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAppVersionName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/Metadata;->appVersionName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 58
    invoke-direct {p0}, Lcom/google/firebase/iid/Metadata;->populateAppVersionInfo()V

    .line 59
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/iid/Metadata;->appVersionName:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGmsVersionCode()I
    .registers 2

    monitor-enter p0

    .line 60
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/Metadata;->gmsVersionCode:I

    if-nez v0, :cond_11

    const-string v0, "com.google.android.gms"

    .line 61
    invoke-direct {p0, v0}, Lcom/google/firebase/iid/Metadata;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 63
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/firebase/iid/Metadata;->gmsVersionCode:I

    .line 64
    :cond_11
    iget v0, p0, Lcom/google/firebase/iid/Metadata;->gmsVersionCode:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIidImplementation()I
    .registers 6

    monitor-enter p0

    .line 6
    :try_start_1
    iget v0, p0, Lcom/google/firebase/iid/Metadata;->iidImplementation:I

    if-eqz v0, :cond_9

    .line 7
    iget v0, p0, Lcom/google/firebase/iid/Metadata;->iidImplementation:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7a

    monitor-exit p0

    return v0

    .line 8
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/firebase/iid/Metadata;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.permission.SEND"

    const-string v2, "com.google.android.gms"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_24

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Google Play services missing or without correct permission."

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_7a

    .line 12
    monitor-exit p0

    return v3

    .line 13
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_47

    .line 14
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 15
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_47

    .line 18
    iput v2, p0, Lcom/google/firebase/iid/Metadata;->iidImplementation:I
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_7a

    .line 19
    monitor-exit p0

    return v2

    .line 20
    :cond_47
    :try_start_47
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.iid.TOKEN_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    .line 21
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_64

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_64

    .line 24
    iput v1, p0, Lcom/google/firebase/iid/Metadata;->iidImplementation:I
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_7a

    .line 25
    monitor-exit p0

    return v1

    :cond_64
    :try_start_64
    const-string v0, "FirebaseInstanceId"

    const-string v3, "Failed to resolve IID implementation package, falling back"

    .line 26
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 28
    iput v1, p0, Lcom/google/firebase/iid/Metadata;->iidImplementation:I

    goto :goto_76

    .line 29
    :cond_74
    iput v2, p0, Lcom/google/firebase/iid/Metadata;->iidImplementation:I

    .line 30
    :goto_76
    iget v0, p0, Lcom/google/firebase/iid/Metadata;->iidImplementation:I
    :try_end_78
    .catchall {:try_start_64 .. :try_end_78} :catchall_7a

    monitor-exit p0

    return v0

    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isGmscorePresent()Z
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/iid/Metadata;->getIidImplementation()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
