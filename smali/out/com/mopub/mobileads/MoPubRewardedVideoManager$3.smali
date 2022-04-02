.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;
.super Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 657
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected forEach(Ljava/lang/String;)V
    .registers 3

    .line 660
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdsLoaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/RewardedAdsLoaders;->creativeDownloadSuccess(Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 663
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$000()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadSuccess(Ljava/lang/String;)V

    :cond_27
    return-void
.end method
