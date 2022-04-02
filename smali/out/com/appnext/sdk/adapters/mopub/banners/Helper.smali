.class public Lcom/appnext/sdk/adapters/mopub/banners/Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final AppnextAutoPlayExtraKey:Ljava/lang/String; = "AppnextAutoPlay"

.field protected static final AppnextBackButtonCanCloseExtraKey:Ljava/lang/String; = "AppnextBackButtonCanClose"

.field protected static final AppnextBannerSizeExtraKey:Ljava/lang/String; = "AppnextBannerSize"

.field protected static final AppnextButtonColorExtraKey:Ljava/lang/String; = "AppnextButtonColor"

.field protected static final AppnextCategoriesExtraKey:Ljava/lang/String; = "AppnextCategories"

.field protected static final AppnextClickEnabledExtraKey:Ljava/lang/String; = "AppnextClickEnabled"

.field protected static final AppnextCreativeTypeExtraKey:Ljava/lang/String; = "AppnextCreativeType"

.field protected static final AppnextLanguageExtraKey:Ljava/lang/String; = "AppnextLanguage"

.field protected static final AppnextMaxVideoLenExtraKey:Ljava/lang/String; = "AppnextMaxVideoLen"

.field protected static final AppnextMinVideoLenExtraKey:Ljava/lang/String; = "AppnextMinVideoLen"

.field protected static final AppnextMuteExtraKey:Ljava/lang/String; = "AppnextMute"

.field protected static final AppnextOrientationExtraKey:Ljava/lang/String; = "AppnextOrientation"

.field protected static final AppnextPlacementIdExtraKey:Ljava/lang/String; = "AppnextPlacementId"

.field protected static final AppnextPostbackExtraKey:Ljava/lang/String; = "AppnextPostback"

.field protected static final AppnextVideoLengthExtraKey:Ljava/lang/String; = "AppnextVideoLength"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getAppnextPlacementIdExtraKey(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_b

    const-string v0, "AppnextPlacementId"

    .line 42
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method protected static getBannerSize(Ljava/util/Map;)Lcom/appnext/banners/BannerSize;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appnext/banners/BannerSize;"
        }
    .end annotation

    if-eqz p0, :cond_33

    const-string v0, "AppnextBannerSize"

    .line 50
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "LARGE_BANNER"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 52
    sget-object p0, Lcom/appnext/banners/BannerSize;->LARGE_BANNER:Lcom/appnext/banners/BannerSize;

    return-object p0

    :cond_15
    const-string v0, "MEDIUM_RECTANGLE"

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 54
    sget-object p0, Lcom/appnext/banners/BannerSize;->MEDIUM_RECTANGLE:Lcom/appnext/banners/BannerSize;

    return-object p0

    :cond_20
    const-string v0, "BANNER"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 56
    sget-object p0, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    return-object p0

    .line 58
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_33
    sget-object p0, Lcom/appnext/banners/BannerSize;->BANNER:Lcom/appnext/banners/BannerSize;

    return-object p0
.end method

.method protected static hasAdConfigServerExtras(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_44

    const-string v0, "AppnextButtonColor"

    .line 67
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextCategories"

    .line 68
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextPostback"

    .line 69
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextOrientation"

    .line 70
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextMinVideoLen"

    .line 71
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextMaxVideoLen"

    .line 72
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextBackButtonCanClose"

    .line 73
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "AppnextMute"

    .line 74
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    :cond_42
    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    const/4 p0, 0x0

    :goto_45
    return p0
.end method
