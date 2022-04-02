.class Lcom/startapp/android/publish/ads/splash/h$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/ads/splash/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/splash/h;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/splash/h;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$3;->a:Lcom/startapp/android/publish/ads/splash/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 297
    iget-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$3;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/splash/h;->f:Lcom/startapp/android/publish/ads/splash/h$a;

    if-eqz p1, :cond_d

    .line 298
    iget-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$3;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/splash/h;->b:Lcom/startapp/android/publish/ads/splash/c;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/splash/c;->b()V

    :cond_d
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 4

    const-string p1, "Splash"

    const/4 v0, 0x4

    const-string v1, "Splash ad received"

    .line 286
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/startapp/android/publish/ads/splash/h$3;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object p1, p1, Lcom/startapp/android/publish/ads/splash/h;->b:Lcom/startapp/android/publish/ads/splash/c;

    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/h$3;->a:Lcom/startapp/android/publish/ads/splash/h;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/splash/h;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/ads/splash/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
