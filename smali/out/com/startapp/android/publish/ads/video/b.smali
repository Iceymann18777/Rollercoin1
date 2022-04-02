.class public Lcom/startapp/android/publish/ads/video/b;
.super Lcom/startapp/android/publish/html/a;
.source "StartAppSDK"


# instance fields
.field private i:J

.field private volatile j:Lcom/startapp/android/publish/cache/c;

.field private k:Lcom/startapp/android/publish/ads/video/c/a/c;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)V
    .registers 12

    .line 51
    sget-object v5, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_OVERLAY:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/startapp/android/publish/html/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Z)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/startapp/android/publish/ads/video/b;->i:J

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/startapp/android/publish/ads/video/b;->l:I

    .line 53
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/n;->r()I

    move-result p2

    if-nez p2, :cond_28

    new-instance p2, Lcom/startapp/android/publish/ads/video/c/a/c;

    invoke-direct {p2, p1}, Lcom/startapp/android/publish/ads/video/c/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_39

    :cond_28
    new-instance p2, Lcom/startapp/android/publish/ads/video/c/a/d;

    .line 54
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapp/android/publish/adsCommon/n;->s()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/startapp/android/publish/ads/video/c/a/d;-><init>(Landroid/content/Context;I)V

    :goto_39
    iput-object p2, p0, Lcom/startapp/android/publish/ads/video/b;->k:Lcom/startapp/android/publish/ads/video/c/a/c;

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/b;)Lcom/startapp/android/publish/adsCommon/Ad;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    return-object p0
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/b;Lcom/startapp/android/publish/ads/video/c/a/a;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/b;->a(Lcom/startapp/android/publish/ads/video/c/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/b;Ljava/lang/Boolean;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Lcom/startapp/android/publish/html/a;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/b;Z)V
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/b;->a(Z)V

    return-void
.end method

.method private a(Lcom/startapp/android/publish/ads/video/c/a/a;)V
    .registers 11

    const-string v0, ""

    const/4 v1, 0x0

    .line 237
    :try_start_3
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/b;->b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/b;->b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 238
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/b;->b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoTrackingDetails()Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingDetails;->getInlineErrorTrackingUrls()[Lcom/startapp/android/publish/ads/video/tracking/ActionTrackingLink;

    move-result-object v1

    :cond_1f
    if-eqz v1, :cond_c9

    .line 241
    array-length v2, v1

    if-lez v2, :cond_c9

    .line 242
    sget-object v2, Lcom/startapp/android/publish/ads/video/c/a/a;->K:Lcom/startapp/android/publish/ads/video/c/a/a;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2d

    sget-object v2, Lcom/startapp/android/publish/ads/video/c/a/a;->L:Lcom/startapp/android/publish/ads/video/c/a/a;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_bb

    if-ne p1, v2, :cond_93

    .line 244
    :cond_2d
    :try_start_2d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v4, Ljava/net/URL;

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/common/metaData/MetaData;->getAdPlatformHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 248
    array-length v5, v1

    const/4 v6, 0x0

    :goto_52
    if-ge v6, v5, :cond_70

    aget-object v7, v1, v6

    .line 249
    invoke-virtual {v7}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->getTrackingUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6d

    invoke-virtual {v7}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;->getTrackingUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 250
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 254
    :cond_70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_84

    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_82} :catch_85

    move-object v1, v2

    goto :goto_93

    :cond_84
    return-void

    :catch_85
    move-exception v2

    .line 261
    :try_start_86
    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/b;->a:Landroid/content/Context;

    sget-object v5, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v6, "GetVideoEnabledService.sendVideoErrorEvent filter sa links"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v6, v2, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_93
    :goto_93
    new-instance v2, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;

    const-string v4, "1"

    invoke-direct {v2, v0, v3, v3, v4}, Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 267
    new-instance v4, Lcom/startapp/android/publish/ads/video/a/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/b;->b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v2, v5, v3}, Lcom/startapp/android/publish/ads/video/a/b;-><init>([Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingLink;Lcom/startapp/android/publish/ads/video/tracking/VideoTrackingParams;Ljava/lang/String;I)V

    const-string v1, "error"

    .line 268
    invoke-virtual {v4, v1}, Lcom/startapp/android/publish/ads/video/a/b;->a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/a/b;

    move-result-object v1

    .line 269
    invoke-virtual {v1, p1}, Lcom/startapp/android/publish/ads/video/a/b;->a(Lcom/startapp/android/publish/ads/video/c/a/a;)Lcom/startapp/android/publish/ads/video/a/b;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/a/b;->a()Lcom/startapp/android/publish/ads/video/a/a;

    move-result-object p1

    .line 271
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/b;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;Lcom/startapp/android/publish/ads/video/a/a;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_ba} :catch_bb

    goto :goto_c9

    :catch_bb
    move-exception p1

    .line 274
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/b;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "GetVideoEnabledService.sendVideoErrorEvent"

    invoke-static {v1, v2, v3, p1, v0}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;Z)Z
    .registers 6

    const-string v0, "GetVideoEnabledService"

    const/4 v1, 0x6

    .line 279
    invoke-static {v0, v1, p1, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_19

    .line 281
    iget-object p3, p0, Lcom/startapp/android/publish/ads/video/b;->a:Landroid/content/Context;

    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v1, ""

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_16

    :cond_15
    move-object p2, v1

    :goto_16
    invoke-static {p3, v0, p1, p2, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_19
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object p1

    iget-object p2, p0, Lcom/startapp/android/publish/ads/video/b;->j:Lcom/startapp/android/publish/cache/c;

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/cache/a;->a(Lcom/startapp/android/publish/cache/c;)Lcom/startapp/android/publish/adsCommon/g;

    move-result-object p1

    .line 285
    instance-of p2, p1, Lcom/startapp/android/publish/adsCommon/e;

    if-eqz p2, :cond_3f

    .line 286
    new-instance p2, Lcom/startapp/common/a/h$a;

    invoke-direct {p2}, Lcom/startapp/common/a/h$a;-><init>()V

    const-string p3, "text/html"

    .line 287
    invoke-virtual {p2, p3}, Lcom/startapp/common/a/h$a;->b(Ljava/lang/String;)V

    .line 288
    check-cast p1, Lcom/startapp/android/publish/adsCommon/e;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/e;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/startapp/common/a/h$a;->a(Ljava/lang/String;)V

    .line 289
    invoke-super {p0, p2}, Lcom/startapp/android/publish/html/a;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 291
    :cond_3f
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    iget-object p2, p0, Lcom/startapp/android/publish/ads/video/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/startapp/android/publish/adsCommon/Ad;->setErrorMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/startapp/android/publish/ads/video/b;)Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/startapp/android/publish/ads/video/b;->d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    return-object p0
.end method

.method static synthetic b(Lcom/startapp/android/publish/ads/video/b;Ljava/lang/Boolean;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Lcom/startapp/android/publish/html/a;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic b(Lcom/startapp/android/publish/ads/video/b;Z)V
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/b;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 10

    .line 208
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/Ad;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/Ad;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne v0, v1, :cond_16

    :cond_14
    if-eqz p1, :cond_57

    .line 211
    :cond_16
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b;->c:Lcom/startapp/android/publish/common/model/AdPreferences;

    if-nez v0, :cond_20

    .line 212
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    goto :goto_27

    .line 214
    :cond_20
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/b;->c:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>(Lcom/startapp/android/publish/common/model/AdPreferences;)V

    :goto_27
    move-object v6, v0

    .line 217
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/Ad;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-eq v0, v1, :cond_40

    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/Ad;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne v0, v1, :cond_3d

    goto :goto_40

    :cond_3d
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->NON_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    goto :goto_42

    :cond_40
    :goto_40
    sget-object v0, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->VIDEO_NO_VAST:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    :goto_42
    invoke-virtual {v6, v0}, Lcom/startapp/android/publish/common/model/AdPreferences;->setType(Lcom/startapp/android/publish/adsCommon/Ad$AdType;)V

    .line 218
    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/b;->e:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    .line 219
    invoke-static {}, Lcom/startapp/android/publish/cache/a;->a()Lcom/startapp/android/publish/cache/a;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/b;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/startapp/android/publish/cache/a;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/StartAppAd;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Lcom/startapp/android/publish/cache/c;

    move-result-object v0

    if-eqz p1, :cond_57

    .line 221
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/b;->j:Lcom/startapp/android/publish/cache/c;

    :cond_57
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "@videoJson@"

    .line 227
    invoke-static {p1, v0, v0}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private h()Z
    .registers 2

    .line 189
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/b;->b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method protected a()Lcom/startapp/android/publish/common/model/GetAdRequest;
    .registers 2

    .line 184
    new-instance v0, Lcom/startapp/android/publish/ads/video/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/video/a;-><init>()V

    .line 185
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/video/b;->b(Lcom/startapp/android/publish/common/model/GetAdRequest;)Lcom/startapp/android/publish/common/model/GetAdRequest;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 6

    .line 126
    invoke-super {p0, p1}, Lcom/startapp/android/publish/html/a;->a(Ljava/lang/Boolean;)V

    .line 127
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 128
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->i()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 129
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/video/b;->a(Lcom/startapp/android/publish/ads/video/b;Ljava/lang/Boolean;)V

    .line 131
    :cond_20
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/b;->b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/b;->c:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/model/AdPreferences;->isVideoMuted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->setVideoMuted(Z)V

    .line 132
    new-instance v0, Lcom/startapp/android/publish/ads/video/b$1;

    invoke-direct {v0, p0, p1}, Lcom/startapp/android/publish/ads/video/b$1;-><init>(Lcom/startapp/android/publish/ads/video/b;Ljava/lang/Boolean;)V

    .line 149
    new-instance p1, Lcom/startapp/android/publish/ads/video/b$2;

    invoke-direct {p1, p0}, Lcom/startapp/android/publish/ads/video/b$2;-><init>(Lcom/startapp/android/publish/ads/video/b;)V

    .line 156
    invoke-static {}, Lcom/startapp/android/publish/ads/video/d;->a()Lcom/startapp/android/publish/ads/video/d;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/b;->b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/video/VideoAdDetails;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/startapp/android/publish/ads/video/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/g$a;Lcom/startapp/android/publish/ads/video/c$a;)V

    goto :goto_54

    .line 158
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/video/b;->a(Z)V

    :goto_54
    return-void
.end method

.method protected a(Lcom/startapp/android/publish/common/model/GetAdRequest;)Z
    .registers 4

    .line 165
    invoke-super {p0, p1}, Lcom/startapp/android/publish/html/a;->a(Lcom/startapp/android/publish/common/model/GetAdRequest;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 166
    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->isAdTypeVideo()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 167
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;)Lcom/startapp/android/publish/ads/video/h$a;

    move-result-object p1

    .line 168
    sget-object v0, Lcom/startapp/android/publish/ads/video/h$a;->a:Lcom/startapp/android/publish/ads/video/h$a;

    if-eq p1, v0, :cond_1e

    .line 169
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/h$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/b;->f:Ljava/lang/String;

    return v1

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    return v1
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 11

    .line 59
    move-object v0, p1

    check-cast v0, Lcom/startapp/common/a/h$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11d

    .line 60
    invoke-virtual {v0}, Lcom/startapp/common/a/h$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 61
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/n;->h()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b;->h:Lcom/startapp/android/publish/common/model/GetAdRequest;

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->hasCampaignExclude()Z

    move-result p1

    if-nez p1, :cond_31

    .line 62
    invoke-direct {p0, v3}, Lcom/startapp/android/publish/ads/video/b;->b(Z)V

    .line 67
    :cond_31
    :try_start_31
    invoke-virtual {v0}, Lcom/startapp/common/a/h$a;->a()Ljava/lang/String;

    move-result-object p1

    const-class v4, Lcom/startapp/android/publish/ads/video/VASTJson;

    invoke-static {p1, v4}, Lcom/startapp/common/c/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/ads/video/VASTJson;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_115

    if-eqz p1, :cond_10e

    .line 73
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VASTJson;->getVastTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10e

    .line 74
    new-instance v4, Lcom/startapp/android/publish/ads/video/c/b/b;

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapp/android/publish/adsCommon/n;->n()I

    move-result v5

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/startapp/android/publish/adsCommon/n;->o()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/startapp/android/publish/ads/video/c/b/b;-><init>(II)V

    .line 75
    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VASTJson;->getVastTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/startapp/android/publish/ads/video/b;->k:Lcom/startapp/android/publish/ads/video/c/a/c;

    invoke-virtual {v4, v5, v6, v7}, Lcom/startapp/android/publish/ads/video/c/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/c/a/c;)Lcom/startapp/android/publish/ads/video/c/a/a;

    move-result-object v5

    .line 76
    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/video/c/b/b;->a()Lcom/startapp/android/publish/ads/video/c/a/e;

    move-result-object v4

    .line 77
    iget-object v6, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast v6, Lcom/startapp/android/publish/ads/video/e;

    iget-object v7, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v7}, Lcom/startapp/android/publish/adsCommon/Ad;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v7

    sget-object v8, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-eq v7, v8, :cond_82

    const/4 v7, 0x1

    goto :goto_83

    :cond_82
    const/4 v7, 0x0

    :goto_83
    invoke-virtual {v6, v4, v7}, Lcom/startapp/android/publish/ads/video/e;->a(Lcom/startapp/android/publish/ads/video/c/a/e;Z)V

    .line 78
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VASTJson;->getTtlSec()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_97

    .line 79
    iget-object v4, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast v4, Lcom/startapp/android/publish/ads/video/e;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VASTJson;->getTtlSec()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/startapp/android/publish/ads/video/e;->d(Ljava/lang/String;)V

    .line 82
    :cond_97
    sget-object v4, Lcom/startapp/android/publish/ads/video/c/a/a;->a:Lcom/startapp/android/publish/ads/video/c/a/a;

    if-ne v5, v4, :cond_b1

    .line 83
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/a;->L:Lcom/startapp/android/publish/ads/video/c/a/a;

    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/b;->a(Lcom/startapp/android/publish/ads/video/c/a/a;)V

    .line 85
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VASTJson;->getAdmTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapp/common/a/h$a;->a(Ljava/lang/String;)V

    const-string p1, "text/html"

    .line 86
    invoke-virtual {v0, p1}, Lcom/startapp/common/a/h$a;->b(Ljava/lang/String;)V

    .line 88
    invoke-super {p0, v0}, Lcom/startapp/android/publish/html/a;->a(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_114

    .line 90
    :cond_b1
    invoke-direct {p0, v5}, Lcom/startapp/android/publish/ads/video/b;->a(Lcom/startapp/android/publish/ads/video/c/a/a;)V

    .line 91
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VASTJson;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c3

    .line 92
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b;->g:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/VASTJson;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_c3
    iget p1, p0, Lcom/startapp/android/publish/ads/video/b;->l:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/startapp/android/publish/ads/video/b;->l:I

    .line 96
    iget-object p1, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast p1, Lcom/startapp/android/publish/ads/video/e;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/e;->e()V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/startapp/android/publish/ads/video/b;->i:J

    sub-long/2addr v3, v5

    .line 99
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/n;->p()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_ee

    const-string p1, "VAST retry timeout"

    .line 100
    invoke-direct {p0, p1, v2, v1}, Lcom/startapp/android/publish/ads/video/b;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)Z

    move-result p1

    goto :goto_114

    .line 101
    :cond_ee
    iget p1, p0, Lcom/startapp/android/publish/ads/video/b;->l:I

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->q()I

    move-result v0

    if-le p1, v0, :cond_105

    const-string p1, "VAST too many excludes"

    .line 103
    invoke-direct {p0, p1, v2, v1}, Lcom/startapp/android/publish/ads/video/b;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)Z

    move-result p1

    goto :goto_114

    .line 105
    :cond_105
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/b;->d()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_114

    :cond_10e
    const-string p1, "no VAST wrapper in json"

    .line 109
    invoke-direct {p0, p1, v2, v3}, Lcom/startapp/android/publish/ads/video/b;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)Z

    move-result p1

    :goto_114
    return p1

    :catch_115
    move-exception p1

    const-string v0, "VAST json parsing"

    .line 69
    invoke-direct {p0, v0, p1, v3}, Lcom/startapp/android/publish/ads/video/b;->a(Ljava/lang/String;Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1

    :cond_11d
    if-eqz v0, :cond_123

    .line 114
    invoke-virtual {v0}, Lcom/startapp/common/a/h$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 115
    :cond_123
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b;->H()Lcom/startapp/android/publish/adsCommon/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/n;->h()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 116
    invoke-direct {p0, v2}, Lcom/startapp/android/publish/ads/video/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 117
    invoke-direct {p0, v1}, Lcom/startapp/android/publish/ads/video/b;->b(Z)V

    .line 120
    :cond_13a
    invoke-super {p0, p1}, Lcom/startapp/android/publish/html/a;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b()Lcom/startapp/android/publish/ads/video/VideoAdDetails;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/b;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast v0, Lcom/startapp/android/publish/ads/video/e;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/e;->d()Lcom/startapp/android/publish/ads/video/VideoAdDetails;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Boolean;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/b;->h()Z

    move-result v0

    if-nez v0, :cond_9

    .line 195
    invoke-super {p0, p1}, Lcom/startapp/android/publish/html/a;->b(Ljava/lang/Boolean;)V

    :cond_9
    return-void
.end method
