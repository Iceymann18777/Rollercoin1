.class Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.super Lcom/android/installreferrer/api/InstallReferrerClient;
.source "InstallReferrerClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;
    }
.end annotation


# instance fields
.field private clientState:I

.field private final mApplicationContext:Landroid/content/Context;

.field private service:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->clientState:I

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$102(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;)Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;
    .registers 2

    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->service:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I
    .registers 2

    iput p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->clientState:I

    return p1
.end method

.method private isPlayStoreCompatible()Z
    .registers 5

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_7
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_18

    const v2, 0x4d17ab4

    if-lt v0, v2, :cond_18

    const/4 v0, 0x1

    return v0

    :catch_18
    :cond_18
    return v1
.end method


# virtual methods
.method public getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_16
    new-instance v1, Lcom/android/installreferrer/api/ReferrerDetails;

    iget-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->service:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    .line 8
    invoke-interface {v2, v0}, Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/installreferrer/api/ReferrerDetails;-><init>(Landroid/os/Bundle;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    return-object v1

    :catch_22
    move-exception v0

    const-string v1, "InstallReferrerClient"

    const-string v2, "RemoteException getting install referrer information"

    .line 9
    invoke-static {v1, v2}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->clientState:I

    .line 10
    throw v0

    .line 4
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not connected. Please start a connection before using the service."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReady()Z
    .registers 3

    iget v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->clientState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->service:Lcom/google/android/finsky/externalreferrer/IGetInstallReferrerService;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    .registers 10

    .line 14
    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InstallReferrerClient"

    if-eqz v0, :cond_12

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 15
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, v1}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    :cond_12
    iget v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->clientState:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_21

    const-string v0, "Client is already in the process of connecting to the service."

    .line 17
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1, v3}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    :cond_21
    if-ne v0, v3, :cond_2c

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 19
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1, v3}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    :cond_2c
    const-string v0, "Starting install referrer service setup."

    .line 21
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 22
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.vending"

    const-string v6, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 23
    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x2

    if-eqz v3, :cond_a8

    .line 25
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a8

    .line 26
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 27
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_a8

    .line 30
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 31
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 32
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    if-eqz v3, :cond_9d

    .line 33
    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->isPlayStoreCompatible()Z

    move-result v3

    if-eqz v3, :cond_9d

    new-instance v3, Landroid/content/Intent;

    .line 36
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;

    const/4 v5, 0x0

    .line 37
    invoke-direct {v0, p0, p1, v5}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$InstallReferrerServiceConnection;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/InstallReferrerStateListener;Lcom/android/installreferrer/api/InstallReferrerClientImpl$1;)V

    iput-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->serviceConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->mApplicationContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v5, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_92

    const-string p1, "Service was bonded successfully."

    .line 39
    invoke-static {v2, p1}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_92
    const-string v0, "Connection to service is blocked."

    .line 40
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->clientState:I

    .line 41
    invoke-interface {p1, v4}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    :cond_9d
    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required."

    .line 34
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->clientState:I

    .line 35
    invoke-interface {p1, v6}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void

    :cond_a8
    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->clientState:I

    const-string v0, "Install Referrer service unavailable on device."

    .line 28
    invoke-static {v2, v0}, Lcom/android/installreferrer/commons/InstallReferrerCommons;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1, v6}, Lcom/android/installreferrer/api/InstallReferrerStateListener;->onInstallReferrerSetupFinished(I)V

    return-void
.end method
