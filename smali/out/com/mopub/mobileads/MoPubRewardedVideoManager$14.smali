.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnClient(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentlyShowingAdUnitId:Ljava/lang/String;

.field final synthetic val$customEventClass:Ljava/lang/Class;

.field final synthetic val$moPubReward:Lcom/mopub/common/MoPubReward;

.field final synthetic val$thirdPartyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 858
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$customEventClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$moPubReward:Lcom/mopub/common/MoPubReward;

    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    iput-object p4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$thirdPartyId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 862
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$900(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$customEventClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedAdData;->getLastShownMoPubReward(Ljava/lang/Class;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$moPubReward:Lcom/mopub/common/MoPubReward;

    .line 861
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->chooseReward(Lcom/mopub/common/MoPubReward;Lcom/mopub/common/MoPubReward;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    .line 865
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 866
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 867
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$900(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$customEventClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$thirdPartyId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 869
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3a

    .line 873
    :cond_35
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 876
    :goto_3a
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 877
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V

    :cond_4f
    return-void
.end method
