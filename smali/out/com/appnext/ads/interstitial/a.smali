.class public final Lcom/appnext/ads/interstitial/a;
.super Lcom/appnext/core/d;
.source "SourceFile"


# static fields
.field private static final aM:I = 0x1e

.field private static cl:Lcom/appnext/ads/interstitial/a;


# instance fields
.field private bT:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/appnext/core/d;-><init>()V

    return-void
.end method

.method public static declared-synchronized G()Lcom/appnext/ads/interstitial/a;
    .registers 2

    const-class v0, Lcom/appnext/ads/interstitial/a;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/appnext/ads/interstitial/a;->cl:Lcom/appnext/ads/interstitial/a;

    if-nez v1, :cond_e

    .line 36
    new-instance v1, Lcom/appnext/ads/interstitial/a;

    invoke-direct {v1}, Lcom/appnext/ads/interstitial/a;-><init>()V

    sput-object v1, Lcom/appnext/ads/interstitial/a;->cl:Lcom/appnext/ads/interstitial/a;

    .line 37
    :cond_e
    sget-object v1, Lcom/appnext/ads/interstitial/a;->cl:Lcom/appnext/ads/interstitial/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Lcom/appnext/core/AppnextAd;)I
    .registers 4

    .line 181
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 182
    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object p1

    const-string v1, "new"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getAdPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p0, 0x1

    return p0

    .line 184
    :cond_1d
    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object p1

    const-string v1, "existing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getAdPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_35

    const/4 p0, 0x2

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/util/ArrayList;Lcom/appnext/core/AppnextAd;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;",
            "Lcom/appnext/core/AppnextAd;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method private a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/Ad;)Z
    .registers 9

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x35323192    # -6743863.0f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2b

    const v1, 0x6b0147b

    if-eq v0, v1, :cond_21

    const v1, 0x31c90f9f

    if-eq v0, v1, :cond_17

    goto :goto_35

    :cond_17
    const-string v0, "managed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    const/4 p2, 0x0

    goto :goto_36

    :cond_21
    const-string v0, "video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    const/4 p2, 0x1

    goto :goto_36

    :cond_2b
    const-string v0, "static"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    const/4 p2, 0x2

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p2, -0x1

    :goto_36
    if-eqz p2, :cond_67

    if-eq p2, v4, :cond_52

    if-eq p2, v3, :cond_3d

    goto :goto_82

    .line 173
    :cond_3d
    invoke-static {p1}, Lcom/appnext/ads/interstitial/a;->c(Lcom/appnext/core/AppnextAd;)Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appnext/ads/interstitial/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_82

    return v4

    .line 169
    :cond_52
    invoke-static {p1}, Lcom/appnext/ads/interstitial/a;->hasVideo(Lcom/appnext/core/AppnextAd;)Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appnext/ads/interstitial/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_82

    return v4

    .line 165
    :cond_67
    invoke-static {p1}, Lcom/appnext/ads/interstitial/a;->c(Lcom/appnext/core/AppnextAd;)Z

    move-result p2

    if-nez p2, :cond_73

    invoke-static {p1}, Lcom/appnext/ads/interstitial/a;->hasVideo(Lcom/appnext/core/AppnextAd;)Z

    move-result p2

    if-eqz p2, :cond_82

    :cond_73
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appnext/ads/interstitial/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_82

    return v4

    :cond_82
    :goto_82
    return v2
.end method

.method private static b(Landroid/content/Context;Lcom/appnext/core/AppnextAd;)I
    .registers 5

    .line 190
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 191
    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCptList()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3f

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCptList()Ljava/lang/String;

    move-result-object p1

    const-string v2, "[]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_3f

    .line 195
    :cond_1f
    :try_start_1f
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCptList()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 197
    :goto_29
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 198
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {p0, v2}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_37} :catch_3f

    if-eqz v2, :cond_3a

    return v1

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3d
    const/4 p0, 0x3

    return p0

    :catch_3f
    :cond_3f
    :goto_3f
    return v1
.end method

.method private static c(Lcom/appnext/core/AppnextAd;)Z
    .registers 2

    .line 150
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getWideImageURL()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static hasVideo(Lcom/appnext/core/AppnextAd;)Z
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrl30Sec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->getVideoUrlHigh30Sec()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p0, 0x0

    return p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/appnext/core/g;)I
    .registers 7

    .line 65
    check-cast p2, Lcom/appnext/core/AppnextAd;

    .line 1181
    new-instance v0, Lcom/appnext/ads/interstitial/InterstitialAd;

    invoke-direct {v0, p2}, Lcom/appnext/ads/interstitial/InterstitialAd;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 1182
    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getAdPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    goto :goto_39

    .line 1184
    :cond_20
    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getCampaignGoal()Ljava/lang/String;

    move-result-object v1

    const-string v3, "existing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/InterstitialAd;->getAdPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x2

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 66
    :goto_39
    invoke-static {p1, p2}, Lcom/appnext/ads/interstitial/a;->b(Landroid/content/Context;Lcom/appnext/core/AppnextAd;)I

    move-result p1

    if-nez v0, :cond_42

    if-nez p1, :cond_42

    return v2

    :cond_42
    if-eqz v0, :cond_45

    return v0

    :cond_45
    return p1
.end method

.method protected final a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/appnext/core/Ad;)Lcom/appnext/core/AppnextAd;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/appnext/core/Ad;",
            ")",
            "Lcom/appnext/core/AppnextAd;"
        }
    .end annotation

    .line 154
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appnext/core/AppnextAd;

    .line 155
    invoke-direct {p0, p2, p3, p4}, Lcom/appnext/ads/interstitial/a;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/Ad;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "&auid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object p3

    goto :goto_10

    :cond_e
    const-string p3, "600"

    :goto_10
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&vidmin="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    if-nez p2, :cond_1e

    move-object p4, p3

    goto :goto_26

    :cond_1e
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getMinVideoLength()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :goto_26
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "&vidmax="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_32

    move-object p2, p3

    goto :goto_3a

    .line 53
    :cond_32
    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getMaxVideoLength()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_3a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/appnext/ads/interstitial/a;->bT:Ljava/lang/String;

    const-string p4, "static"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    const-string p3, "&creative=0"

    :cond_49
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 129
    invoke-super {p0, p1}, Lcom/appnext/core/d;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-static {p1}, Lcom/appnext/core/webview/AppnextWebView;->u(Landroid/content/Context;)Lcom/appnext/core/webview/AppnextWebView;

    move-result-object p1

    check-cast p2, Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {p2}, Lcom/appnext/ads/interstitial/Interstitial;->getPageUrl()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/appnext/core/webview/AppnextWebView;->a(Ljava/lang/String;Lcom/appnext/core/webview/AppnextWebView$c;)V

    if-eqz p3, :cond_32

    .line 59
    invoke-virtual {p3}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-virtual {p3}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_32

    .line 60
    invoke-virtual {p3}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appnext/core/AppnextAd;

    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_32
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Ljava/lang/String;)V
    .registers 6

    .line 46
    iput-object p5, p0, Lcom/appnext/ads/interstitial/a;->bT:Ljava/lang/String;

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;)V

    return-void
.end method

.method protected final a(Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "error "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/appnext/core/Ad;)V
    .registers 3

    .line 134
    invoke-super {p0, p1, p2}, Lcom/appnext/core/d;->a(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/appnext/core/Ad;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/appnext/core/Ad;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/util/ArrayList<",
            "*>;)Z"
        }
    .end annotation

    .line 90
    move-object v0, p2

    check-cast v0, Lcom/appnext/ads/interstitial/Interstitial;

    invoke-virtual {v0}, Lcom/appnext/ads/interstitial/Interstitial;->getCreativeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/appnext/ads/interstitial/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/appnext/core/Ad;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method protected final b(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p2}, Lcom/appnext/ads/interstitial/a;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 107
    :cond_8
    invoke-virtual {p0, p2}, Lcom/appnext/ads/interstitial/a;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    .line 113
    :cond_13
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/appnext/ads/interstitial/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/appnext/core/Ad;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    if-nez p1, :cond_1a

    return-object v1

    .line 2122
    :cond_1a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 2123
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method protected final c(Lcom/appnext/core/Ad;)Lcom/appnext/core/p;
    .registers 2

    .line 95
    invoke-static {}, Lcom/appnext/ads/interstitial/c;->K()Lcom/appnext/ads/interstitial/c;

    move-result-object p1

    return-object p1
.end method

.method protected final d(Lcom/appnext/core/Ad;)Z
    .registers 6

    .line 99
    invoke-virtual {p0, p1}, Lcom/appnext/ads/interstitial/a;->h(Lcom/appnext/core/Ad;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0, p1}, Lcom/appnext/ads/interstitial/a;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p0, p1}, Lcom/appnext/ads/interstitial/a;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_38

    invoke-virtual {p0, p1}, Lcom/appnext/ads/interstitial/a;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/a;->aU()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method protected final g(Lcom/appnext/core/Ad;)V
    .registers 7

    if-eqz p1, :cond_18

    .line 211
    invoke-virtual {p0, p1}, Lcom/appnext/ads/interstitial/a;->j(Lcom/appnext/core/Ad;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    .line 212
    invoke-virtual {p0}, Lcom/appnext/ads/interstitial/a;->aW()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/b;

    invoke-direct {v1, p1}, Lcom/appnext/core/b;-><init>(Lcom/appnext/core/Ad;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method
