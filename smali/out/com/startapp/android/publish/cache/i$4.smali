.class final Lcom/startapp/android/publish/cache/i$4;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/Utils/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/b/c;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

.field final synthetic b:Lcom/startapp/android/publish/ads/b/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/ads/b/c;)V
    .registers 3

    .line 333
    iput-object p1, p0, Lcom/startapp/android/publish/cache/i$4;->a:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    iput-object p2, p0, Lcom/startapp/android/publish/cache/i$4;->b:Lcom/startapp/android/publish/ads/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/startapp/android/publish/cache/i$4;->a:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/cache/i$4;->b:Lcom/startapp/android/publish/ads/b/c;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Html Cache failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DiskAdCacheManager"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/startapp/android/publish/cache/i$4;->a:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    iget-object v0, p0, Lcom/startapp/android/publish/cache/i$4;->b:Lcom/startapp/android/publish/ads/b/c;

    invoke-interface {p1, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    return-void
.end method
