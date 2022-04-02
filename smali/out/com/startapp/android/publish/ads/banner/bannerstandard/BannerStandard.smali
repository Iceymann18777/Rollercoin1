.class public Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;
.super Lcom/startapp/android/publish/ads/banner/BannerBase;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/ads/banner/BannerInterface;
.implements Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final ID_WEBVIEW:I = 0x9876541

.field private static final TAG:Ljava/lang/String; = "BannerHtml"


# instance fields
.field protected adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

.field private adInformationContatiner:Landroid/widget/RelativeLayout;

.field private adInformationLayout:Lcom/startapp/android/publish/adsCommon/adinformation/b;

.field protected adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

.field private adSession:Lcom/b/a/a/a/b/b;

.field private callbackSent:Z

.field private defaultLoad:Z

.field private initBannerCalled:Z

.field private jsTag:Z

.field protected listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

.field private loaded:Z

.field private options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

.field private scheduledImpression:Lcom/startapp/android/publish/adsCommon/i;

.field private size:Lcom/startapp/android/publish/ads/banner/d;

.field private visible:Z

.field protected webView:Landroid/webkit/WebView;

.field private webViewTouched:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .registers 3

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 4

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 3

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/banner/BannerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->loaded:Z

    const/4 p3, 0x1

    .line 60
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webViewTouched:Z

    .line 61
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->jsTag:Z

    .line 62
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    .line 63
    iput-boolean p3, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->visible:Z

    .line 64
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    .line 72
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->callbackSent:Z

    const/4 p2, 0x0

    .line 74
    iput-object p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    .line 75
    iput-object p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    .line 165
    :try_start_18
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->init()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_2a

    :catch_1c
    move-exception p2

    .line 167
    sget-object p3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BannerStandard.constructor - unexpected error occurd"

    const-string v1, ""

    invoke-static {p1, p3, v0, p2, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setBannerListener(Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setBannerListener(Lcom/startapp/android/publish/ads/banner/BannerListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->loaded:Z

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webViewTouched:Z

    .line 61
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->jsTag:Z

    .line 62
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    .line 63
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->visible:Z

    .line 64
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    .line 72
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->callbackSent:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    .line 75
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    .line 148
    :try_start_18
    iput-boolean p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    .line 149
    iput-object p3, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 150
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->init()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_2e

    :catch_20
    move-exception p2

    .line 152
    sget-object p3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BannerStandard.constructor - unexpected error occurd"

    const-string v1, ""

    invoke-static {p1, p3, v0, p2, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webViewTouched:Z

    return p0
.end method

.method static synthetic access$002(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;Z)Z
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webViewTouched:Z

    return p1
.end method

.method static synthetic access$100(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;Lcom/startapp/android/publish/common/model/AdPreferences;)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setHardwareAcceleration(Lcom/startapp/android/publish/common/model/AdPreferences;)V

    return-void
.end method

.method static synthetic access$200(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Lcom/b/a/a/a/b/b;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adSession:Lcom/b/a/a/a/b/b;

    return-object p0
.end method

.method static synthetic access$202(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/b;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adSession:Lcom/b/a/a/a/b/b;

    return-object p1
.end method

.method static synthetic access$300(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->jsTag:Z

    return p0
.end method

.method static synthetic access$500(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Ljava/lang/String;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Ljava/lang/String;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Ljava/lang/String;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)Ljava/lang/String;
    .registers 1

    .line 53
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addAdInformationLayout()V
    .registers 7

    .line 172
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_3f

    .line 175
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    .line 176
    new-instance v1, Lcom/startapp/android/publish/adsCommon/adinformation/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/startapp/android/publish/adsCommon/adinformation/b$b;->a:Lcom/startapp/android/publish/adsCommon/adinformation/b$b;

    sget-object v4, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    iget-object v5, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v5}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->getAdInfoOverride()Lcom/startapp/android/publish/adsCommon/adinformation/c;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/startapp/android/publish/adsCommon/adinformation/b;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/adinformation/b$b;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Lcom/startapp/android/publish/adsCommon/adinformation/c;)V

    iput-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adsCommon/adinformation/b;

    .line 177
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adsCommon/adinformation/b;->a(Landroid/widget/RelativeLayout;)V

    .line 182
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4e

    .line 184
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4e} :catch_4e

    .line 190
    :catch_4e
    :cond_4e
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private determineSizeByScreen(Landroid/graphics/Point;Landroid/view/View;)V
    .registers 5

    .line 421
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setPointWidthIfNotSet(Landroid/graphics/Point;I)V

    .line 422
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-static {v0, p2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setPointHeightIfNotSet(Landroid/graphics/Point;I)V

    return-void
.end method

.method private getAvailableSize()Landroid/graphics/Point;
    .registers 7

    .line 351
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 352
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_25

    .line 353
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 357
    :cond_25
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_44

    .line 358
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 362
    :cond_44
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_5f

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_5f

    .line 363
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->a(Z)V

    .line 365
    :cond_5f
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_75

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_75

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_15b

    .line 366
    :cond_75
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 367
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_12b

    .line 368
    check-cast v1, Landroid/app/Activity;

    .line 369
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 372
    :try_start_87
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 374
    check-cast v2, Landroid/view/View;

    .line 375
    instance-of v3, v2, Lcom/startapp/android/publish/ads/banner/Banner;

    if-eqz v3, :cond_99

    .line 376
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    :cond_99
    :goto_99
    if-eqz v2, :cond_ee

    .line 378
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_a7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_ee

    .line 379
    :cond_a7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_c6

    .line 380
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setPointWidthIfNotSet(Landroid/graphics/Point;I)V

    .line 382
    :cond_c6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_e5

    .line 383
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setPointHeightIfNotSet(Landroid/graphics/Point;I)V

    .line 385
    :cond_e5
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    goto :goto_99

    :cond_ee
    if-nez v2, :cond_f4

    .line 388
    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->determineSizeByScreen(Landroid/graphics/Point;Landroid/view/View;)V

    goto :goto_15b

    .line 390
    :cond_f4
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setPointWidthIfNotSet(Landroid/graphics/Point;I)V

    .line 391
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/h;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setPointHeightIfNotSet(Landroid/graphics/Point;I)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_126} :catch_127

    goto :goto_15b

    .line 397
    :catch_127
    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->determineSizeByScreen(Landroid/graphics/Point;Landroid/view/View;)V

    goto :goto_15b

    .line 402
    :cond_12b
    :try_start_12b
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 403
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getWidthInDp()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setPointWidthIfNotSet(Landroid/graphics/Point;I)V

    .line 404
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getHeightInDp()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setPointHeightIfNotSet(Landroid/graphics/Point;I)V

    if-eqz v2, :cond_15b

    if-eqz v1, :cond_15b

    .line 406
    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/graphics/Point;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_14c} :catch_14d

    goto :goto_15b

    :catch_14d
    move-exception v2

    .line 410
    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BannerStandard.getAvailableSize - system service failed"

    const-string v5, ""

    invoke-static {v1, v3, v4, v2, v5}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15b
    :goto_15b
    const/4 v1, 0x3

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============ exit Application Size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] ========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BannerHtml"

    invoke-static {v3, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private getImpressionDelayMillis()J
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->p()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 507
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 510
    :cond_19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/common/metaData/MetaData;->getIABDisplayImpressionDelayInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private loadHtml()V
    .registers 4

    .line 494
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method private onFailedToReceiveBanner(Ljava/lang/String;)V
    .registers 3

    .line 486
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setErrorMessage(Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    if-eqz p1, :cond_11

    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->callbackSent:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 488
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->callbackSent:Z

    .line 489
    invoke-interface {p1, p0}, Lcom/startapp/android/publish/ads/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method private onPause()V
    .registers 2

    .line 643
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 644
    invoke-static {v0}, Lcom/startapp/common/a/c;->b(Landroid/webkit/WebView;)V

    :cond_7
    return-void
.end method

.method private onResume()V
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 638
    invoke-static {v0}, Lcom/startapp/common/a/c;->c(Landroid/webkit/WebView;)V

    :cond_7
    return-void
.end method

.method private setPointHeightIfNotSet(Landroid/graphics/Point;I)V
    .registers 4

    .line 432
    iget v0, p1, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_6

    .line 433
    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_6
    return-void
.end method

.method private setPointWidthIfNotSet(Landroid/graphics/Point;I)V
    .registers 4

    .line 426
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_6

    .line 427
    iput p2, p1, Landroid/graphics/Point;->x:I

    :cond_6
    return-void
.end method

.method private setSize(II)Z
    .registers 5

    .line 515
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getAvailableSize()Landroid/graphics/Point;

    move-result-object v0

    .line 517
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lt v1, p1, :cond_4c

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lt v0, p2, :cond_4c

    .line 518
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/ads/banner/d;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/ads/banner/d;->a(II)V

    .line 520
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/ads/banner/d;

    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/banner/d;->a()I

    move-result p2

    invoke-static {p1, p2}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result p1

    .line 521
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/ads/banner/d;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/d;->b()I

    move-result v0

    invoke-static {p2, v0}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result p2

    .line 524
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setMinimumWidth(I)V

    .line 525
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setMinimumHeight(I)V

    .line 527
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_41

    .line 529
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_45

    .line 531
    :cond_41
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 532
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 535
    :goto_45
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    .line 541
    :cond_4c
    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 543
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_64

    .line 545
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_6c

    .line 547
    :cond_64
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 548
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 550
    :goto_6c
    iget-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return p2
.end method


# virtual methods
.method protected cancelScheduledImpression(Z)V
    .registers 3

    .line 712
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->scheduledImpression:Lcom/startapp/android/publish/adsCommon/i;

    if-eqz v0, :cond_7

    .line 713
    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/i;->a(Z)V

    :cond_7
    return-void
.end method

.method protected getBannerId()I
    .registers 2

    .line 698
    iget v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->innerBannerStandardId:I

    return v0
.end method

.method protected getBannerName()Ljava/lang/String;
    .registers 2

    const-string v0, "StartApp Banner"

    return-object v0
.end method

.method protected getBannerType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getHeightInDp()I
    .registers 2

    const/16 v0, 0x32

    return v0
.end method

.method protected getOffset()I
    .registers 2

    .line 690
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 693
    :cond_6
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->a()I

    move-result v0

    return v0
.end method

.method protected getRefreshRate()I
    .registers 2

    .line 684
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;->i()I

    move-result v0

    return v0
.end method

.method protected getWidthInDp()I
    .registers 2

    const/16 v0, 0x12c

    return v0
.end method

.method public hideBanner()V
    .registers 2

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->visible:Z

    const/16 v0, 0x8

    .line 195
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    return-void
.end method

.method protected initBanner()V
    .registers 12

    .line 288
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_a

    goto/16 :goto_b5

    :cond_a
    const-string v0, "BannerHtml"

    const/4 v1, 0x3

    const-string v2, "Initializing BannerHtml"

    .line 291
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x1

    .line 292
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    .line 294
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/ads/banner/d;

    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/banner/d;->a()I

    move-result v3

    invoke-static {v2, v3}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v2

    .line 295
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/ads/banner/d;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/d;->b()I

    move-result v4

    invoke-static {v3, v4}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v3

    .line 298
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setMinimumWidth(I)V

    .line 299
    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setMinimumHeight(I)V

    .line 300
    iget-object v4, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/startapp/android/publish/html/JsInterface;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$5;

    invoke-direct {v7, p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$5;-><init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V

    new-instance v8, Lcom/startapp/android/publish/adsCommon/d/b;

    .line 304
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->e(I)Z

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/startapp/android/publish/html/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/d/b;Z)V

    const-string v6, "startappwall"

    .line 300
    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v4, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;

    invoke-direct {v5, p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$MyWebViewClient;-><init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 307
    iget-boolean v4, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->loaded:Z

    if-nez v4, :cond_72

    .line 308
    iget-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    if-eqz v0, :cond_7c

    .line 309
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->loadBanner()V

    goto :goto_7c

    :cond_72
    const-string v4, "BannerHTML already Loaded"

    .line 312
    invoke-static {v0, v1, v4}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V

    .line 316
    :cond_7c
    :goto_7c
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 320
    iget-object v3, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 323
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 325
    invoke-virtual {p0, v2, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b5

    .line 327
    :cond_b2
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method protected initRuntime()V
    .registers 6

    .line 206
    :try_start_0
    new-instance v0, Lcom/startapp/android/publish/ads/banner/BannerOptions;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/banner/BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    .line 207
    new-instance v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getOffset()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    .line 208
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    if-nez v0, :cond_21

    .line 209
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 211
    :cond_21
    new-instance v0, Lcom/startapp/android/publish/ads/banner/d;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getWidthInDp()I

    move-result v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getHeightInDp()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/publish/ads/banner/d;-><init>(II)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/ads/banner/d;

    .line 212
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    .line 214
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_49

    .line 215
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getBannerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setId(I)V

    .line 217
    :cond_49
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    const v1, 0x9876541

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    const/16 v0, 0x8

    .line 218
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 221
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$1;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$1;-><init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$2;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$2;-><init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 239
    invoke-static {}, Lcom/startapp/android/publish/ads/banner/c;->a()Lcom/startapp/android/publish/ads/banner/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/c;->c()Lcom/startapp/android/publish/ads/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->options:Lcom/startapp/android/publish/ads/banner/BannerOptions;

    .line 241
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$3;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$3;-><init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9f} :catch_a0

    goto :goto_c0

    :catch_a0
    move-exception v0

    .line 250
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BannerStandard.init - webview failed"

    const-string v4, ""

    .line 250
    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    const-string v1, "BannerHtml"

    const-string v2, "webVIew exception"

    .line 252
    invoke-static {v1, v0, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->hideBanner()V

    .line 254
    invoke-direct {p0, v3}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner(Ljava/lang/String;)V

    :goto_c0
    return-void
.end method

.method protected makeImpression()V
    .registers 10

    const-string v0, "BannerHtml"

    const/4 v1, 0x3

    const-string v2, "BannerStandard Scheduling visibility check"

    .line 498
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    new-instance v0, Lcom/startapp/android/publish/adsCommon/i;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->l()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getImpressionDelayMillis()J

    move-result-wide v7

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/startapp/android/publish/adsCommon/i;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;J)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->scheduledImpression:Lcom/startapp/android/publish/adsCommon/i;

    .line 502
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->startVisibilityRunnable(Lcom/startapp/android/publish/adsCommon/i;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 650
    invoke-super {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onAttachedToWindow()V

    .line 651
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onResume()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 656
    invoke-super {p0}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onDetachedFromWindow()V

    .line 657
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onPause()V

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->cancelScheduledImpression(Z)V

    .line 659
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adSession:Lcom/b/a/a/a/b/b;

    if-eqz v0, :cond_1b

    .line 660
    invoke-virtual {v0}, Lcom/b/a/a/a/b/b;->b()V

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adSession:Lcom/b/a/a/a/b/b;

    .line 663
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/Object;J)V

    :cond_1b
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 2

    .line 557
    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/adsCommon/Ad;)V
    .registers 8

    const-string p1, "BannerHtml"

    const/4 v0, 0x3

    const-string v1, " Html Ad Recievied OK"

    .line 439
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 441
    iput-boolean v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->webViewTouched:Z

    .line 442
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->removeView(Landroid/view/View;)V

    .line 443
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    const/4 v3, 0x6

    if-eqz v2, :cond_be

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_be

    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_be

    .line 444
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v4, "@jsTag@"

    invoke-static {v2, v4, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->jsTag:Z

    .line 446
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->loadHtml()V

    .line 449
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v4, "@width@"

    invoke-static {v2, v4, v4}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    iget-object v4, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@height@"

    invoke-static {v4, v5, v5}, Lcom/startapp/android/publish/adsCommon/Utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    :try_start_58
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setSize(II)Z

    move-result v2

    if-eqz v2, :cond_8e

    const/4 v2, 0x1

    .line 454
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->loaded:Z

    .line 455
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->addAdInformationLayout()V

    .line 456
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->makeImpression()V

    .line 458
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->addDisplayEventOnLoad()V

    .line 460
    iget-object v4, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    if-eqz v4, :cond_81

    iget-boolean v4, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->callbackSent:Z

    if-nez v4, :cond_81

    .line 461
    iput-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->callbackSent:Z

    .line 462
    iget-object v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    invoke-interface {v2, p0}, Lcom/startapp/android/publish/ads/banner/BannerListener;->onReceiveAd(Landroid/view/View;)V

    .line 465
    :cond_81
    iget-boolean v2, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->visible:Z

    if-eqz v2, :cond_88

    .line 466
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    :cond_88
    const-string v1, "Done Loading HTML Banner"

    .line 468
    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_c8

    :cond_8e
    const-string v0, "Banner cannot be displayed (not enough room)"

    .line 470
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_93} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_93} :catch_94

    goto :goto_c8

    :catch_94
    move-exception v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error occurred "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v3, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner(Ljava/lang/String;)V

    goto :goto_c8

    :catch_b5
    const-string v0, "Error Casting width & height from HTML"

    .line 473
    invoke-static {p1, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 474
    invoke-direct {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner(Ljava/lang/String;)V

    goto :goto_c8

    :cond_be
    const-string v0, "No Banner recieved"

    .line 480
    invoke-static {p1, v3, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "No Banner received"

    .line 481
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner(Ljava/lang/String;)V

    :goto_c8
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 669
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_9

    .line 671
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onResume()V

    goto :goto_c

    .line 673
    :cond_9
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->onPause()V

    :goto_c
    return-void
.end method

.method protected reload()V
    .registers 4

    const-string v0, "BannerHtml"

    const/4 v1, 0x3

    const-string v2, "Loading from network"

    .line 333
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adSession:Lcom/b/a/a/a/b/b;

    if-eqz v0, :cond_12

    .line 336
    invoke-virtual {v0}, Lcom/b/a/a/a/b/b;->b()V

    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adSession:Lcom/b/a/a/a/b/b;

    .line 340
    :cond_12
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    if-nez v0, :cond_1d

    .line 341
    new-instance v0, Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/common/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    .line 343
    :cond_1d
    invoke-direct {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getAvailableSize()Landroid/graphics/Point;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/adsCommon/Ad$AdState;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->setState(Lcom/startapp/android/publish/adsCommon/Ad$AdState;)V

    .line 345
    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->a(II)V

    .line 346
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getBannerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->a(I)V

    .line 347
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/ads/banner/bannerstandard/a;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-virtual {v0, v1, p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/a;->load(Lcom/startapp/android/publish/common/model/AdPreferences;Lcom/startapp/android/publish/adsCommon/adListeners/AdEventListener;)Z

    return-void
.end method

.method public setAdTag(Ljava/lang/String;)V
    .registers 2

    .line 708
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adTag:Ljava/lang/String;

    return-void
.end method

.method protected setBannerId(I)V
    .registers 2

    .line 703
    iput p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->innerBannerStandardId:I

    return-void
.end method

.method public setBannerListener(Lcom/startapp/android/publish/ads/banner/BannerListener;)V
    .registers 2

    .line 679
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/ads/banner/BannerListener;

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 276
    invoke-super {p0, p1}, Lcom/startapp/android/publish/ads/banner/BannerBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_18

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_18

    .line 278
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$4;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$4;-><init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method public showBanner()V
    .registers 2

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->visible:Z

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    return-void
.end method
