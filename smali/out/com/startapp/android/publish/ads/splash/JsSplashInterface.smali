.class public Lcom/startapp/android/publish/ads/splash/JsSplashInterface;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private closeCallback:Ljava/lang/Runnable;

.field protected mContext:Landroid/content/Context;

.field private processed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/JsSplashInterface;->processed:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startapp/android/publish/ads/splash/JsSplashInterface;->closeCallback:Ljava/lang/Runnable;

    .line 13
    iput-object p2, p0, Lcom/startapp/android/publish/ads/splash/JsSplashInterface;->closeCallback:Ljava/lang/Runnable;

    .line 14
    iput-object p1, p0, Lcom/startapp/android/publish/ads/splash/JsSplashInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public closeSplash()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 21
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/JsSplashInterface;->processed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/splash/JsSplashInterface;->processed:Z

    .line 24
    iget-object v0, p0, Lcom/startapp/android/publish/ads/splash/JsSplashInterface;->closeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
