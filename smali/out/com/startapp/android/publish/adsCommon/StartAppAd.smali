.class public Lcom/startapp/android/publish/adsCommon/StartAppAd;
.super Lcom/startapp/android/publish/adsCommon/Ad;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StartAppAd"

.field private static final serialVersionUID:J = 0x1L

.field private static testMode:Z = false


# instance fields
.field ad:Lcom/startapp/android/publish/adsCommon/g;

.field private adKey:Lcom/startapp/android/publish/cache/c;

.field private adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

.field private adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

.field callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

.field private callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field videoListener:Lcom/startapp/android/publish/adsCommon/VideoListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/Ad;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    .line 47
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    .line 53
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->ad:Lcom/startapp/android/publish/adsCommon/g;

    .line 68
    sget-object p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    .line 70
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 73
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->videoListener:Lcom/startapp/android/publish/adsCommon/VideoListener;

    .line 76
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    .line 82
    new-instance p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;

    invoke-direct {p1, p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd$1;-><init>(Lcom/startapp/android/publish/adsCommon/StartAppAd;)V

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static disableAutoInterstitial()V
    .registers 1

    .line 598
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/f;->a()Lcom/startapp/android/publish/adsCommon/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/f;->c()V

    return-void
.end method

.method public static disableSplash()V
    .registers 1

    .line 584
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/m;->j()V

    return-void
.end method

.method public static enableAutoInterstitial()V
    .registers 1

    .line 594
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/f;->a()Lcom/startapp/android/publish/adsCommon/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/f;->b()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 139
    invoke-static {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isAppOnForeground()Z
    .registers 3

    const/4 v0, 0x1

    .line 574
    :try_start_1
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->N()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->e(Landroid/content/Context;)Z

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_15

    if-eqz v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :catch_15
    :cond_15
    :goto_15
    return v0
.end method

.method public static onBackPressed(Landroid/content/Context;)V
    .registers 2

    .line 751
    new-instance v0, Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->onBackPressed()V

    return-void
.end method

.method private registerBroadcastReceiver(Ljava/lang/String;)V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/common/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setAdMode(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    return-void
.end method

.method private setAdPrefs(Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    return-void
.end method

.method public static setAutoInterstitialPreferences(Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;)V
    .registers 2

    .line 602
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/f;->a()Lcom/startapp/android/publish/adsCommon/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/startapp/android/publish/adsCommon/f;->a(Lcom/startapp/android/publish/adsCommon/AutoInterstitialPreferences;)V

    return-void
.end method

.method public static showAd(Landroid/content/Context;)Z
    .registers 5

    .line 743
    :try_start_0
    new-instance v0, Lcom/startapp/android/publish/adsCommon/StartAppAd;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd()Z

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception v0

    .line 745
    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StartAppAd.showAd(one line integration) - unexpected Error occurd"

    const-string v3, ""

    invoke-static {p0, v1, v2, v0, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private showPreparedVideoFallbackAd(Ljava/lang/String;)Z
    .registers 7

    .line 307
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->canShowAd()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->h()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_65

    .line 314
    :cond_16
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    if-nez v0, :cond_1f

    .line 315
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    .line 320
    :cond_1f
    sget-object v2, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->NON_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/common/model/AdPreferences;->setType(Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V

    .line 323
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->getPlacement()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v2

    .line 324
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v3

    new-instance v4, Lcom/startapp/android/publish/cache/c;

    invoke-direct {v4, v2, v0}, Lcom/startapp/android/publish/cache/c;-><init>(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    invoke-virtual {v3, v4}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 326
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->isReady()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 327
    invoke-virtual {p0, p1, v2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->shouldDisplayAd(Ljava/lang/String;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Lcom/startapp/android/publish/adsCommon/a/f;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v1, 0x1

    .line 329
    invoke-interface {v0, v1}, Lcom/startapp/android/publish/adsCommon/g;->setVideoCancelCallBack(Z)V

    .line 330
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 331
    invoke-static {}, Lcom/startapp/common/a/i;->a()Lcom/startapp/common/a/i;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    const-string v3, "display Video fallback"

    invoke-virtual {v1, v2, v3}, Lcom/startapp/common/a/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    :cond_60
    invoke-interface {v0, p1}, Lcom/startapp/android/publish/adsCommon/g;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_65
    :goto_65
    return v1
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 606
    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;)V

    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;)V
    .registers 4

    .line 611
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 5

    const/4 v0, 0x0

    .line 623
    invoke-static {p0, p1, p2, p3, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/splash/SplashHideListener;)V

    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/splash/SplashHideListener;)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 632
    invoke-static/range {v0 .. v5}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/splash/SplashHideListener;Z)V

    return-void
.end method

.method static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/splash/SplashHideListener;Z)V
    .registers 8

    if-nez p1, :cond_97

    .line 643
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/metaData/MetaData;->canShowAd()Z

    move-result p1

    if-eqz p1, :cond_97

    .line 645
    :try_start_c
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object p1

    .line 649
    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/m;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    if-eqz p5, :cond_1c

    .line 650
    invoke-virtual {p1, v1}, Lcom/startapp/android/publish/adsCommon/m;->d(Z)V

    .line 652
    :cond_1c
    invoke-virtual {p1, p5}, Lcom/startapp/android/publish/adsCommon/m;->c(Z)V

    if-nez p5, :cond_2f

    if-nez p3, :cond_28

    .line 655
    new-instance p3, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {p3}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    .line 657
    :cond_28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/startapp/android/publish/common/model/AdPreferences;->setAs(Ljava/lang/Boolean;)Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 662
    :cond_2f
    invoke-virtual {p2, p0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->setDefaults(Landroid/content/Context;)V

    .line 664
    invoke-static {p0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/app/Activity;Z)V

    .line 666
    const-class p1, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;

    const-class p5, Lcom/startapp/android/publish/adsCommon/activities/AppWallActivity;

    invoke-static {p0, p1, p5}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 667
    new-instance p5, Landroid/content/Intent;

    invoke-direct {p5, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "SplashConfig"

    .line 668
    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "AdPreference"

    .line 669
    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "testMode"

    .line 670
    sget-boolean p2, Lcom/startapp/android/publish/adsCommon/StartAppAd;->testMode:Z

    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "fullscreen"

    .line 671
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/app/Activity;)Z

    move-result p2

    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "placement"

    .line 672
    sget-object p2, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {p2}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->getIndex()I

    move-result p2

    invoke-virtual {p5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p1, 0x44008000    # 514.0f

    .line 673
    invoke-virtual {p5, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    invoke-virtual {p0, p5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 678
    new-instance p1, Lcom/startapp/android/publish/adsCommon/StartAppAd$2;

    invoke-direct {p1, p0, p4}, Lcom/startapp/android/publish/adsCommon/StartAppAd$2;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/ads/splash/SplashHideListener;)V

    .line 691
    invoke-static {p0}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object p2

    new-instance p3, Landroid/content/IntentFilter;

    const-string p5, "com.startapp.android.splashHidden"

    invoke-direct {p3, p5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Lcom/startapp/common/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_83} :catch_84

    goto :goto_97

    :catch_84
    move-exception p1

    if-eqz p4, :cond_97

    .line 694
    invoke-interface {p4}, Lcom/startapp/android/publish/ads/splash/SplashHideListener;->splashHidden()V

    .line 695
    sget-object p2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "StartAppAd.showSplash - unexpected Error occurd"

    const-string p4, ""

    invoke-static {p0, p2, p3, p1, p4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-void
.end method

.method public static showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    .line 617
    new-instance v0, Lcom/startapp/android/publish/ads/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/splash/SplashConfig;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showSplash(Landroid/app/Activity;Landroid/os/Bundle;Lcom/startapp/android/publish/ads/splash/SplashConfig;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_f

    .line 551
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callbackBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/startapp/common/b;->a(Landroid/content/BroadcastReceiver;)V

    .line 554
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.CloseAdActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method protected getAdHtml()Ljava/lang/String;
    .registers 3

    .line 356
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 357
    instance-of v1, v0, Lcom/startapp/android/publish/adsCommon/e;

    if-eqz v1, :cond_17

    .line 358
    check-cast v0, Lcom/startapp/android/publish/adsCommon/e;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/e;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method protected getLauncherName()Ljava/lang/String;
    .registers 3

    .line 712
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 714
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 717
    :cond_11
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlacement()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
    .registers 4

    .line 346
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/Ad;->getPlacement()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v0

    if-nez v0, :cond_26

    .line 347
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 348
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/Ad;->getPlacement()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v0

    :cond_26
    return-object v0
.end method

.method public getState()Lcom/startapp/android/publish/adsCommon/Ad$AdState;
    .registers 3

    .line 722
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 724
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->getState()Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    move-result-object v0

    return-object v0

    .line 726
    :cond_11
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    return-object v0
.end method

.method public isBelowMinCPM()Z
    .registers 3

    .line 732
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 734
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->isBelowMinCPM()Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkAvailable()Z
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .registers 3

    .line 560
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 563
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->isReady()Z

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->canShowAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    if-eqz p2, :cond_11

    const-string p1, "serving ads disabled"

    .line 148
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setErrorMessage(Ljava/lang/String;)V

    .line 149
    invoke-interface {p2, p0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    :cond_11
    return v1

    .line 153
    :cond_12
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public loadAd()V
    .registers 4

    .line 391
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    new-instance v1, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v1}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)V
    .registers 4

    .line 411
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 4

    .line 421
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    const/4 v0, 0x0

    .line 416
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 7

    .line 428
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setAdMode(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)V

    .line 429
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setAdPrefs(Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 431
    :try_start_6
    invoke-virtual {p0, p2, p3}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_1f

    :catch_a
    move-exception p1

    .line 433
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StartAppAd.loadAd - unexpected Error occurd"

    const-string v2, ""

    invoke-static {p2, v0, v1, p1, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1f

    .line 435
    invoke-interface {p3, p0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 4

    .line 401
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    new-instance v1, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v1}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    .line 396
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method public loadAd(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 4

    .line 406
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-virtual {p0, v0, p1, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    return-void
.end method

.method protected loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 3

    return-void
.end method

.method public loadSplash(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;
    .registers 5

    .line 589
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    return-object p1
.end method

.method public onBackPressed()V
    .registers 4

    const-string v0, "exit_ad"

    .line 495
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "StartAppAd"

    const-string v2, "Could not display StartAppAd onBackPressed"

    .line 496
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 498
    :cond_10
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/m;->m()V

    return-void
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "AdMode"

    .line 527
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 528
    sget-object v1, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 530
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    goto :goto_31

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 532
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    goto :goto_31

    :cond_1a
    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 534
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OVERLAY:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    goto :goto_31

    :cond_22
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 536
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    goto :goto_31

    :cond_2a
    const/4 v1, 0x5

    if-ne v0, v1, :cond_31

    .line 538
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    :cond_31
    :goto_31
    const-string v0, "AdPrefs"

    .line 541
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 543
    check-cast p1, Lcom/startapp/android/publish/common/model/AdPreferences;

    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    :cond_3d
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 476
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_9

    .line 477
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd()V

    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7

    .line 504
    sget-object v0, Lcom/startapp/android/publish/adsCommon/StartAppAd$3;->a:[I

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1c

    if-eq v0, v3, :cond_1a

    if-eq v0, v2, :cond_18

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_1d

    :cond_18
    const/4 v1, 0x3

    goto :goto_1d

    :cond_1a
    const/4 v1, 0x2

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x1

    .line 519
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    if-eqz v0, :cond_26

    const-string v2, "AdPrefs"

    .line 520
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_26
    const-string v0, "AdMode"

    .line 522
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setVideoListener(Lcom/startapp/android/publish/adsCommon/VideoListener;)V
    .registers 2

    .line 471
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->videoListener:Lcom/startapp/android/publish/adsCommon/VideoListener;

    return-void
.end method

.method protected shouldDisplayAd(Ljava/lang/String;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Lcom/startapp/android/publish/adsCommon/a/f;
    .registers 4

    .line 341
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->F()Lcom/startapp/android/publish/adsCommon/a/e;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/startapp/android/publish/adsCommon/a/e;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/f;

    move-result-object p1

    return-object p1
.end method

.method public show()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0, v0, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->show(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    move-result v0

    return v0
.end method

.method public show(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    .line 193
    new-instance v1, Lcom/startapp/android/publish/adsCommon/adListeners/a;

    invoke-direct {v1, p2}, Lcom/startapp/android/publish/adsCommon/adListeners/a;-><init>(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)V

    iput-object v1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    .line 195
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->canShowAd()Z

    move-result p2

    const/4 v1, 0x0

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p2, :cond_21

    .line 196
    sget-object p1, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->SERVING_ADS_DISABLED:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    .line 197
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    invoke-interface {p1, p0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;->adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V

    return v1

    .line 202
    :cond_21
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    if-nez p2, :cond_28

    .line 203
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd()V

    .line 206
    :cond_28
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->isAppOnForeground()Z

    move-result p2

    if-eqz p2, :cond_142

    .line 207
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->isNetworkAvailable()Z

    move-result p2

    if-eqz p2, :cond_13c

    .line 208
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->isReady()Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_11f

    .line 209
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->getPlacement()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object p2

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->shouldDisplayAd(Ljava/lang/String;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Lcom/startapp/android/publish/adsCommon/a/f;

    move-result-object v4

    .line 211
    invoke-virtual {v4}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result v5

    if-eqz v5, :cond_100

    .line 212
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v5

    iget-object v6, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v5, v6}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v5

    iput-object v5, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->ad:Lcom/startapp/android/publish/adsCommon/g;

    if-eqz v5, :cond_11c

    .line 217
    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    sget-object v6, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const/4 v7, 0x3

    if-ne v5, v6, :cond_76

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/adsCommon/m;->n()Z

    move-result v5

    if-eqz v5, :cond_76

    const-string p2, "StartAppAd"

    const-string v2, "App in background, can\'t display splash"

    .line 218
    invoke-static {p2, v7, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    sget-object p2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->APP_IN_BACKGROUND:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    goto/16 :goto_11c

    .line 221
    :cond_76
    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->ad:Lcom/startapp/android/publish/adsCommon/g;

    invoke-interface {v5, p1}, Lcom/startapp/android/publish/adsCommon/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 223
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/b;->a()Lcom/startapp/android/publish/adsCommon/a/b;

    move-result-object v6

    new-instance v8, Lcom/startapp/android/publish/adsCommon/a/a;

    invoke-direct {v8, p2, p1}, Lcom/startapp/android/publish/adsCommon/a/a;-><init>(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/startapp/android/publish/adsCommon/a/b;->a(Lcom/startapp/android/publish/adsCommon/a/a;)V

    .line 224
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    if-eqz p2, :cond_a4

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    sget-object v6, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_SPLASH:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    if-eq p2, v6, :cond_a4

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    if-eqz p2, :cond_a5

    new-instance v6, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v6}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    .line 225
    invoke-virtual {p2, v6}, Lcom/startapp/android/publish/common/model/AdPreferences;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a4

    goto :goto_a5

    :cond_a4
    const/4 v3, 0x0

    :cond_a5
    :goto_a5
    if-eqz v3, :cond_f8

    .line 227
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object p2

    .line 228
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-virtual {p2, v3}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Ljava/lang/String;

    move-result-object v3

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reset autoLoad after show "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "preCache"

    invoke-static {v8, v7, v6}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    iget-object v6, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-static {v6, v3, v2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    sget-object v6, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->AUTOMATIC:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    if-ne v3, v6, :cond_f8

    .line 232
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    sget-object v6, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-virtual {p2, v6}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    sget-object v6, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    invoke-virtual {p2, v6}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f8

    .line 237
    :cond_e9
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->ad:Lcom/startapp/android/publish/adsCommon/g;

    instance-of v2, p2, Lcom/startapp/android/publish/adsCommon/Ad;

    if-eqz v2, :cond_f8

    .line 238
    check-cast p2, Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/Ad;->getNotDisplayedReason()Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    .line 243
    :cond_f8
    :goto_f8
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-virtual {p0, p2, v2, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->loadAd(Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    goto :goto_11d

    .line 247
    :cond_100
    sget-object p2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_RULES:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    .line 248
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_11c

    .line 249
    invoke-static {}, Lcom/startapp/common/a/i;->a()Lcom/startapp/common/a/i;

    move-result-object p2

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/startapp/android/publish/adsCommon/a/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/startapp/common/a/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_11c
    :goto_11c
    const/4 v5, 0x0

    :goto_11d
    move v1, v5

    goto :goto_148

    .line 255
    :cond_11f
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    if-eq p2, v2, :cond_132

    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adMode:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;->VIDEO:Lcom/startapp/android/publish/adsCommon/StartAppAd$AdMode;

    if-eq p2, v2, :cond_132

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showPreparedVideoFallbackAd(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_132

    goto :goto_133

    :cond_132
    const/4 v3, 0x0

    :goto_133
    if-nez v3, :cond_13a

    .line 257
    sget-object p2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    :cond_13a
    move-object v4, v0

    goto :goto_149

    .line 261
    :cond_13c
    sget-object p2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->NETWORK_PROBLEM:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    goto :goto_147

    .line 264
    :cond_142
    sget-object p2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->APP_IN_BACKGROUND:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    :goto_147
    move-object v4, v0

    :goto_148
    const/4 v3, 0x0

    :goto_149
    if-nez v1, :cond_14d

    if-eqz v3, :cond_166

    :cond_14d
    const-string p2, "com.startapp.android.HideDisplayBroadcastListener"

    .line 269
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    const-string p2, "com.startapp.android.ShowDisplayBroadcastListener"

    .line 270
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    const-string p2, "com.startapp.android.ShowFailedDisplayBroadcastListener"

    .line 271
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    const-string p2, "com.startapp.android.OnClickCallback"

    .line 272
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    const-string p2, "com.startapp.android.OnVideoCompleted"

    .line 273
    invoke-direct {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->registerBroadcastReceiver(Ljava/lang/String;)V

    :cond_166
    if-nez v1, :cond_1e9

    .line 276
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    move-result-object p2

    if-nez p2, :cond_173

    .line 277
    sget-object p2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    .line 280
    :cond_173
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    move-result-object p2

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->NETWORK_PROBLEM:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    if-eq p2, v2, :cond_1de

    .line 281
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    move-result-object p2

    sget-object v2, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_RULES:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    if-eq p2, v2, :cond_1c5

    if-eqz v3, :cond_1a4

    .line 284
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->ad:Lcom/startapp/android/publish/adsCommon/g;

    if-eqz v2, :cond_18c

    goto :goto_196

    :cond_18c
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v2

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v2, v4}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v2

    :goto_196
    invoke-static {v2}, Lcom/startapp/android/publish/adsCommon/c;->a(Lcom/startapp/android/publish/adsCommon/g;)[Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_NOT_READY_VIDEO_FALLBACK:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {v4}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v2, p1, v4}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1de

    .line 286
    :cond_1a4
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->ad:Lcom/startapp/android/publish/adsCommon/g;

    if-eqz v2, :cond_1ab

    goto :goto_1b5

    :cond_1ab
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v2

    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v2, v4}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v2

    :goto_1b5
    invoke-static {v2}, Lcom/startapp/android/publish/adsCommon/c;->a(Lcom/startapp/android/publish/adsCommon/g;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->getNotDisplayedReason()Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v2, p1, v4}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1de

    :cond_1c5
    if-eqz v4, :cond_1de

    .line 289
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v2

    iget-object v5, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->adKey:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {v2, v5}, Lcom/startapp/android/publish/cache/a;->b(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v2

    invoke-static {v2}, Lcom/startapp/android/publish/adsCommon/c;->a(Lcom/startapp/android/publish/adsCommon/g;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/startapp/android/publish/adsCommon/a/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v2, p1, v4}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1de
    :goto_1de
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->ad:Lcom/startapp/android/publish/adsCommon/g;

    if-nez v3, :cond_1e9

    .line 296
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->callback:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;

    if-eqz p1, :cond_1e9

    .line 297
    invoke-interface {p1, p0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;->adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V

    :cond_1e9
    return v1
.end method

.method public showAd()Z
    .registers 2

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, v0, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    move-result v0

    return v0
.end method

.method public showAd(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z
    .registers 3

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    move-result p1

    return p1
.end method

.method public showAd(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 447
    invoke-virtual {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->showAd(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    move-result p1

    return p1
.end method

.method public showAd(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z
    .registers 7

    .line 458
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->show(Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    move-exception p1

    .line 460
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/StartAppAd;->context:Landroid/content/Context;

    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StartAppAd.showAd - unexpected Error occurd"

    const-string v3, ""

    invoke-static {v0, v1, v2, p1, v3}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object p1, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/adsCommon/StartAppAd;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    if-eqz p2, :cond_20

    const/4 p1, 0x0

    .line 463
    invoke-interface {p2, p1}, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener;->adNotDisplayed(Lcom/startapp/android/publish/adsCommon/Ad;)V

    :cond_20
    const/4 p1, 0x0

    return p1
.end method
