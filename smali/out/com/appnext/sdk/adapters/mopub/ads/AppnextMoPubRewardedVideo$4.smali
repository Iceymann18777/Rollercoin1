.class Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/callbacks/OnAdClicked;


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

    .line 168
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$4;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$4;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo$4;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;

    invoke-virtual {v1}, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
