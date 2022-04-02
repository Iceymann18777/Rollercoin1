.class final Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5$1;
.super Lcom/appnext/core/result/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;->E()Lcom/appnext/core/result/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ck:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;


# direct methods
.method constructor <init>(Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;)V
    .registers 2

    .line 662
    iput-object p1, p0, Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5$1;->ck:Lcom/appnext/ads/interstitial/InterstitialActivity$WebInterface$5;

    invoke-direct {p0}, Lcom/appnext/core/result/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final F()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFallbackScript()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getJSurl()Ljava/lang/String;
    .registers 2

    const-string v0, "https://cdn.appnext.com/tools/sdk/interstitial/v75/result.min.js"

    return-object v0
.end method

.method public final getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
