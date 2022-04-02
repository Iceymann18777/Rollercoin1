.class public abstract Lcom/startapp/android/publish/html/a;
.super Lcom/startapp/android/publish/adsCommon/d;
.source "StartAppSDK"


# instance fields
.field protected g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/startapp/android/publish/common/model/GetAdRequest;

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Z)V
    .registers 7

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/startapp/android/publish/adsCommon/d;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/Ad;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/html/a;->i:Ljava/util/Set;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/html/a;->j:Ljava/util/List;

    .line 45
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/startapp/android/publish/html/a;->g:Ljava/util/Set;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/startapp/android/publish/html/a;->k:I

    .line 52
    iput-boolean p6, p0, Lcom/startapp/android/publish/html/a;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/html/a;)Lcom/startapp/android/publish/adsCommon/Ad;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    return-object p0
.end method

.method static synthetic b(Lcom/startapp/android/publish/html/a;)Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/startapp/android/publish/html/a;->d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    return-object p0
.end method

.method static synthetic c(Lcom/startapp/android/publish/html/a;)Lcom/startapp/android/publish/adsCommon/Ad;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    return-object p0
.end method

.method static synthetic d(Lcom/startapp/android/publish/html/a;)Lcom/startapp/android/publish/adsCommon/Ad;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    return-object p0
.end method

.method static synthetic e(Lcom/startapp/android/publish/html/a;)Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/startapp/android/publish/html/a;->d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .registers 4

    .line 140
    invoke-super {p0, p1}, Lcom/startapp/android/publish/adsCommon/d;->a(Ljava/lang/Boolean;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Html onPostExecute, result=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseHtmlService"

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .registers 5

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnReceiveResponseBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "adHashcode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adResult"

    .line 193
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/common/b;->a(Landroid/content/Context;)Lcom/startapp/common/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/common/b;->a(Landroid/content/Intent;)Z

    if-eqz p1, :cond_4f

    .line 195
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    if-eqz v0, :cond_4f

    .line 196
    iget-boolean v0, p0, Lcom/startapp/android/publish/html/a;->l:Z

    if-eqz v0, :cond_3d

    .line 197
    iget-object p1, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast v0, Lcom/startapp/android/publish/adsCommon/e;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/html/a$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/html/a$1;-><init>(Lcom/startapp/android/publish/html/a;)V

    invoke-static {p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/Utils/i$a;)V

    goto :goto_6d

    :cond_3d
    if-eqz p1, :cond_47

    .line 212
    iget-object p1, p0, Lcom/startapp/android/publish/html/a;->d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-interface {p1, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    goto :goto_6d

    .line 214
    :cond_47
    iget-object p1, p0, Lcom/startapp/android/publish/html/a;->d:Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;

    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    invoke-interface {p1, v0}, Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    goto :goto_6d

    :cond_4f
    const/4 p1, 0x6

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Html onPostExecute failed error=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/startapp/android/publish/html/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseHtmlService"

    invoke-static {v1, p1, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_6d
    return-void
.end method

.method protected a(Lcom/startapp/android/publish/common/model/GetAdRequest;)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 8

    const-string v0, "BaseHtmlService"

    const/4 v1, 0x4

    const-string v2, "Handle Html Response"

    .line 103
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 105
    :try_start_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/startapp/android/publish/html/a;->j:Ljava/util/List;

    .line 106
    check-cast p1, Lcom/startapp/common/a/h$a;

    invoke-virtual {p1}, Lcom/startapp/common/a/h$a;->a()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 108
    iget-object p1, p0, Lcom/startapp/android/publish/html/a;->f:Ljava/lang/String;

    if-nez p1, :cond_35

    .line 109
    iget-object p1, p0, Lcom/startapp/android/publish/html/a;->h:Lcom/startapp/android/publish/common/model/GetAdRequest;

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/startapp/android/publish/html/a;->h:Lcom/startapp/android/publish/common/model/GetAdRequest;

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/GetAdRequest;->isAdTypeVideo()Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "Video isn\'t available"

    .line 110
    iput-object p1, p0, Lcom/startapp/android/publish/html/a;->f:Ljava/lang/String;

    goto :goto_35

    :cond_31
    const-string p1, "Empty Ad"

    .line 112
    iput-object p1, p0, Lcom/startapp/android/publish/html/a;->f:Ljava/lang/String;

    :cond_35
    :goto_35
    return v0

    .line 118
    :cond_36
    iget v1, p0, Lcom/startapp/android/publish/html/a;->k:I

    invoke-static {p1, v1}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-static {}, Lcom/startapp/android/publish/adsCommon/b;->a()Lcom/startapp/android/publish/adsCommon/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/adsCommon/b;->E()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 124
    iget-object v2, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    iget v3, p0, Lcom/startapp/android/publish/html/a;->k:I

    iget-object v4, p0, Lcom/startapp/android/publish/html/a;->i:Ljava/util/Set;

    iget-object v5, p0, Lcom/startapp/android/publish/html/a;->j:Ljava/util/List;

    invoke-static {v2, v1, v3, v4, v5}, Lcom/startapp/android/publish/adsCommon/b/c;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    if-nez v2, :cond_66

    .line 128
    iget-object v2, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast v2, Lcom/startapp/android/publish/adsCommon/e;

    invoke-virtual {v2, v1}, Lcom/startapp/android/publish/adsCommon/e;->a(Ljava/util/List;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/html/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 131
    :cond_66
    invoke-virtual {p0}, Lcom/startapp/android/publish/html/a;->g()Z

    move-result p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6a} :catch_6b

    return p1

    :catch_6b
    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->b:Lcom/startapp/android/publish/adsCommon/Ad;

    check-cast v0, Lcom/startapp/android/publish/adsCommon/e;

    .line 224
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/g/d/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 225
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/g/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    :cond_e
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/e;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .registers 2

    .line 182
    invoke-super {p0, p1}, Lcom/startapp/android/publish/adsCommon/d;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected e()Ljava/lang/Object;
    .registers 8

    .line 58
    invoke-virtual {p0}, Lcom/startapp/android/publish/html/a;->a()Lcom/startapp/android/publish/common/model/GetAdRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/html/a;->h:Lcom/startapp/android/publish/common/model/GetAdRequest;

    .line 60
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/html/a;->a(Lcom/startapp/android/publish/common/model/GetAdRequest;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    .line 62
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_20

    .line 63
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->i:Ljava/util/Set;

    iget-object v2, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_20
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->h:Lcom/startapp/android/publish/common/model/GetAdRequest;

    iget-object v2, p0, Lcom/startapp/android/publish/html/a;->i:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setPackageExclude(Ljava/util/Set;)V

    .line 66
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->h:Lcom/startapp/android/publish/common/model/GetAdRequest;

    iget-object v2, p0, Lcom/startapp/android/publish/html/a;->g:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setCampaignExclude(Ljava/util/Set;)V

    .line 69
    iget v0, p0, Lcom/startapp/android/publish/html/a;->k:I

    if-lez v0, :cond_4d

    .line 70
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->h:Lcom/startapp/android/publish/common/model/GetAdRequest;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/common/model/GetAdRequest;->setEngInclude(Z)V

    .line 71
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/common/metaData/MetaData;->getSimpleTokenConfig()Lcom/startapp/android/publish/common/metaData/h;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/common/metaData/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 74
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/adsCommon/l;->b(Landroid/content/Context;)V

    .line 80
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;->HTML:Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;

    invoke-virtual {p0}, Lcom/startapp/android/publish/html/a;->f()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/startapp/android/publish/adsCommon/AdsConstants;->a(Lcom/startapp/android/publish/adsCommon/AdsConstants$AdApiType;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/html/a;->h:Lcom/startapp/android/publish/common/model/GetAdRequest;

    invoke-static {v0, v2, v3, v1}, Lcom/startapp/android/publish/adsCommon/k/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/BaseRequest;Ljava/util/Map;)Lcom/startapp/common/a/h$a;

    move-result-object v0
    :try_end_5f
    .catch Lcom/startapp/common/e; {:try_start_4d .. :try_end_5f} :catch_60

    return-object v0

    :catch_60
    move-exception v0

    .line 82
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInvalidNetworkCodesInfoEvents()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/common/e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 83
    iget-object v2, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 84
    invoke-virtual {v0}, Lcom/startapp/common/e;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BaseHtmlService.sendCommand - network failure"

    const-string v6, ""

    .line 83
    invoke-static {v2, v3, v5, v4, v6}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    const/4 v2, 0x6

    const-string v3, "BaseHtmlService"

    const-string v4, "Unable to handle GetHtmlAdService command!!!!"

    .line 86
    invoke-static {v3, v2, v4, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {v0}, Lcom/startapp/common/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/html/a;->f:Ljava/lang/String;

    :cond_94
    return-object v1
.end method

.method protected g()Z
    .registers 4

    const-string v0, "BaseHtmlService"

    const/4 v1, 0x3

    const-string v2, "At least one package is present. sending another request to AdPlatform"

    .line 232
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/startapp/android/publish/html/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/html/a;->k:I

    .line 235
    new-instance v0, Lcom/startapp/android/publish/adsCommon/b/b;

    iget-object v1, p0, Lcom/startapp/android/publish/html/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/android/publish/html/a;->j:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/b/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/b/b;->a()V

    .line 236
    invoke-virtual {p0}, Lcom/startapp/android/publish/html/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
