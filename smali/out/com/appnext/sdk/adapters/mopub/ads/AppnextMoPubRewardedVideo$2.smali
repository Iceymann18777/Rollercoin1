.class Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->init(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;


# direct methods
.method constructor <init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$2;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoaded(Ljava/lang/String;Lcom/appnext/core/AppnextAdCreativeType;)V
    .registers 3

    .line 155
    iget-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$2;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$2;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-virtual {p2}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
