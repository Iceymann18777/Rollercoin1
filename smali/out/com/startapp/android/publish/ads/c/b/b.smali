.class public Lcom/startapp/android/publish/ads/c/b/b;
.super Lcom/startapp/android/publish/adsCommon/h;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/g;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    sget-object v0, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OFFER_WALL:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/adsCommon/h;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/c/b/b;->uuid:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/startapp/android/publish/ads/c/b/b;->a:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 34
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/startapp/android/publish/ads/c/b/b;->a:Ljava/lang/String;

    :cond_19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/startapp/android/publish/ads/c/b/b;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    .line 44
    invoke-static {}, Lcom/startapp/android/publish/ads/list3d/f;->a()Lcom/startapp/android/publish/ads/list3d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/c/b/b;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/list3d/f;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/list3d/e;

    move-result-object v0

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/list3d/e;->b(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/startapp/android/publish/ads/c/b/b;->activityExtra:Lcom/startapp/android/publish/adsCommon/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/startapp/android/publish/ads/c/b/b;->activityExtra:Lcom/startapp/android/publish/adsCommon/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/a;->a()Z

    move-result v0

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 48
    :goto_1e
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/c/b/b;->hasAdCacheTtlPassed()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 49
    sget-object p1, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_EXPIRED:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/c/b/b;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    return v1

    .line 53
    :cond_2a
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/c/b/b;->context:Landroid/content/Context;

    const-class v3, Lcom/startapp/android/publish/ads/list3d/List3DActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/c/b/b;->getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v2

    const-string v3, "adInfoOverride"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "fullscreen"

    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "adTag"

    .line 56
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/c/b/b;->getLastLoadTime()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "lastLoadTime"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/c/b/b;->getAdCacheTtl()Ljava/lang/Long;

    move-result-object p1

    const-string v0, "adCacheTtl"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object p1, p0, Lcom/startapp/android/publish/ads/c/b/b;->uuid:Ljava/lang/String;

    const-string v0, "listModelUuid"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14800000

    .line 61
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    iget-object p1, p0, Lcom/startapp/android/publish/ads/c/b/b;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    sget-object p1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_NETWORK:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7f

    .line 70
    sget-object p1, Lcom/startapp/android/publish/adsCommon/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/c/b/b;->setState(Lcom/startapp/android/publish/adsCommon/Ad$AdState;)V

    :cond_7f
    const/4 p1, 0x1

    return p1
.end method

.method public a_()Ljava/lang/String;
    .registers 2

    .line 96
    sget-object v0, Lcom/startapp/android/publish/ads/c/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAdCacheTtl()Ljava/lang/Long;
    .registers 2

    .line 110
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/h;->getAdCacheTtl()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLastLoadTime()Ljava/lang/Long;
    .registers 2

    .line 105
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/h;->getLastLoadTime()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCancelCallBack()Z
    .registers 2

    .line 120
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/h;->getVideoCancelCallBack()Z

    move-result v0

    return v0
.end method

.method public hasAdCacheTtlPassed()Z
    .registers 2

    .line 115
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/h;->hasAdCacheTtlPassed()Z

    move-result v0

    return v0
.end method

.method protected loadAds(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 5

    .line 39
    new-instance v0, Lcom/startapp/android/publish/ads/c/b/a;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/c/b/b;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/startapp/android/publish/ads/c/b/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/c/b/b;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/c/b/a;->c()V

    return-void
.end method

.method public setVideoCancelCallBack(Z)V
    .registers 2

    .line 125
    invoke-super {p0, p1}, Lcom/startapp/android/publish/adsCommon/h;->setVideoCancelCallBack(Z)V

    return-void
.end method
