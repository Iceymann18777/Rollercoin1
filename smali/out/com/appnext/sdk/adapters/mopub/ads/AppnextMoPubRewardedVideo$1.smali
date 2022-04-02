.class Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnVideoEnded;


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

    .line 145
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$1;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoEnded()V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$1;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$1;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-virtual {v1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/16 v3, -0x7b

    invoke-static {v2, v3}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method
