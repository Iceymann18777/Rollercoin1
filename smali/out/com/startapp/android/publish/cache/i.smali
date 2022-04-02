.class public Lcom/startapp/android/publish/cache/i;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/cache/i$d;,
        Lcom/startapp/android/publish/cache/i$b;,
        Lcom/startapp/android/publish/cache/i$e;,
        Lcom/startapp/android/publish/cache/i$c;,
        Lcom/startapp/android/publish/cache/i$a;
    }
.end annotation


# direct methods
.method protected static a()Ljava/lang/String;
    .registers 1

    const-string v0, "startapp_ads"

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/startapp/android/publish/ads/b/c;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 5

    .line 333
    new-instance v0, Lcom/startapp/android/publish/cache/i$4;

    invoke-direct {v0, p3, p1}, Lcom/startapp/android/publish/cache/i$4;-><init>(Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/ads/b/c;)V

    invoke-static {p0, p2, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/Utils/i$a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/startapp/android/publish/ads/b/c;Ljava/lang/String;Lcom/startapp/android/publish/cache/i$a;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "DiskAdCacheManager"

    if-eqz p2, :cond_3e

    const-string v3, ""

    .line 314
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 315
    invoke-static {p1}, Lcom/startapp/android/publish/cache/i;->a(Lcom/startapp/android/publish/ads/b/c;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string p0, "Missing video file"

    .line 316
    invoke-static {v2, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 317
    invoke-interface {p4, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    goto :goto_46

    .line 318
    :cond_1d
    invoke-static {p0, p2}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string p0, "App is present"

    .line 319
    invoke-static {v2, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    invoke-interface {p4, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    goto :goto_46

    .line 322
    :cond_2c
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/b/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/startapp/android/publish/cache/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    invoke-interface {p3, p1}, Lcom/startapp/android/publish/cache/i$a;->a(Lcom/startapp/android/publish/adsCommon/g;)V

    .line 324
    invoke-static {p0, p1, p2, p4}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/b/c;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    goto :goto_46

    :cond_3e
    const-string p0, "Missing Html"

    .line 327
    invoke-static {v2, v1, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    invoke-interface {p4, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    :goto_46
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/startapp/android/publish/ads/c/b/b;Lcom/startapp/android/publish/cache/i$a;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 10

    .line 294
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/c/b/b;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "DiskAdCacheManager"

    if-nez v0, :cond_13

    const-string p0, "No ad details"

    .line 296
    invoke-static {v3, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    invoke-interface {p3, v1}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    goto :goto_3e

    .line 299
    :cond_13
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/android/publish/adsCommon/b;->E()Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 300
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0, v4, v5}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;)Ljava/util/List;

    move-result-object v0

    :cond_27
    if-eqz v0, :cond_36

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_36

    .line 303
    invoke-interface {p2, p1}, Lcom/startapp/android/publish/cache/i$a;->a(Lcom/startapp/android/publish/adsCommon/g;)V

    .line 304
    invoke-static {p1, p3, v0}, Lcom/startapp/android/publish/cache/i;->a(Lcom/startapp/android/publish/ads/c/b/b;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Ljava/util/List;)V

    goto :goto_3e

    :cond_36
    const-string p0, "App presence - no interstitials to display"

    .line 306
    invoke-static {v3, v2, p0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    invoke-interface {p3, v1}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    :goto_3e
    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/startapp/android/publish/cache/g;Ljava/lang/String;)V
    .registers 4

    .line 204
    new-instance v0, Lcom/startapp/android/publish/cache/i$d;

    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/g;->b()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/cache/i$d;-><init>(Lcom/startapp/android/publish/adsCommon/g;)V

    .line 205
    invoke-static {}, Lcom/startapp/android/publish/cache/i;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$c;)V
    .registers 4

    .line 176
    sget-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/cache/i$2;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/cache/i$2;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$c;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$d;Lcom/startapp/android/publish/cache/i$a;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 7

    .line 281
    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/i$d;->a()Lcom/startapp/android/publish/adsCommon/g;

    move-result-object v0

    .line 282
    invoke-interface {v0, p0}, Lcom/startapp/android/publish/adsCommon/g;->setContext(Landroid/content/Context;)V

    const-wide/16 v1, 0x2

    .line 283
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1d

    instance-of v1, v0, Lcom/startapp/android/publish/ads/b/c;

    if-eqz v1, :cond_1d

    .line 284
    check-cast v0, Lcom/startapp/android/publish/ads/b/c;

    invoke-virtual {p1}, Lcom/startapp/android/publish/cache/i$d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/b/c;Ljava/lang/String;Lcom/startapp/android/publish/cache/i$a;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    goto :goto_3b

    :cond_1d
    const-wide/16 v1, 0x40

    .line 285
    invoke-static {v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    if-eqz p1, :cond_2f

    instance-of p1, v0, Lcom/startapp/android/publish/ads/c/b/b;

    if-eqz p1, :cond_2f

    .line 286
    check-cast v0, Lcom/startapp/android/publish/ads/c/b/b;

    invoke-static {p0, v0, p2, p3}, Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/c/b/b;Lcom/startapp/android/publish/cache/i$a;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V

    goto :goto_3b

    :cond_2f
    const/4 p0, 0x4

    const-string p1, "DiskAdCacheManager"

    const-string p2, "Unsupported disk ad type"

    .line 288
    invoke-static {p1, p0, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 289
    invoke-interface {p3, p0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    :goto_3b
    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$e;)V
    .registers 4

    .line 138
    sget-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/cache/i$1;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/cache/i$1;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$e;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Ljava/lang/String;I)V
    .registers 6

    .line 165
    new-instance v0, Lcom/startapp/android/publish/cache/i$b;

    invoke-direct {v0, p1, p2}, Lcom/startapp/android/publish/cache/i$b;-><init>(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 166
    invoke-virtual {v0, p4}, Lcom/startapp/android/publish/cache/i$b;->a(I)V

    .line 167
    invoke-static {}, Lcom/startapp/android/publish/cache/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3, v0}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/cache/i$a;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 6

    .line 218
    sget-object v0, Lcom/startapp/common/g$a;->b:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/cache/i$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/startapp/android/publish/cache/i$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/cache/i$a;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Lcom/startapp/android/publish/ads/c/b/b;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/ads/c/b/b;",
            "Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-static {}, Lcom/startapp/android/publish/ads/list3d/f;->a()Lcom/startapp/android/publish/ads/list3d/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/c/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/list3d/f;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/list3d/e;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/e;->a()V

    .line 351
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/common/model/AdDetails;

    .line 352
    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/list3d/e;->a(Lcom/startapp/android/publish/common/model/AdDetails;)V

    goto :goto_13

    .line 354
    :cond_23
    invoke-interface {p1, p0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 358
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->E()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 359
    invoke-static {p1, v0}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0, v2, v1}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 364
    new-instance p1, Lcom/startapp/android/publish/adsCommon/b/b;

    invoke-direct {p1, p0, v1}, Lcom/startapp/android/publish/adsCommon/b/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b/b;->a()V

    return v0

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/startapp/android/publish/ads/b/c;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected static b()Ljava/lang/String;
    .registers 2

    .line 270
    invoke-static {}, Lcom/startapp/android/publish/cache/i;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c()Ljava/lang/String;
    .registers 2

    .line 277
    invoke-static {}, Lcom/startapp/android/publish/cache/i;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interstitials"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
