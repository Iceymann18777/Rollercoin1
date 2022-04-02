.class Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;
.super Ljava/lang/Object;
.source "FastTrackAdsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerViewPlacementWrapper"
.end annotation


# instance fields
.field bannerViewContainer:Landroid/view/ViewGroup;

.field placementTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 4

    .line 274
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->bannerViewContainer:Landroid/view/ViewGroup;

    .line 276
    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->placementTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getBannerViewContainer()Landroid/view/ViewGroup;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->bannerViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getPlacementTag()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$BannerViewPlacementWrapper;->placementTag:Ljava/lang/String;

    return-object v0
.end method
