.class public Lcom/appnext/banners/g;
.super Lcom/appnext/banners/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/banners/g$b;,
        Lcom/appnext/banners/g$a;
    }
.end annotation


# instance fields
.field private adsid:Ljava/lang/String;

.field private clicked:Z

.field private handler:Landroid/os/Handler;

.field private refreshHandler:Landroid/os/Handler;

.field private selectedAd:Lcom/appnext/banners/BannerAdData;

.field private shown:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/appnext/banners/a;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/appnext/banners/g;->adsid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/appnext/banners/g;->clicked:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appnext/banners/g;->shown:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appnext/banners/g;->handler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appnext/banners/g;->refreshHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/appnext/banners/g;)Landroid/os/Handler;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/appnext/banners/g;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appnext/banners/g;)Z
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/appnext/banners/g;->isDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/appnext/banners/g;Z)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/appnext/banners/g;->openResultPage(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/appnext/banners/g;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/appnext/banners/g;->clicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/appnext/banners/g;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/appnext/banners/g;->pageFinished()V

    return-void
.end method

.method static synthetic access$502(Lcom/appnext/banners/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/appnext/banners/g;->adsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/appnext/banners/g;)Ljava/util/ArrayList;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/appnext/banners/g;->shown:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/appnext/banners/g;)Landroid/os/Handler;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/appnext/banners/g;->refreshHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private activateAutoRefresh()V
    .registers 6

    .line 374
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    .line 377
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2a

    goto :goto_2c

    :catchall_2a
    const/16 v1, 0xa

    :goto_2c
    const-string v2, "_arFlag"

    .line 380
    invoke-virtual {v0, v2}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-lez v1, :cond_47

    .line 381
    iget-object v0, p0, Lcom/appnext/banners/g;->refreshHandler:Landroid/os/Handler;

    new-instance v2, Lcom/appnext/banners/g$5;

    invoke-direct {v2, p0}, Lcom/appnext/banners/g$5;-><init>(Lcom/appnext/banners/g;)V

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_47
    return-void
.end method

.method private isDestroyed()Z
    .registers 2

    .line 167
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private openResultPage(Z)V
    .registers 5

    .line 316
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appnext/banners/g;->context:Landroid/content/Context;

    const-class v2, Lcom/appnext/banners/BannerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAd;->getPlacementID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAd;->getPostback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "postback"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAd;->getCategories()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAdData;->getBannerID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clicked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    const-string v2, "selected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "shouldClose"

    .line 323
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 324
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    iget-object p1, p0, Lcom/appnext/banners/g;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private pageFinished()V
    .registers 3

    .line 350
    invoke-direct {p0}, Lcom/appnext/banners/g;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 352
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/banners/g$4;

    invoke-direct {v1, p0}, Lcom/appnext/banners/g$4;-><init>(Lcom/appnext/banners/g;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 146
    invoke-super {p0}, Lcom/appnext/banners/a;->destroy()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/banners/g$3;

    invoke-direct {v1, p0}, Lcom/appnext/banners/g$3;-><init>(Lcom/appnext/banners/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    iget-object v0, p0, Lcom/appnext/banners/g;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 161
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    :cond_1c
    iget-object v0, p0, Lcom/appnext/banners/g;->refreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    .line 163
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method protected getConfigParams()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "vid"

    const-string v2, "2.5.1.472"

    .line 172
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_16

    move-object v1, v2

    goto :goto_1e

    :cond_16
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAd;->getTID()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    const-string v3, "tid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    if-nez v1, :cond_2b

    move-object v1, v2

    goto :goto_33

    :cond_2b
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAd;->getAUID()Ljava/lang/String;

    move-result-object v1

    :goto_33
    const-string v3, "auid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osid"

    const-string v3, "100"

    .line 175
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/appnext/banners/BannerAd;->getTemId(Lcom/appnext/banners/BannerAdData;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "tem_id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appnext/banners/g;->getButtonText(Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "b_title"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appnext/banners/g;->getCreativeType(Lcom/appnext/core/AppnextAd;)I

    move-result v1

    if-nez v1, :cond_73

    const-string v1, "video"

    goto :goto_75

    :cond_73
    const-string v1, "static"

    :goto_75
    const-string v3, "creative"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAdData;->getCategories()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cat"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v1

    const-string v3, "pview"

    invoke-virtual {v1, v3}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getAdRequest()Lcom/appnext/banners/BannerAdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAdRequest;->getVideoLength()Ljava/lang/String;

    move-result-object v1

    const-string v3, "video_length"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getAdRequest()Lcom/appnext/banners/BannerAdRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/banners/BannerAdRequest;->isMute()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mute"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getAdRequest()Lcom/appnext/banners/BannerAdRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/banners/BannerAdRequest;->isAutoPlay()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "auto_play"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v1

    const-string v3, "remove_poster_on_auto_play"

    invoke-virtual {v1, v3}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    const-string v3, "remote_auto_play"

    .line 186
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 187
    iget-object v1, p0, Lcom/appnext/banners/g;->adsid:Ljava/lang/String;

    const-string v3, "did"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-static {}, Lcom/appnext/core/f;->be()Ljava/lang/String;

    move-result-object v1

    const-string v3, "devn"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "dosv"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dds"

    const-string v3, "0"

    .line 190
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ads_type"

    const-string v3, "banner"

    .line 191
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAdData;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v3, "country"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/appnext/core/k;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/p;)Z

    move-result v1

    const-string v3, "gdpr"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 194
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {}, Lcom/appnext/core/a/b;->bp()Lcom/appnext/core/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/core/a/b;->bq()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lang_settings"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14b

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 197
    :cond_14b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_157
    const-string v2, "lang"

    .line 198
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected getFallbackScript()Ljava/lang/String;
    .registers 2

    .line 212
    new-instance v0, Lcom/appnext/banners/c;

    invoke-direct {v0}, Lcom/appnext/banners/c;-><init>()V

    const-string v0, "var Appnext=function(e){var t=e;return t.css=\'html,body{font-family:sans-serif;-webkit-text-size-adjust:100%;text-size-adjust:100%;height:100%;width:100%;padding:0 !important;margin:0 !important;overflow:hidden;font-size:100%;-moz-user-select:none;-webkit-user-select:none;user-select:none}#appnext{height:248px;width:298px;background:white;font-family:Arial,Helvetica,sans-serif;font-size:9px;font-weight:normal;font-style:normal;font-stretch:normal;line-height:normal;letter-spacing:normal;color:#979797;border:1px solid #d4d4d4;position:relative;z-index:10}#appnext .contianer{position:relative;width:100%;height:100%}#appnext .contianer>div{position:absolute}#appnext .contianer>div.wide_image{width:100%;height:151px;background-size:cover;background-repeat:no-repeat}#appnext .contianer>div.app_icon{width:42px;height:43px;top:164px;left:9px;background-size:contain;background-repeat:no-repeat}#appnext .contianer>div.app_title{width:225px;height:13px;font-size:12px;top:175px;left:59px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap}#appnext .contianer>div.app_desc{color:#989696;width:201px;height:32px;left:9px;bottom:0}#appnext .contianer>div.install{width:75px;height:21px;background-color:#689f38;font-size:10px;color:#ffffff;text-align:center;right:9px;bottom:10px;line-height:21px}#appnext.LARGE_BANNER{height:98px;width:318px}#appnext.LARGE_BANNER .contianer .wide_image{display:none}#appnext.LARGE_BANNER .contianer .app_icon{top:12px}#appnext.LARGE_BANNER .contianer .app_title{top:27px}#appnext.BANNER{height:48px;width:318px}#appnext.BANNER .contianer .wide_image{display:none}#appnext.BANNER .contianer .app_desc{display:none}#appnext.BANNER .contianer .app_icon{top:3px}#appnext.BANNER .contianer .app_title{width:169px;top:17px}#appnext.BANNER .contianer .install{top:14px;bottom:initial}#appnext.BANNER.gdpr .app_title{width:162px}#appnext.BANNER.gdpr .install{right:21px}#appnext .disclosure{position:absolute;top:1px;right:1px;height:15px;z-index:10000;display:table}#appnext .disclosure:after{content:\"\";width:11px;display:table-cell;background-repeat:no-repeat;background-size:100%;background-image:url(\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAulBMVEVra2v///9ra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2tra2uD32R/AAAAPXRSTlMAAAECAwUGBwwNDhAbHCAhJygwPj9ARkdJUFlaYGJjcICHiImKi5CRoKizwsPExcrLzNvc3uDh4ujr8vP56NItIQAAATtJREFUeAGlk/9PwjAUxOtaBHQCc+yLIAgbiKAwGVCH2/3//5ax0rchTWbi/fTy8knbXO/YVY3+ArCTLDdeZ0WRrWeupXcVgI9SkNIR/w10E0BG/l2z5QTRHki654B3hBwIfbAYSBzdKuAXWN2witorFEEJ9D6x4OxMfIG8pwGRYKnfTbKWSMQJGOGjrff3j3SLxPgHsFIM9bYDPOt5iNRSQB8HQQcAL3oWB/QVECNipIenW5ojxAp4Q1ACk0mH5gCvCshglwDg0WwjU0CBphm4RlEL1F5BjzQB9MgZIjMQISajTADXRpHVBJDVXAFsDNnSW8/TTrbos5h4N3/3VujAOLkxME4ZudAUubAa2jCHHPBqaPPwPPbOFpBT3240bH+6B7bOZXF2IO0uiqMQd775rt5m7vKyev9v9xdMJTC1gou06wAAAABJRU5ErkJggg==\")}#appnext .disclosure.gdpr{width:13.50pt;height:13.50pt;top:0;right:0}#appnext .disclosure.gdpr:after{margin:0;height:100%;background-position:bottom;background-image:url(\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACcAAAAnCAMAAAC7faEHAAAAZlBMVEXNzMwArs1WusyTw8xEuM0Ir83Jy8zFy8y2yMxhvMwWsc2kxsx1v8wttM0dss0QsM2/ysyoxsyaxMyNwsyfxcyHwcyAwMxrvcxLucw3tsw+t80ytc0ks826ycyxx8yux8xovcxPucxOwgPRAAAA+0lEQVQ4y83Tx27DMBAE0CUpdvXuEpf//8lIngS+sOhmz4kQHiAsOUufje7UEXZvWD0ccJZtuYxZx9krxT3vEP6TdYhcdMYtJ0g3q6QTJK6QV5F2pGYHeeqSjkgvEnI1SUfUckBp24TTthC3ArIpVcThYQyNFWQ9xdy6HfYZhhqyGsOul+z8+psqG8izCTkyvSKktRjdtQHXOVb8Q/KAQ8A9t4PHN/0Akybg9ivpac/k/ibxlHC+gnITUdyZ9V2yuBMPCfZEaWMOCp2JOwTrl3GoQNahUlE382qmct/OW3bfvCr5eGAvh2N7ftEZZ9FeRZl4iavIxghNX5lfdnkJssV7DcsAAAAASUVORK5CYII=\")} \',t.template=\'<div class=\"disclosure\"></div> <template id=\"app_template\">     <div class=\"app_container\">         <div class=\"wide_image\"></div>         <div class=\"app_icon\"></div>         <div class=\"app_title\"></div>         <div class=\"app_desc\"></div>         <div class=\"install\"></div>     </template>   \',t.vid=t.vid||\"1\",t.tid=t.tid||\"301\",t.ads_type=\"banner\",t.osid=t.osid||\"100\",t.auid=t.auid||\"100\",t}(Appnext||{}),Appnext=function(e){function t(e){n.Layout.Disclosure.addEventListener(\"click\",function(t){t.stopPropagation();var o=Math.floor(10*Math.random())+e.urlApp.match(\"[?&]e=([^&]+)\")[1]+Math.floor(10*Math.random()),i=\"https://www.appnext.com/privacy_policy/index.html?z=\"+o+\"&geo=\"+e.country;\"true\"==n.gdpr&&(i+=\"&edda=1\"),n.redirect(i)},!1),\"true\"==n.gdpr?n.Layout.Disclosure.classList.add(\"gdpr\"):\"430\"==n.auid&&n.Layout.Footer.appendChild(n.Layout.Disclosure)}var n=e;n.id=n.android_id||n.id,n.osType=function(){var e=navigator.userAgent||navigator.vendor||window.opera;return e.match(/Opera Mini/i)||e.match(/Windows/i)?\"unknown\":e.match(/iPad/i)||e.match(/iPhone/i)||e.match(/iPod/i)||e.match(/iOS/i)?(n.did=n.IDFA?n.IDFA:\"\",\"iOS\"):e.match(/Android/i)?(n.did=n.AAID?n.AAID:\"\",\"Android\"):\"unknown\"}(),\"iOS\"==n.osType&&(n.id=n.ios_id,n.osid=\"200\"),n.parent_url||(n.parent_url=window.location),\"true\"==n.use_skip&&(n.ad_server=\"false\"),\"\"!=n.auto_play&&\"true\"!=n.auto_play&&void 0!==n.auto_play||\"static\"==n.creative||-1!=navigator.userAgent.indexOf(\"SamsungBrowser\")||(n.auto_play_default=!0,n.auto_play=\"true\",n.mute_default=n.mute,n.mute=\"true\"),n.setCookie=function(e,t,n){if(navigator.cookieEnabled){var o=new Date;o.setHours(o.getHours()+n);var i=\"expires=\"+o.toGMTString()+\";path=/\";document.cookie=e+\"=\"+t+\"; \"+i}},n.getCookie=function(e){if(!navigator.cookieEnabled)return!1;for(var t=e+\"=\",n=document.cookie.split(\";\"),o=0;o<n.length;o++){for(var i=n[o];\" \"==i.charAt(0);)i=i.substring(1);if(0==i.indexOf(t))return i.substring(t.length,i.length)}return!1},n.removeCookies=function(e){for(var t=0;t<e.length;t++)n.setCookie(e[t].bannerId,!0,-6)},n.timstamp=Date.now(),n.API=function(){function e(e,t,n,o,i,a){var r=\"xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx\".replace(/[xy]/g,function(e){var t=16*Math.random()|0;return(\"x\"==e?t:3&t|8).toString(16)}),s=\"onSuccessCB_\"+r;window[s]=function(e){return e||!0}(t);var d=document.createElement(\"script\");e+=~e.indexOf(\"?\")?\"&\":\"?\",e+=\"callback=\"+s,d.src=e,d.className=\"appnext_cb\",d.type=void 0!==o&&o?o:\"text/javascript\",d.async=!(void 0===i||!i)&&i;try{document.body?document.body.appendChild(d):document.head.appendChild(d)}catch(e){return!!n&&n(e)}}var t={cnt:10,pimp:1,vs:1,igroup:\"true\"==n.ad_server?\"mweb2\":\"mweb\"},o={offerWallApi:\"https://global.appnext.com/offerwallapi.aspx\",log:\"https://admin.appnext.com/tp12.aspx\",gpi:\"https://admin.appnext.com/gpi.aspx\"};return{buildUrl:function(e,t){var n=[];for(var o in t)n.push(encodeURIComponent(o)+\"=\"+encodeURIComponent(t[o]));return e+\"?\"+n.join(\"&\")},loadAds:function(i){n.lang=navigator.language?navigator.language.slice(0,2):\"\";var a={id:n.id,cat:n.cat,pbk:n.pbk,cnt:n.cnt||t.cnt,igroup:t.igroup,vid:n.vid,tid:n.tid,osid:n.osid,auid:n.auid,pimp:t.pimp,vs:t.vs,ext:n.ext||\"\",did:n.did||\"\",devn:n.devn||\"\",dosv:n.dosv||\"\",dds:n.dds||\"\",dct:n.dct||\"\",subid:n.subid||\"\",ip:n.ip||\"\",did:n.did,lang:n.lang,uAgent:n.uAgent||\"\",packageId:n.appId||\"\"},r=o.offerWallApi;e(this.buildUrl(r,a),i,function(e){n.API.log(n.API.TP12.LoadAdsError,JSON.stringify(e).slice(0,250))},null,!1)},moat:function(e){return},fq:function(e){return},setGPI:function(){return},log:function(t,i,a){if(t==n.API.TP12.Play||t==n.API.TP12.Ended){var r={tid:n.tid,vid:n.vid,osid:n.osid,auid:n.auid,pid:n.id,bid:a?a.bannerId:0,cid:a?a.campaignId:0,session_id:i?encodeURIComponent(i):null,ref:encodeURIComponent(t),ads_type:n.ads_type},s=o.log;e(this.buildUrl(s,r),function(e){return e},null,null,!0)}},getRequest:function(t){e(t,null,null,null,!0)},notifyImpression:function(t,o,i){n.DFP_IMP_MACRO&&(t.pixelImp=n.DFP_IMP_MACRO+t.pixelImp);var a=function(t,o,i){return function(){n.Layout.isVisible(o)&&(e(t,null,null,null,!0),i&&i())}}(t.pixelImp,o,i);return n.API.fq(t),setTimeout(a,2e3)},getStyleUrl:function(){return o.css},postView:function(e){if(\"false\"!=n.pview){var t=e.urlApp+\"&ox=0\";if(\"true\"==n.ad_server){var o=document.createElement(\"img\");return o.src=t,o.height=0,o.width=0,o.style.position=\"absolute\",o.style.opacity=\"0\",void n.Layout.Container.appendChild(o)}var i=\"true\"==n.ad_server?1:navigator.userAgent.indexOf(\"Chrome\")>-1;if(\"iOS\"==n.osType||i){var a=document.createElement(\"link\");a.rel=\"stylesheet\",a.type=\"text/css\",a.href=t,document.head.appendChild(a)}}},TP12:{Play:\"play_video\",NoAds:\"no_ad_to_show\",Paused:\"video_paused\",Resumed:\"video_resumed\",VideoError:\"error_video\",Ended:\"video_ended\",AdDisplayed:\"ad_displayed\",Canplay:\"can_play\",Init:\"init\",Timeout:\"timeout\",AdClosed:\"ad_closed\",VideoClosed:\"video_closed_page2\",OfferWallApi:\"offerWallApi\",LoadAdsError:\"error_loadAds\",ParseAdsError:\"error_parseAds\",ErrorUserAgent:\"error_userAgent\",DataReady:\"data_ready\",OfferWallApiError:\"error_offerWallApi\",TTS:\"times_to_show\",PostView:\"post_view\",GotoStore:\"open_store\",Version:n.ver||\"TEST\"},Error:{NoAds:\"NO_ADS\",UnknownUserAgent:\"UA_ERROR\",BadRequest:\"NO_ADS\",Other:\"NO_ADS\"}}}(),n.Layout=function(e){var t=n.template,o={Video:\"#video\",Video_Container:\".video\",App_Image:\"#main_app_img\",Title:\".main_app_title\",Rate_Number:\".rate\",Rating:\".rating\",Downloads:\".downloads\",Downloads_Number:\".downloads_number\",Description:\".desc\",Install_Button:\".install\",Skip:\".skip\",SkipText:\".skipText\",Close_Button:\".close_button\",More_Apps:\".more_apps\",More_Apps_Section:\".suggested_apps\",Small_App_Template:\"#app_template\",Click_Section:\"#click_section\",Footer:\".footer\",Header:\".header\",Disclosure:\".disclosure\",Sound_Button:\".sound_button\"},i=document.createElement(\"div\");i.id=\"appnext\",i.className=\"appnext\";var a,r,s,d=screen.width<screen.height?screen.height:screen.width,l={isLoaded:!1,isVisible:function(e){var t=e.getBoundingClientRect(),n=Math.max(document.documentElement.clientHeight,window.innerHeight);return!(t.bottom<0||t.top-n>=0)&&this.isLoaded},calcHeight:function(){if(this.isLoaded){var e=document.documentElement.clientWidth,t=document.documentElement.clientHeight,n=(this.Click_Section&&this.Click_Section.offsetHeight,this.Footer?this.Footer.offsetHeight:0),o=this.Header?this.Header.offsetHeight:0,i=180*e/320;this.Video_Container.style.height=i+\"px\",this.Video.style.height=i+\"px\";var a=t-this.More_Apps_Section.offsetTop-n-o;this.More_Apps_Section.style.height=a+\"px\",d<500&&this.Container.classList.add(\"min\"),setTimeout(function(){window.scrollTo(0,1)},600),setTimeout(function(){window.scrollTo(0,1)},1e3),window.scrollTo(0,1)}},resize:function(){n.Layout.calcHeight(),setTimeout(n.Layout.calcHeight.call(n.Layout),100)},loadStyle:function(){if(!this.isLoaded){this.isLoaded=!0,i.innerHTML=t;var e=document.createElement(\"meta\");e.name=\"viewport\",e.content=\"user-scalable=1\";var o=document.querySelectorAll(\"meta[name=\'viewport\']\");s=o[o.length-1]||e,r=document.createElement(\"meta\"),r.name=\"viewport\",r.content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\";var d=n.css||\"\";a=document.createElement(\"style\"),a.type=\"text/css\",a.innerHTML=d,document.head.appendChild(a),document.head.appendChild(r)}},destroy:function(e){if(this.isLoaded){this.isLoaded=!1,document.head.removeChild(r),document.body.removeChild(this.Container),document.head.removeChild(this.Style),document.head.appendChild(s);for(var t=document.querySelectorAll(\".appnext_cb\"),o=0;o<t.length;o++)document.body.removeChild(t[o]);return window.removeEventListener(\"resize\",n.Layout.resize),e}},get Container(){return i},get Style(){return a},set Style(e){a=e},getAppTemplate:function(){var e={},t=document.createElement(\"div\");t.innerHTML=l.Small_App_Template.innerHTML;var n={App_Image:\".icon img\",Title:\".title\",Rate_Number:\".rate\",Rating:\".rating\",Description:\".desc\",Click_Section:\".app_container\",Container:\".app_container\",Install_Button:\".install_btn\"};for(var o in n)!function(n,o){Object.defineProperty(e,n,{get:function(){return t.querySelector(o[n])||document.createElement(\"div\")},enumerable:!0})}(o,n);return e}};for(var p in o)!function(e){Object.defineProperty(l,e,{get:function(){return i.querySelector(o[e])||document.createElement(\"div\")},enumerable:!0})}(p);return l}(n.API);var o=function(){function e(){var e=new Date(Date.now()+6e4*parseInt(n.times_to_show_reset));localStorage.setItem(\"appnext_tts_exp_time\",e.getTime()),localStorage.setItem(\"appnext_tts\",n.times_to_show)}try{if(n.times_to_show){\"\"==n.times_to_show_reset&&(n.times_to_show_reset=1);var t=localStorage.getItem(\"appnext_tts\");if(!t)return e(),!0;var o=localStorage.getItem(\"appnext_tts_exp_time\");if(Date.now()<o){if(0==(t-=1))return!1;localStorage.setItem(\"appnext_tts\",t)}else localStorage.removeItem(\"appnext_tts\"),localStorage.removeItem(\"appnext_tts_exp_time\"),e()}return!0}catch(e){return!0}};return n.getStoreDownloadsText=function(e){var t=parseInt(e);return e.length>8?t/1e6+\"M\":e.length>4?t/1e3+\"K\":t},n.setTimeout=function(){var e=parseInt(n.timeout);!isNaN(e)&&n.timeout>0&&setTimeout(function(){n.API.log(n.API.TP12.Timeout),n.Layout.destroy(\"timeout\")},1e3*e)},n.gtsWindow=null,n.open=function(e){if(null==n.gtsWindow){n.Layout.Video.pause(),n.API.log(n.API.TP12.GotoStore),n.DFP_CLICK_MACRO&&(e.urlApp=n.DFP_CLICK_MACRO+e.urlApp);var t=e.urlApp;n.gtsWindow=window.open(t,\"_top\");var o=function(e){return function(){document.hidden&&(e.gtsWindow=null,clearInterval(e.gtsInterval))}}(n);n.gtsInterval=setInterval(o,10);var i=function(e){return function(){e.gtsWindow=null,clearInterval(e.gtsInterval)}}(n);setTimeout(i,1500)}},n.redirect=function(e){window.open(e,\"_top\")},n.setParams=function(e){for(key in e)n[key]=decodeURIComponent(e[key]);\"true\"==n.use_skip&&(n.ad_server=\"false\"),\"false\"!=n.ad_server&&(n.ad_server=\"true\")},n.bindVideoEvents=function(e,t,o,i){function a(){t.src=d,o.removeEventListener(\"click\",a,!1)}function r(){this.currentTime>0||(o.classList.add(\"waiting\"),t.removeEventListener(\"loadeddata\",s))}function s(){o.classList.remove(\"waiting\")}var d=\"\";switch(n.video_length){case\"15\":d=e.urlVideo||e.urlVideoHigh||e.urlVideo30Sec||e.urlVideo30SecHigh;break;case\"30\":d=e.urlVideo30Sec||e.urlVideo30SecHigh||e.urlVideo||e.urlVideoHigh;break;default:d=e.urlVideo||e.urlVideo30Sec||e.urlVideoHigh||e.urlVideo30SecHigh}if(\"\"==d||\"static\"==n.creative)return o.classList.remove(\"play\"),t.style.display=\"none\",!1;if(\"static\"!=n.creative&&\"\"!=d){\"static\"!=n.creative&&\"\"!=d&&(\"true\"==n.auto_play?(o.classList.remove(\"play\"),t.autoplay=!0,\"600\"==n.osid&&(t.autoplay=!1),a()):o.addEventListener(\"click\",a)),\"true\"==n.mute&&i.classList.add(\"mute_off\"),i.addEventListener(\"click\",function(e){e.stopPropagation(),this.classList.contains(\"mute_off\")?(this.classList.remove(\"mute_off\"),t.muted=!1):(this.classList.add(\"mute_off\"),t.muted=!0)}),t.addEventListener(\"ended\",function(){o.classList.add(\"play\"),n.API.log(n.API.TP12.Ended,null,e)}),t.addEventListener(\"error\",function(e){var t=e.target.error?e.target.error.code:0,o=\"\";switch(t){case 1:o=\"MEDIA_ERR_ABORTED\";break;case 2:o=\"MEDIA_ERR_NETWORK\";break;case 3:o=\"MEDIA_ERR_DECODE\";break;case 4:o=\"MEDIA_ERR_SRC_NOT_SUPPORTED \"}n.API.log(n.API.TP12.VideoError,this.src+\"_ERR_CODE_\"+t+\"_MSG_\"+o+\"_USER_AGENT_\"+navigator.userAgent)});var l=!1;t.addEventListener(\"waiting\",r),t.addEventListener(\"loadstart\",r),t.addEventListener(\"loadeddata\",s),t.addEventListener(\"canplay\",function(){s();var t=Date.now()-n.timstamp;n.API.log(n.API.TP12.Canplay,t.toString(),e)}),o.addEventListener(\"click\",function(e){this.classList.contains(\"play\")?(o.style.backgroundImage=\"\",t.play()):t.pause()}),t.addEventListener(\"pause\",function(){o.classList.remove(\"waiting\"),o.classList.add(\"play\"),this.currentTime!=this.duration&&n.API.log(n.API.TP12.Paused,null,e)}),t.addEventListener(\"play\",function(){o.classList.remove(\"play\"),i.style.display=\"block\",0==this.currentTime&&0==l?(l=!0,n.API.log(n.API.TP12.Play,null,e)):n.API.log(n.API.TP12.Resumed,null,e)})}return!0},n.bindMainAppEvents=function(e){n.API.postView(e),n.Layout.App_Image.addEventListener(\"load\",function(){n.API.notifyImpression(e,this);var t=Date.now()-n.timstamp;n.API.log(n.API.TP12.AdDisplayed,t.toString(),e)}),n.Layout.Click_Section.addEventListener(\"click\",function(){n.open(e)}),n.Layout.Install_Button.addEventListener(\"click\",function(t){t.stopPropagation(),n.open(e)})},n.filterByCreative=function(e){for(var t=[],o=0;o<e.length;o++){var i=e[o];switch(i.index=o,n.creative){case\"video\":\"\"==i.urlVideo&&\"\"==i.urlVideoHigh&&\"\"==i.urlVideo30Sec&&\"\"==i.urlVideo30SecHigh||t.push(i);break;case\"static\":\"\"!=i.urlImgWide&&t.push(i);break;default:\"\"==i.urlVideo&&\"\"==i.urlVideoHigh&&\"\"==i.urlVideo30Sec&&\"\"==i.urlVideo30SecHigh&&\"\"==i.urlImgWide||t.push(i)}}return 0==t.length&&(n.API.log(n.API.TP12.NoAds),n.error(n.API.Error.NoAds),n.Layout.destroy(n.API.TP12.NoAds)),t},n.getMainApp=function(e){var t=n.filterByCreative(e);if(0==t.length)return!1;var o=!1,i=!1;if(0==t.length)return!1;for(var a=0;a<t.length;a++){var r=t[a];{if(!n.getCookie(r.bannerId)){o=r;break}i=!0}}return!o&&i&&(n.removeCookies(t),o=t[0]),n.setCookie(o.bannerId,!0,6),e.splice(o.index,1),o},n.parseApp=function(e){\"true\"==n.ad_server&&(e=n.replaceLinkSrc(e));var t=n.Layout.getAppTemplate();return t.App_Image.src=e.urlImg,t.Title.textContent=e.title,t.Description.textContent=e.desc,0!=e.storeRating?t.Rate_Number.textContent=e.storeRating:t.Rating.style.display=\"none\",t.Click_Section.addEventListener(\"click\",function(){n.open(e)}),t.Install_Button.textContent=e.buttonText||\"Install\",t.Container},n.parseMainApp=function(e){\"true\"==n.ad_server&&(e=n.replaceLinkSrc(e)),\"\"!=e.urlImgWide&&(n.Layout.Video_Container.style.backgroundImage=\"url(\'\"+e.urlImgWide+\"\')\"),n.Layout.App_Image.src=e.urlImg,\"true\"!=n.mute&&1!=n.mute||(n.Layout.Video.muted=!0),n.Layout.Title.textContent=e.title,0!=e.storeRating?n.Layout.Rate_Number.textContent=e.storeRating:n.Layout.Rate_Number.style.display=\"none\",\"Android\"==n.osType&&\"0\"!=e.storeDownloads?n.Layout.Downloads_Number.textContent=n.getStoreDownloadsText(e.storeDownloads):n.Layout.Downloads.style.display=\"none\",n.Layout.Description.textContent=e.desc,n.Layout.Install_Button.textContent=n.b_title||\"Install\",n.b_color&&(n.Layout.Install_Button.style.background=\"#\"+n.b_color),n.skip_title&&(n.Layout.SkipText.textContent=n.skip_title),\"false\"==n.show_rating&&(n.Layout.Downloads.style.display=\"none\",n.Layout.Rating.style.display=\"none\"),\"false\"==n.show_desc&&(n.Layout.Description.style.display=\"none\")},n.setContent=function(e){function t(){var e=Date.now()-n.timstamp;n.API.log(n.API.TP12.AdClosed,e.toString()),n.Layout.destroy(\"close\"),n.skip_url&&window.open(n.skip_url)}var o=n.getMainApp(e);if(0==o)return n.Layout.destroy(),void n.error(n.API.Error.Other);var i=n.bindVideoEvents(o,n.Layout.Video,n.Layout.Video_Container,n.Layout.Sound_Button);n.parseMainApp(o),n.bindMainAppEvents(o);for(var a=e.length>6?6:e.length,r=0;r<a&&r!=n.ads_to_show;r++)!function(e){var t=n.parseApp(e);n.Layout.More_Apps_Section.appendChild(t)}(e[r]);n.auto_play_default&&i&&(n.Layout.Sound_Button.style.display=\"block\"),\"true\"==n.ad_server?(n.Layout.Close_Button.addEventListener(\"click\",t),n.Layout.Skip.style.display=\"none\"):(n.Layout.Skip.addEventListener(\"click\",t),n.Layout.Close_Button.style.display=\"none\")},n.replaceLinkSrc=function(e){var t=\"cdn3.appnext.com\",n=\"appnext.hs.llnwd.net\",o=\"appnext-a.akamaihd.net\";return e.urlImg=e.urlImg.replace(n,t).replace(o,t),e.urlImgWide=e.urlImgWide.replace(n,t).replace(o,t),e.urlVideo=e.urlVideo.replace(n,t).replace(o,t),e.urlVideo30Sec=e.urlVideo30Sec.replace(n,t).replace(o,t),e.urlVideo30SecHigh=e.urlVideo30SecHigh.replace(n,t).replace(o,t),e.urlVideoHigh=e.urlVideoHigh.replace(n,t).replace(o,t),e},n.parseAds=function(e){if(\"false\"!=n.ad_server&&(n.ad_server=\"true\"),void 0!==e.rnd||0==Object.keys(e).length)return n.API.log(n.API.TP12.OfferWallApiError,e.rnd[0].cb),n.Layout.destroy(e.rnd.cb),n.error(n.API.Error.Other),!1;var o=e.apps;if(n.parent_url)for(var i=0;i<o.length;i++)o[i].urlApp+=\"&r=\"+encodeURIComponent(n.parent_url);n.Layout.loadStyle(),document.body.appendChild(n.Layout.Container),n.setContent(o),n.API.log(n.API.TP12.DataReady),t(o[0]),window.addEventListener(\"resize\",n.Layout.resize,!1,!0),setTimeout(function(){n.Layout.resize()},50),setTimeout(function(){n.Layout.resize()},600),n.setTimeout()},n.error=\"function\"==typeof n.onError?n.onError:function(){},n.load=function(){return!!n.id&&(\"unknown\"==n.osType?(n.API.log(n.API.TP12.ErrorUserAgent,navigator.userAgent),n.error(n.API.Error.UnknownUserAgent),!1):o()?(n.API.loadAds(n.parseAds),n.API.setGPI(),!0):(n.API.log(n.API.TP12.TTS,n.times_to_show+\"_\"+n.times_to_show_reset),!1))},n}(Appnext),Appnext=function(e){function t(e){!function(e){var t=o.parseApp(e);t.id=\"bid\"+e.bannerId,o.Layout.Container.appendChild(t)}(e)}function n(e){o.Layout.Disclosure.addEventListener(\"click\",function(t){t.stopPropagation();var n=Math.floor(10*Math.random())+e.urlApp.match(\"[?&]e=([^&]+)\")[1]+Math.floor(10*Math.random()),i=\"https://www.appnext.com/privacy_policy/index.html?z=\"+n+\"&geo=\"+e.country;\"true\"==o.gdpr&&(i+=\"&edda=1\"),o.redirect(i)},!1),\"true\"==o.gdpr&&(o.Layout.Disclosure.classList.add(\"gdpr\"),o.Layout.Container.classList.add(\"gdpr\"))}if(e){var o=e;o.Layout.destroy,o.setContent,o.parseAds;return o.redirect=function(e){o.openLink(e)},o.open=function(e){o.isOpen=!0,o.openStore(JSON.stringify(e))},o.loadBanner=function(e,i){console.log(i),o.Layout.loadStyle(),document.body.appendChild(o.Layout.Container),t(e),n(e),o.Layout.Container.classList.add(i)},o.parseApp=function(e){function t(t){t.preventDefault(),t.stopPropagation(),o.open(e)}var n=o.Layout.getAppTemplate(),i=document.createElement(\"div\");i.classList.add(\"contianer\"),i.innerHTML=n.Container.innerHTML;var a=i.querySelector(\".wide_image\"),r=i.querySelector(\".app_icon\"),s=i.querySelector(\".app_title\"),d=i.querySelector(\".install\"),l=i.querySelector(\".app_desc\");return r.style.backgroundImage=\"url(\'\"+e.urlImg+\"\')\",s.textContent=e.title,e.desc.length>75?l.textContent=e.desc.slice(0,70)+\"...\":l.textContent=e.desc,o.b_title.length>12&&(o.b_title=o.b_title.slice(0,12)),d.textContent=o.b_title||\"Install\",o.b_color&&(d.style.background=\"#\"+o.b_color),a.style.backgroundImage=\"url(\'\"+e.urlImgWide+\"\')\",i.addEventListener(\"click\",t),i},o.Layout.calcHeight=function(){},o.setContent=function(e){for(var i=0;i<e.length;i++)\"\"==e[i].urlImgWide&&(e[i].urlImgWide=e[i].urlImg,e[i].isIconAsWideImg=!0);if(e=o.filterByCreative(e),e.length){for(var a=0,r=[],s=[],i=0;i<e.length;i++)o.getCookie(e[i].bannerId)?s.push(e[i]):r.push(e[i]);0==r.length&&o.removeCookies(s);for(var d=r.concat(s),i=0;i<d.length&&i<1;i++)n(d[i]),t(d[i]),a++}},o}}(Appnext);"

    return-object v0
.end method

.method protected getJSurl()Ljava/lang/String;
    .registers 2

    const-string v0, "https://cdn.appnext.com/tools/sdk/banner/2.4.3/banner.min.js"

    return-object v0
.end method

.method protected getLayout()I
    .registers 4

    .line 117
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {v1}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 118
    sget v0, Lcom/appnext/banners/R$layout;->apnxt_banner:I

    return v0

    .line 119
    :cond_17
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    invoke-virtual {v1}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 120
    sget v0, Lcom/appnext/banners/R$layout;->apnxt_large_banner:I

    return v0

    .line 121
    :cond_2e
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    invoke-virtual {v1}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 122
    sget v0, Lcom/appnext/banners/R$layout;->apnxt_medium_rectangle:I

    return v0

    .line 124
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong banner size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getSelectedAd()Lcom/appnext/banners/BannerAdData;
    .registers 6

    .line 217
    iget-object v0, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    if-eqz v0, :cond_18

    invoke-super {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getBannerID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    invoke-virtual {v1}, Lcom/appnext/banners/BannerAdData;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 218
    :cond_18
    new-instance v0, Lcom/appnext/banners/BannerAdData;

    invoke-super {p0}, Lcom/appnext/banners/a;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appnext/banners/BannerAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    iput-object v0, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    invoke-virtual {v2}, Lcom/appnext/banners/BannerAdData;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&tem_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    invoke-virtual {v3, v4}, Lcom/appnext/banners/BannerAd;->getTemId(Lcom/appnext/banners/BannerAdData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerAdData;->setImpressionURL(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    invoke-virtual {v3}, Lcom/appnext/banners/BannerAdData;->getAppURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getBannerAd()Lcom/appnext/banners/BannerAd;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    invoke-virtual {v2, v3}, Lcom/appnext/banners/BannerAd;->getTemId(Lcom/appnext/banners/BannerAdData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerAdData;->setAppURL(Ljava/lang/String;)V

    .line 222
    :cond_71
    iget-object v0, p0, Lcom/appnext/banners/g;->selectedAd:Lcom/appnext/banners/BannerAdData;

    return-object v0
.end method

.method protected getTargetJSurl()Ljava/lang/String;
    .registers 2

    const-string v0, "https://cdn.appnext.com/tools/sdk/banner/2.4.3/result.min.js"

    return-object v0
.end method

.method protected getWebInterface()Lcom/appnext/banners/g$a;
    .registers 2

    .line 238
    new-instance v0, Lcom/appnext/banners/g$a;

    invoke-direct {v0, p0}, Lcom/appnext/banners/g$a;-><init>(Lcom/appnext/banners/g;)V

    return-object v0
.end method

.method protected getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .line 234
    new-instance v0, Lcom/appnext/banners/g$b;

    invoke-direct {v0, p0}, Lcom/appnext/banners/g$b;-><init>(Lcom/appnext/banners/g;)V

    return-object v0
.end method

.method public impression()V
    .registers 3

    .line 415
    invoke-virtual {p0}, Lcom/appnext/banners/g;->isReportedImpression()Z

    move-result v0

    .line 417
    invoke-super {p0}, Lcom/appnext/banners/a;->impression()V

    .line 419
    invoke-virtual {p0}, Lcom/appnext/banners/g;->isReportedImpression()Z

    move-result v1

    if-eq v0, v1, :cond_10

    .line 420
    invoke-direct {p0}, Lcom/appnext/banners/g;->activateAutoRefresh()V

    :cond_10
    return-void
.end method

.method protected inflateView(ILcom/appnext/core/AppnextAd;)V
    .registers 5

    .line 50
    :try_start_0
    iget-object p1, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_13

    .line 51
    iget-object p1, p0, Lcom/appnext/banners/g;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 52
    iget-object p1, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 53
    iget-object p1, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 56
    :cond_13
    iget-object p1, p0, Lcom/appnext/banners/g;->context:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 57
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getLayout()I

    move-result p2

    iget-object v0, p0, Lcom/appnext/banners/g;->rootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/appnext/banners/g;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    .line 59
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 64
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 65
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 66
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 68
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_80

    .line 69
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 71
    :cond_80
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p2, v0, :cond_8f

    .line 72
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 74
    :cond_8f
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    new-instance v0, Lcom/appnext/banners/g$1;

    invoke-direct {v0, p0}, Lcom/appnext/banners/g$1;-><init>(Lcom/appnext/banners/g;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 82
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    invoke-virtual {p0}, Lcom/appnext/banners/g;->getJSurl()Ljava/lang/String;

    move-result-object p2

    .line 84
    iget-object v0, p0, Lcom/appnext/banners/g;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/core/webview/AppnextWebView;->u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object v0

    new-instance v1, Lcom/appnext/banners/g$2;

    invoke-direct {v1, p0, p2}, Lcom/appnext/banners/g$2;-><init>(Lcom/appnext/banners/g;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/appnext/core/webview/AppnextWebView;->a(Ljava/lang/String;Lcom/appnext/core/webview/AppnextWebView$c;)V

    .line 106
    iget-object p2, p0, Lcom/appnext/banners/g;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/appnext/core/webview/AppnextWebView;->u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getTargetJSurl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/appnext/core/webview/AppnextWebView;->a(Ljava/lang/String;Lcom/appnext/core/webview/AppnextWebView$c;)V

    .line 107
    iget-object p2, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/appnext/banners/g;->getWebInterface()Lcom/appnext/banners/g$a;

    move-result-object v0

    const-string v1, "Appnext"

    invoke-virtual {p2, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/appnext/banners/g;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_d2
    .catchall {:try_start_0 .. :try_end_d2} :catchall_d2

    :catchall_d2
    return-void
.end method

.method protected loadJS(Ljava/lang/String;)V
    .registers 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading js "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 130
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method protected loadWebview(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 136
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<html><body><script>"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</script></body></html>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    iget-object v1, p0, Lcom/appnext/banners/g;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3d

    :catchall_3d
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    if-nez p1, :cond_c

    .line 227
    iget-boolean p1, p0, Lcom/appnext/banners/g;->clicked:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/appnext/banners/g;->clicked:Z

    .line 229
    invoke-direct {p0, p1}, Lcom/appnext/banners/g;->openResultPage(Z)V

    :cond_c
    return-void
.end method
