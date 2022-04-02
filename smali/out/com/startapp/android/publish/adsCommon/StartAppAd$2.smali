.class final Lcom/startapp/android/publish/adsCommon/StartAppAd$2;
.super Landroid/content/BroadcastReceiver;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/adsCommon/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/splash/SplashHideListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/startapp/android/publish/ads/splash/SplashHideListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/ads/splash/SplashHideListener;)V
    .registers 3

    .line 678
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$2;->b:Lcom/startapp/android/publish/ads/splash/SplashHideListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 681
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$2;->a:Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/app/Activity;Z)V

    .line 683
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$2;->b:Lcom/startapp/android/publish/ads/splash/SplashHideListener;

    if-eqz p1, :cond_d

    .line 684
    invoke-interface {p1}, Lcom/startapp/android/publish/ads/splash/SplashHideListener;->splashHidden()V

    .line 687
    :cond_d
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd$2;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/startapp/common/b;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
