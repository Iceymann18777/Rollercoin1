.class public abstract Lcom/startapp/android/publish/ads/b/c;
.super Lcom/startapp/android/publish/adsCommon/e;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/adsCommon/g;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/e;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    return-void
.end method

.method private d()Z
    .registers 3

    .line 132
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->n()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->n()I

    move-result v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/b/c;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/b/c;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 120
    const-class p1, Lcom/startapp/android/publish/adsCommon/activities/FullScreenActivity;

    return-object p1

    .line 122
    :cond_9
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/startapp/android/publish/adsCommon/activities/OverlayActivity;

    const-class v1, Lcom/startapp/android/publish/adsCommon/activities/AppWallActivity;

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;)Z
    .registers 3

    .line 127
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->a()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->r()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 128
    :cond_1a
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/startapp/android/publish/adsCommon/activities/FullScreenActivity;

    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return p1
.end method


# virtual methods
.method protected a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 11

    .line 31
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/n;->a()Lcom/startapp/android/publish/adsCommon/n$a;

    move-result-object v1

    sget-object v3, Lcom/startapp/android/publish/adsCommon/n$a;->a:Lcom/startapp/android/publish/adsCommon/n$a;

    invoke-virtual {v1, v3}, Lcom/startapp/android/publish/adsCommon/n$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 35
    sget-object p1, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->VIDEO_BACK:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/b/c;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    return v2

    .line 40
    :cond_2d
    sget-object v1, Lcom/startapp/android/publish/adsCommon/AdsConstants;->OVERRIDE_NETWORK:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 41
    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/b/c;->setState(Lcom/startapp/android/publish/adsCommon/Ad$AdState;)V

    .line 44
    :cond_3a
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_46

    .line 45
    sget-object p1, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->INTERNAL_ERROR:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/b/c;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    return v2

    .line 49
    :cond_46
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->hasAdCacheTtlPassed()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 50
    sget-object p1, Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;->AD_EXPIRED:Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/b/c;->setNotDisplayedReason(Lcom/startapp/android/publish/adsCommon/adListeners/AdDisplayListener$NotDisplayedReason;)V

    return v2

    .line 54
    :cond_52
    iget-object v1, p0, Lcom/startapp/android/publish/ads/b/c;->activityExtra:Lcom/startapp/android/publish/adsCommon/a;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/startapp/android/publish/ads/b/c;->activityExtra:Lcom/startapp/android/publish/adsCommon/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/a;->a()Z

    move-result v1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    .line 56
    :goto_5e
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/startapp/android/publish/ads/b/c;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/b/c;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "fileUrl"

    const-string v5, "exit.html"

    .line 57
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->l()[Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/c;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 61
    :goto_79
    array-length v7, v4

    if-ge v6, v7, :cond_a0

    .line 62
    aget-object v7, v4, v6

    if-eqz v7, :cond_9d

    aget-object v7, v4, v6

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9d

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    :cond_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    :cond_a0
    const-string v5, "tracking"

    .line 67
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->m()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "trackingClickUrl"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->o()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "packageNames"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->g()Ljava/lang/String;

    move-result-object v4

    const-string v5, "htmlUuid"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v4, p0, Lcom/startapp/android/publish/ads/b/c;->smartRedirect:[Z

    const-string v5, "smartRedirect"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->k()[Z

    move-result-object v4

    const-string v5, "browserEnabled"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 73
    iget-object v4, p0, Lcom/startapp/android/publish/ads/b/c;->placement:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    invoke-virtual {v4}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->getIndex()I

    move-result v4

    const-string v5, "placement"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v4

    const-string v5, "adInfoOverride"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "ad"

    .line 75
    invoke-virtual {v3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->a()Z

    move-result v4

    const-string v5, "videoAd"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "fullscreen"

    .line 77
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->b()I

    move-result v1

    const-string v4, "orientation"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adTag"

    .line 79
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->getLastLoadTime()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "lastLoadTime"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->getAdCacheTtl()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "adCacheTtl"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->i()[Ljava/lang/String;

    move-result-object p1

    const-string v1, "closingUrl"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->p()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_12f

    .line 84
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->p()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "delayImpressionSeconds"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    :cond_12f
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->q()[Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "sendRedirectHops"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->r()Z

    move-result p1

    const-string v1, "mraidAd"

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->r()Z

    move-result p1

    if-eqz p1, :cond_14c

    const-string p1, "activityShouldLockOrientation"

    .line 91
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_14c
    const-wide/16 v1, 0x8

    .line 96
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_15e

    instance-of p1, p0, Lcom/startapp/android/publish/ads/splash/b;

    if-eqz p1, :cond_15e

    const-string p1, "isSplash"

    .line 97
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_15e
    const-string p1, "position"

    .line 100
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14800000

    .line 103
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/startapp/android/publish/ads/b/c;->context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method public a_()Ljava/lang/String;
    .registers 2

    .line 170
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/e;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()I
    .registers 2

    .line 140
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->n()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/startapp/android/publish/ads/b/c;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/b/c;->n()I

    move-result v0

    :goto_17
    return v0
.end method

.method public getAdCacheTtl()Ljava/lang/Long;
    .registers 2

    .line 180
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/e;->getAdCacheTtl()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLastLoadTime()Ljava/lang/Long;
    .registers 2

    .line 175
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/e;->getLastLoadTime()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCancelCallBack()Z
    .registers 2

    .line 190
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/e;->getVideoCancelCallBack()Z

    move-result v0

    return v0
.end method

.method public hasAdCacheTtlPassed()Z
    .registers 2

    .line 185
    invoke-super {p0}, Lcom/startapp/android/publish/adsCommon/e;->hasAdCacheTtlPassed()Z

    move-result v0

    return v0
.end method

.method public setVideoCancelCallBack(Z)V
    .registers 2

    .line 195
    invoke-super {p0, p1}, Lcom/startapp/android/publish/adsCommon/e;->setVideoCancelCallBack(Z)V

    return-void
.end method
