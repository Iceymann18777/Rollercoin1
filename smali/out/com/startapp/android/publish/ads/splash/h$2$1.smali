.class Lcom/startapp/android/publish/ads/splash/h$2$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/splash/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/splash/h$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/splash/h$2;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/splash/h$2;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$2$1;->a:Lcom/startapp/android/publish/ads/splash/h$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$2$1;->a:Lcom/startapp/android/publish/ads/splash/h$2;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h$2;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-boolean v0, v0, Lcom/startapp/android/publish/ads/splash/h;->e:Z

    if-nez v0, :cond_36

    .line 239
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$2$1;->a:Lcom/startapp/android/publish/ads/splash/h$2;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h$2;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->f:Lcom/startapp/android/publish/ads/splash/h$a;

    if-eqz v0, :cond_36

    const/4 v0, 0x4

    const-string v1, "Splash"

    const-string v2, "Displaying Splash ad"

    .line 240
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$2$1;->a:Lcom/startapp/android/publish/ads/splash/h$2;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h$2;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->f:Lcom/startapp/android/publish/ads/splash/h$a;

    new-instance v1, Lcom/startapp/android/publish/ads/splash/h$2$1$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/splash/h$2$1$1;-><init>(Lcom/startapp/android/publish/ads/splash/h$2$1;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/splash/h$a;->showAd(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    .line 265
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$2$1;->a:Lcom/startapp/android/publish/ads/splash/h$2;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h$2;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/splash/h;->f()V

    .line 266
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$2$1;->a:Lcom/startapp/android/publish/ads/splash/h$2;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h$2;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_36
    return-void
.end method
