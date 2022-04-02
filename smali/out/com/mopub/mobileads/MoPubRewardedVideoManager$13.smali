.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentlyShowingAdUnitId:Ljava/lang/String;

.field final synthetic val$serverCompletionUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 818
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$serverCompletionUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 822
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$900(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v1, ""

    goto :goto_17

    .line 826
    :cond_13
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v1

    :goto_17
    move-object v5, v1

    if-nez v0, :cond_20

    const/4 v0, 0x0

    .line 828
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 829
    :cond_20
    invoke-virtual {v0}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_28
    move-object v6, v0

    .line 832
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$900(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 833
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_40

    goto :goto_49

    .line 835
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v0, 0x0

    :goto_4a
    move-object v7, v0

    .line 837
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$900(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$currentlyShowingAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedAdData;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 841
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;->val$serverCompletionUrl:Ljava/lang/String;

    .line 843
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$900(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomerId()Ljava/lang/String;

    move-result-object v4

    .line 840
    invoke-static/range {v2 .. v8}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->makeRewardedVideoCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
