.class Lcom/startapp/android/publish/adsCommon/m$5$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/m$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/m$5;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/m$5;)V
    .registers 2

    .line 988
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/m$5$1;->a:Lcom/startapp/android/publish/adsCommon/m$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 991
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/m$5$1;->a:Lcom/startapp/android/publish/adsCommon/m$5;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/m$5;->b:Lcom/startapp/android/publish/adsCommon/m;

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/m$5$1;->a:Lcom/startapp/android/publish/adsCommon/m$5;

    iget-object p2, p2, Lcom/startapp/android/publish/adsCommon/m$5;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/m;->a(Lcom/startapp/android/publish/adsCommon/m;Landroid/content/Context;Z)V

    .line 992
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/m$5$1;->a:Lcom/startapp/android/publish/adsCommon/m$5;

    iget-object p1, p1, Lcom/startapp/android/publish/adsCommon/m$5;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/m$5$1;->a:Lcom/startapp/android/publish/adsCommon/m$5;

    iget-object p2, p2, Lcom/startapp/android/publish/adsCommon/m$5;->b:Lcom/startapp/android/publish/adsCommon/m;

    invoke-static {p2}, Lcom/startapp/android/publish/adsCommon/m;->b(Lcom/startapp/android/publish/adsCommon/m;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
