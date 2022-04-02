.class public abstract Lcom/startapp/android/publish/a/a;
.super Lcom/startapp/android/publish/adsCommon/d;
.source "StartAppSDK"


# instance fields
.field private g:I

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 6

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/startapp/android/publish/adsCommon/d;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/startapp/android/publish/a/a;->g:I

    .line 30
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/a/a;->h:Ljava/util/Set;

    return-void
.end method

.method private b()Z
    .registers 2

    .line 113
    iget v0, p0, Lcom/startapp/android/publish/a/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/a/a;->g:I

    .line 114
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract a(Lcom/startapp/android/publish/adsCommon/Ad;)V
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 5

    .line 119
    invoke-super {p0, p1}, Lcom/startapp/android/publish/adsCommon/d;->a(Ljava/lang/Boolean;)V

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnReceiveResponseBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/startapp/android/publish/a/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "adHashcode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adResult"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/startapp/android/publish/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    .line 126
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2a

    return-void

    .line 129
    :cond_2a
    iget-object p1, p0, Lcom/startapp/android/publish/a/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast p1, Lcom/startapp/android/publish/adsCommon/h;

    .line 130
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/a/a;->a(Lcom/startapp/android/publish/adsCommon/Ad;)V

    .line 132
    iget-object p1, p0, Lcom/startapp/android/publish/a/a;->d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    iget-object v0, p0, Lcom/startapp/android/publish/a/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-interface {p1, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 10

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/startapp/android/publish/common/model/GetAdResponse;

    const/4 v1, 0x6

    const-string v2, "Empty Response"

    const/4 v3, 0x0

    const-string v4, "AppPresence"

    if-nez p1, :cond_13

    .line 84
    iput-object v2, p0, Lcom/startapp/android/publish/a/a;->f:Ljava/lang/String;

    const-string p1, "Error Empty Response"

    .line 85
    invoke-static {v4, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 88
    :cond_13
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/GetAdResponse;->isValidResponse()Z

    move-result p1

    if-nez p1, :cond_3b

    .line 89
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/GetAdResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/a/a;->f:Ljava/lang/String;

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error msg = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/startapp/android/publish/a/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 94
    :cond_3b
    iget-object p1, p0, Lcom/startapp/android/publish/a/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast p1, Lcom/startapp/android/publish/adsCommon/h;

    .line 96
    iget-object v1, p0, Lcom/startapp/android/publish/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/startapp/android/publish/a/a;->g:I

    iget-object v7, p0, Lcom/startapp/android/publish/a/a;->h:Ljava/util/Set;

    invoke-static {v1, v5, v6, v7}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-virtual {p1, v1}, Lcom/startapp/android/publish/adsCommon/h;->a(Ljava/util/List;)V

    .line 98
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/GetAdResponse;->getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/startapp/android/publish/adsCommon/h;->setAdInfoOverride(Lcom/startapp/android/publish/adsCommon/adinformation/c;)V

    .line 100
    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_68

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_68

    const/4 v3, 0x1

    :cond_68
    if-nez v3, :cond_6d

    .line 103
    iput-object v2, p0, Lcom/startapp/android/publish/a/a;->f:Ljava/lang/String;

    goto :goto_82

    .line 104
    :cond_6d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_82

    iget p1, p0, Lcom/startapp/android/publish/a/a;->g:I

    if-nez p1, :cond_82

    const/4 p1, 0x3

    const-string v0, "Packages exists - another request"

    .line 106
    invoke-static {v4, p1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/startapp/android/publish/a/a;->b()Z

    move-result p1

    return p1

    :cond_82
    :goto_82
    return v3
.end method

.method protected e()Ljava/lang/Object;
    .registers 6

    .line 40
    invoke-virtual {p0}, Lcom/startapp/android/publish/a/a;->a()Lcom/startapp/android/publish/common/model/GetAdRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 44
    :cond_8
    iget-object v2, p0, Lcom/startapp/android/publish/a/a;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1b

    .line 45
    iget-object v2, p0, Lcom/startapp/android/publish/a/a;->h:Ljava/util/Set;

    iget-object v3, p0, Lcom/startapp/android/publish/a/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1b
    iget v2, p0, Lcom/startapp/android/publish/a/a;->g:I

    const/4 v3, 0x0

    if-lez v2, :cond_23

    .line 50
    invoke-virtual {v0, v3}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setEngInclude(Z)V

    .line 55
    :cond_23
    iget-object v2, p0, Lcom/startapp/android/publish/a/a;->h:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setPackageExclude(Ljava/util/Set;)V

    .line 56
    iget v2, p0, Lcom/startapp/android/publish/a/a;->g:I

    if-nez v2, :cond_2d

    const/4 v3, 0x1

    :cond_2d
    invoke-virtual {v0, v3}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setEngInclude(Z)V

    .line 68
    :try_start_30
    iget-object v2, p0, Lcom/startapp/android/publish/a/a;->a:Landroid/content/Context;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;->JSON:Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;

    invoke-virtual {p0}, Lcom/startapp/android/publish/a/a;->f()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a(Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/startapp/android/publish/common/model/GetAdResponse;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;Ljava/lang/Class;)Lcom/startapp/android/publish/adsCommon/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/common/model/GetAdResponse;
    :try_end_44
    .catch Lcom/startapp/common/e; {:try_start_30 .. :try_end_44} :catch_45

    return-object v0

    :catch_45
    move-exception v0

    const/4 v2, 0x6

    const-string v3, "AppPresence"

    const-string v4, "Unable to handle GetAdsSetService command!!!!"

    .line 70
    invoke-static {v3, v2, v4, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    invoke-virtual {v0}, Lcom/startapp/common/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/a/a;->f:Ljava/lang/String;

    return-object v1
.end method
