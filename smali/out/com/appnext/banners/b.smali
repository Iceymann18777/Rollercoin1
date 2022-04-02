.class final Lcom/appnext/banners/b;
.super Lcom/appnext/core/d;
.source "SourceFile"


# static fields
.field private static de:Lcom/appnext/banners/b;


# instance fields
.field private final aM:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lcom/appnext/core/d;-><init>()V

    const/16 v0, 0x32

    .line 24
    iput v0, p0, Lcom/appnext/banners/b;->aM:I

    return-void
.end method

.method public static declared-synchronized R()Lcom/appnext/banners/b;
    .registers 2

    const-class v0, Lcom/appnext/banners/b;

    monitor-enter v0

    .line 28
    :try_start_3
    sget-object v1, Lcom/appnext/banners/b;->de:Lcom/appnext/banners/b;

    if-nez v1, :cond_e

    .line 29
    new-instance v1, Lcom/appnext/banners/b;

    invoke-direct {v1}, Lcom/appnext/banners/b;-><init>()V

    sput-object v1, Lcom/appnext/banners/b;->de:Lcom/appnext/banners/b;

    .line 31
    :cond_e
    sget-object v1, Lcom/appnext/banners/b;->de:Lcom/appnext/banners/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Lcom/appnext/banners/BannerAdData;)I
    .registers 5

    .line 144
    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdData;->getCptList()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdData;->getCptList()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_3a

    .line 148
    :cond_1a
    :try_start_1a
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/appnext/banners/BannerAdData;->getCptList()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 149
    :goto_24
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_38

    .line 150
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {p0, v2}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_32} :catch_3a

    if-eqz v2, :cond_35

    return v1

    :cond_35
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_38
    const/4 p0, 0x3

    return p0

    :catch_3a
    :cond_3a
    :goto_3a
    return v1
.end method

.method private static a(Lcom/appnext/core/Ad;Lcom/appnext/core/AppnextAd;Ljava/lang/String;)Z
    .registers 8

    .line 123
    instance-of p0, p0, Lcom/appnext/banners/MediumRectangleAd;

    const/4 v0, 0x1

    if-eqz p0, :cond_58

    const/4 p0, -0x1

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x35323192    # -6743863.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_30

    const v2, 0x179a1

    if-eq v1, v2, :cond_26

    const v2, 0x6b0147b

    if-eq v1, v2, :cond_1c

    goto :goto_39

    :cond_1c
    const-string v1, "video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    const/4 p0, 0x2

    goto :goto_39

    :cond_26
    const-string v1, "all"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    const/4 p0, 0x0

    goto :goto_39

    :cond_30
    const-string v1, "static"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    const/4 p0, 0x1

    :cond_39
    :goto_39
    if-eqz p0, :cond_4a

    if-eq p0, v0, :cond_45

    if-eq p0, v3, :cond_40

    return v4

    .line 130
    :cond_40
    invoke-static {p1}, Lcom/appnext/banners/b;->hasVideo(Lcom/appnext/core/AppnextAd;)Z

    move-result p0

    return p0

    .line 128
    :cond_45
    invoke-static {p1}, Lcom/appnext/banners/b;->c(Lcom/appnext/core/AppnextAd;)Z

    move-result p0

    return p0

    .line 126
    :cond_4a
    invoke-static {p1}, Lcom/appnext/banners/b;->c(Lcom/appnext/core/AppnextAd;)Z

    move-result p0

    if-nez p0, :cond_58

    invoke-static {p1}, Lcom/appnext/banners/b;->hasVideo(Lcom/appnext/core/AppnextAd;)Z

    move-result p0

    if-eqz p0, :cond_57

    goto :goto_58

    :cond_57
    return v4

    :cond_58
    :goto_58
    return v0
.end method

.method static c(Lcom/appnext/core/AppnextAd;)Z
    .registers 2

    .line 166
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

.method static hasVideo(Lcom/appnext/core/AppnextAd;)Z
    .registers 3

    .line 162
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
    .registers 5

    .line 62
    new-instance v0, Lcom/appnext/banners/BannerAdData;

    check-cast p2, Lcom/appnext/core/AppnextAd;

    invoke-direct {v0, p2}, Lcom/appnext/banners/BannerAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    .line 63
    invoke-static {p1, v0}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/banners/BannerAdData;)I

    move-result p2

    if-eqz p2, :cond_e

    return p2

    .line 66
    :cond_e
    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getCampaignGoal()Ljava/lang/String;

    move-result-object p2

    const-string v1, "new"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getAdPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_26

    const/4 p1, 0x2

    return p1

    .line 68
    :cond_26
    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getCampaignGoal()Ljava/lang/String;

    move-result-object p2

    const-string v1, "existing"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getAdPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appnext/core/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3e

    const/4 p1, 0x1

    return p1

    :cond_3e
    const/4 p1, 0x0

    return p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;
    .registers 6

    .line 112
    invoke-virtual {p0, p2}, Lcom/appnext/banners/b;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 115
    :cond_8
    invoke-virtual {p0, p2}, Lcom/appnext/banners/b;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v1

    .line 119
    :cond_13
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appnext/core/AppnextAd;"
        }
    .end annotation

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/appnext/core/AppnextAd;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/appnext/core/Ad;",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appnext/core/AppnextAd;"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p3, :cond_4

    return-object p1

    .line 99
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/AppnextAd;

    .line 1123
    instance-of v1, p2, Lcom/appnext/banners/MediumRectangleAd;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6a

    const/4 v1, -0x1

    .line 1124
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x35323192    # -6743863.0f

    const/4 v6, 0x2

    if-eq v4, v5, :cond_44

    const v5, 0x179a1

    if-eq v4, v5, :cond_3a

    const v5, 0x6b0147b

    if-eq v4, v5, :cond_30

    goto :goto_4d

    :cond_30
    const-string v4, "video"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v1, 0x2

    goto :goto_4d

    :cond_3a
    const-string v4, "all"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v1, 0x0

    goto :goto_4d

    :cond_44
    const-string v4, "static"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v1, 0x1

    :cond_4d
    :goto_4d
    if-eqz v1, :cond_5e

    if-eq v1, v3, :cond_59

    if-eq v1, v6, :cond_54

    goto :goto_6b

    .line 1130
    :cond_54
    invoke-static {v0}, Lcom/appnext/banners/b;->hasVideo(Lcom/appnext/core/AppnextAd;)Z

    move-result v2

    goto :goto_6b

    .line 1128
    :cond_59
    invoke-static {v0}, Lcom/appnext/banners/b;->c(Lcom/appnext/core/AppnextAd;)Z

    move-result v2

    goto :goto_6b

    .line 1126
    :cond_5e
    invoke-static {v0}, Lcom/appnext/banners/b;->c(Lcom/appnext/core/AppnextAd;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-static {v0}, Lcom/appnext/banners/b;->hasVideo(Lcom/appnext/core/AppnextAd;)Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_6a
    const/4 v2, 0x1

    :cond_6b
    :goto_6b
    if-eqz v2, :cond_8

    .line 100
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appnext/banners/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return-object v0

    :cond_86
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

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "&auid="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object p2

    goto :goto_10

    :cond_e
    const-string p2, "1000"

    :goto_10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    move-object p3, p2

    check-cast p3, Lcom/appnext/banners/BannerAd;

    invoke-virtual {p3}, Lcom/appnext/banners/BannerAd;->getAdRequest()Lcom/appnext/core/c;

    move-result-object p3

    check-cast p3, Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {p3}, Lcom/appnext/banners/BannerAdRequest;->getCreativeType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 55
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 56
    instance-of p2, p2, Lcom/appnext/banners/MediumRectangleAd;

    if-eqz p2, :cond_25

    .line 57
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getWideImageURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appnext/core/f;->Y(Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_25
    return-void

    .line 53
    :cond_26
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "No Ads"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Lcom/appnext/banners/BannerAdRequest;)V
    .registers 8

    .line 44
    move-object v0, p2

    check-cast v0, Lcom/appnext/banners/BannerAd;

    new-instance v1, Lcom/appnext/banners/BannerAdRequest;

    invoke-direct {v1, p5}, Lcom/appnext/banners/BannerAdRequest;-><init>(Lcom/appnext/banners/BannerAdRequest;)V

    invoke-virtual {v0, v1}, Lcom/appnext/banners/BannerAd;->setAdRequest(Lcom/appnext/core/c;)V

    .line 45
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

    .line 91
    move-object v0, p2

    check-cast v0, Lcom/appnext/banners/BannerAd;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAd;->getAdRequest()Lcom/appnext/core/c;

    move-result-object v0

    check-cast v0, Lcom/appnext/banners/BannerAdRequest;

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdRequest;->getCreativeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appnext/banners/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/appnext/core/AppnextAd;

    move-result-object p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method protected final c(Lcom/appnext/core/Ad;)Lcom/appnext/core/p;
    .registers 2

    .line 86
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/appnext/core/Ad;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appnext/core/Ad;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/AppnextAd;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/appnext/banners/b;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appnext/core/a;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
