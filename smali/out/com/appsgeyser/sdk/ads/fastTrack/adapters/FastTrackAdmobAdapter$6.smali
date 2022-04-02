.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$6;
.super Lcom/google/android/gms/ads/AdListener;
.source "FastTrackAdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadNativeAds(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V
    .registers 2

    .line 607
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "admob native onAdClicked"

    .line 615
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdClosed()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "admob native onAdClosed"

    .line 625
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 3

    const-string p1, "fastTrackTag"

    const-string v0, "admob native onAdFailedToLoad"

    .line 610
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "admob native onAdImpression"

    .line 620
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLeftApplication()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "admob native onAdLeftApplication"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "admob native onAdLoaded"

    .line 640
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdOpened()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "admob native onAdOpened"

    .line 635
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
