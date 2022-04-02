.class public Lcom/startapp/android/publish/ads/banner/Cover;
.super Lcom/startapp/android/publish/ads/banner/Banner;
.source "StartAppSDK"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/Banner;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method


# virtual methods
.method protected getBannerName()Ljava/lang/String;
    .registers 2

    const-string v0, "StartApp Cover"

    return-object v0
.end method

.method protected getBannerType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method protected getHeightInDp()I
    .registers 2

    const/16 v0, 0x9d

    return v0
.end method

.method protected getWidthInDp()I
    .registers 2

    const/16 v0, 0x12c

    return v0
.end method
