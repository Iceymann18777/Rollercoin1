.class final Lcom/appnext/banners/BannerActivity$a;
.super Lcom/appnext/banners/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/banners/BannerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/banners/BannerActivity$a$a;,
        Lcom/appnext/banners/BannerActivity$a$b;
    }
.end annotation


# instance fields
.field final synthetic cM:Lcom/appnext/banners/BannerActivity;


# direct methods
.method private constructor <init>(Lcom/appnext/banners/BannerActivity;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    invoke-direct {p0}, Lcom/appnext/banners/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appnext/banners/BannerActivity;Lcom/appnext/banners/BannerActivity$1;)V
    .registers 3

    .line 154
    invoke-direct {p0, p1}, Lcom/appnext/banners/BannerActivity$a;-><init>(Lcom/appnext/banners/BannerActivity;)V

    return-void
.end method


# virtual methods
.method protected final getAdRequest()Lcom/appnext/banners/BannerAdRequest;
    .registers 2

    .line 189
    new-instance v0, Lcom/appnext/banners/BannerAdRequest;

    invoke-direct {v0}, Lcom/appnext/banners/BannerAdRequest;-><init>()V

    return-object v0
.end method

.method protected final getBannerAd()Lcom/appnext/banners/BannerAd;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object v0, v0, Lcom/appnext/banners/BannerActivity;->bannerAd:Lcom/appnext/banners/BannerAd;

    return-object v0
.end method

.method protected final getFallbackScript()Ljava/lang/String;
    .registers 2

    .line 164
    new-instance v0, Lcom/appnext/core/result/b;

    invoke-direct {v0}, Lcom/appnext/core/result/b;-><init>()V

    invoke-virtual {v0}, Lcom/appnext/core/result/b;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getJSurl()Ljava/lang/String;
    .registers 2

    const-string v0, "https://cdn.appnext.com/tools/sdk/banner/2.4.3/result.min.js"

    return-object v0
.end method

.method protected final getLayout()I
    .registers 2

    .line 169
    sget v0, Lcom/appnext/banners/R$layout;->apnxt_full_screen:I

    return v0
.end method

.method protected final getSelectedAd()Lcom/appnext/banners/BannerAdData;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/appnext/banners/BannerActivity$a;->cM:Lcom/appnext/banners/BannerActivity;

    iget-object v0, v0, Lcom/appnext/banners/BannerActivity;->selectedAd:Lcom/appnext/banners/BannerAdData;

    return-object v0
.end method

.method protected final getWebInterface()Lcom/appnext/banners/g$a;
    .registers 2

    .line 194
    new-instance v0, Lcom/appnext/banners/BannerActivity$a$b;

    invoke-direct {v0, p0}, Lcom/appnext/banners/BannerActivity$a$b;-><init>(Lcom/appnext/banners/BannerActivity$a;)V

    return-object v0
.end method

.method protected final getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .line 199
    new-instance v0, Lcom/appnext/banners/BannerActivity$a$a;

    invoke-direct {v0, p0}, Lcom/appnext/banners/BannerActivity$a$a;-><init>(Lcom/appnext/banners/BannerActivity$a;)V

    return-object v0
.end method

.method public final loadAd(Lcom/appnext/banners/BannerAdRequest;)V
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/appnext/banners/BannerActivity$a;->inflateView(ILcom/appnext/core/AppnextAd;)V

    return-void
.end method
