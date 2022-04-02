.class public Lcom/startapp/android/publish/ads/video/a;
.super Lcom/startapp/android/publish/common/model/GetAdRequest;
.source "StartAppSDK"


# instance fields
.field private a:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

.field private b:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;-><init>()V

    .line 18
    sget-object v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;->INTERSTITIAL:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/a;->b:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;

    return-void
.end method

.method private a()V
    .registers 3

    .line 34
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/a;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne v0, v1, :cond_c

    .line 35
    sget-object v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;->REWARDED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/a;->b:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;

    .line 37
    :cond_c
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/a;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne v0, v1, :cond_18

    .line 38
    sget-object v0, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;->INTERSTITIAL:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/a;->b:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;

    :cond_18
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 43
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/a;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 44
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/a;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->NON_VIDEO:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne p1, v0, :cond_13

    .line 45
    sget-object p1, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->DISABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a;->a:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    goto :goto_49

    .line 46
    :cond_13
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/a;->getType()Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/adsCommon/Ad$AdType;->VIDEO_NO_VAST:Lcom/startapp/android/publish/adsCommon/Ad$AdType;

    if-ne p1, v0, :cond_20

    .line 47
    sget-object p1, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->FORCED_NONVAST:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a;->a:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    goto :goto_49

    .line 48
    :cond_20
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/video/a;->isAdTypeVideo()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 49
    sget-object p1, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->FORCED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a;->a:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    goto :goto_49

    .line 52
    :cond_2b
    invoke-static {p1}, Lcom/startapp/android/publish/ads/video/h;->a(Landroid/content/Context;)Lcom/startapp/android/publish/ads/video/h$a;

    move-result-object p1

    sget-object v0, Lcom/startapp/android/publish/ads/video/h$a;->a:Lcom/startapp/android/publish/ads/video/h$a;

    if-ne p1, v0, :cond_45

    const-wide/16 v0, 0x2

    .line 53
    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(J)Z

    move-result p1

    if-nez p1, :cond_40

    .line 54
    sget-object p1, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->FORCED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a;->a:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    goto :goto_49

    .line 57
    :cond_40
    sget-object p1, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->ENABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a;->a:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    goto :goto_49

    .line 60
    :cond_45
    sget-object p1, Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;->DISABLED:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/a;->a:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method public fillAdPreferences(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapp/android/publish/common/model/AdPreferences;",
            "Lcom/startapp/android/publish/common/model/AdPreferences$Placement;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapp/android/publish/common/model/GetAdRequest;->fillAdPreferences(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Landroid/util/Pair;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/a;->a(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/video/a;->a()V

    return-void
.end method

.method public getNameValueMap()Lcom/startapp/android/publish/adsCommon/Utils/e;
    .registers 5

    .line 75
    invoke-super {p0}, Lcom/startapp/android/publish/common/model/GetAdRequest;->getNameValueMap()Lcom/startapp/android/publish/adsCommon/Utils/e;

    move-result-object v0

    if-nez v0, :cond_b

    .line 77
    new-instance v0, Lcom/startapp/android/publish/adsCommon/Utils/d;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/Utils/d;-><init>()V

    .line 80
    :cond_b
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/a;->a:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestType;

    const-string v2, "video"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 81
    iget-object v1, p0, Lcom/startapp/android/publish/ads/video/a;->b:Lcom/startapp/android/publish/common/model/GetAdRequest$VideoRequestMode;

    const-string v2, "videoMode"

    invoke-virtual {v0, v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object v0
.end method
