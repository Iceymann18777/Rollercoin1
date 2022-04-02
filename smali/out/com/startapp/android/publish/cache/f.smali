.class public Lcom/startapp/android/publish/cache/f;
.super Lcom/startapp/android/publish/cache/e;
.source "StartAppSDK"


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/cache/g;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/cache/e;-><init>(Lcom/startapp/android/publish/cache/g;)V

    return-void
.end method


# virtual methods
.method protected c()Z
    .registers 3

    .line 25
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/m;->a()Lcom/startapp/android/publish/adsCommon/m;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/cache/f;->a:Lcom/startapp/android/publish/cache/g;

    invoke-virtual {v1}, Lcom/startapp/android/publish/cache/g;->c()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/adsCommon/m;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Z

    move-result v0

    return v0
.end method

.method protected d()J
    .registers 8

    .line 30
    iget-object v0, p0, Lcom/startapp/android/publish/cache/f;->a:Lcom/startapp/android/publish/cache/g;

    invoke-virtual {v0}, Lcom/startapp/android/publish/cache/g;->b()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x3

    const-string v4, "CacheTTLReloadTimer"

    if-nez v0, :cond_13

    const-string v0, "Missing ad"

    .line 32
    invoke-static {v4, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-wide v1

    .line 36
    :cond_13
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->getAdCacheTtl()Ljava/lang/Long;

    move-result-object v5

    .line 37
    invoke-interface {v0}, Lcom/startapp/android/publish/adsCommon/g;->getLastLoadTime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v5, :cond_37

    if-nez v0, :cond_20

    goto :goto_37

    .line 43
    :cond_20
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_35

    goto :goto_36

    :cond_35
    move-wide v1, v3

    :goto_36
    return-wide v1

    :cond_37
    :goto_37
    const-string v0, "Missing TTL or last loading time"

    .line 39
    invoke-static {v4, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-wide v1
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    const-string v0, "CacheTTLReloadTimer"

    return-object v0
.end method
