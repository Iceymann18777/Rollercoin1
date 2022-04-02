.class Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$3;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->initRuntime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$3;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$3;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/startapp/common/a/c;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 245
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$3;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    iget-object v1, v0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/common/model/AdPreferences;

    invoke-static {v0, v1}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->access$100(Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;Lcom/startapp/android/publish/common/model/AdPreferences;)V

    .line 246
    iget-object v0, p0, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard$3;->this$0:Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/banner/bannerstandard/BannerStandard;->initBanner()V

    return-void
.end method
