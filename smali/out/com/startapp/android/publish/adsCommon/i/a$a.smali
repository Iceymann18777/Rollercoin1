.class final Lcom/startapp/android/publish/adsCommon/i/a$a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/adsCommon/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/i/a$a;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/i/a$1;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/i/a$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 92
    invoke-static {p2}, Lcom/a/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/a/a/a/a/a;

    move-result-object p1

    .line 94
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/i/a$a;->a:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :try_start_10
    new-instance v0, Lcom/startapp/android/publish/adsCommon/i/b;

    invoke-interface {p1, p2}, Lcom/a/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/adsCommon/i/b;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/i/a;->a(Lcom/startapp/android/publish/adsCommon/i/b;)Lcom/startapp/android/publish/adsCommon/i/b;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    move-exception p1

    const/4 p2, 0x5

    const-string v0, "PlayReferrer"

    const-string v1, "InstallReferrerServiceConnection.onServiceConnected"

    .line 99
    invoke-static {v0, p2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :goto_26
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/i/a;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string p1, "PlayReferrer"

    const/4 v0, 0x5

    const-string v1, "InstallReferrerServiceConnection.onServiceDisconnected"

    .line 106
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/i/a;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
