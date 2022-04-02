.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;
.super Ljava/lang/Object;
.source "FastTrackMopubAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->loadRewardedVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onRewardedVideoLoadFailure$0$FastTrackMopubAdapter$6()V
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->loadRewardedVideo()V

    return-void
.end method

.method public onRewardedVideoClicked(Ljava/lang/String;)V
    .registers 6

    .line 494
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rewarded id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$1200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_rewarded_sdk_click"

    const/4 v3, 0x1

    .line 496
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 498
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_3f

    .line 499
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoClicked()V

    :cond_3f
    const-string p1, "fastTrackTag"

    const-string v0, "mopub rewarded onRewardedVideoClicked"

    .line 501
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoClosed(Ljava/lang/String;)V
    .registers 3

    .line 506
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_12

    .line 507
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoClosed()V

    .line 508
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    .line 510
    :cond_12
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->loadRewardedVideo()V

    const-string p1, "fastTrackTag"

    const-string v0, "mopub rewarded onRewardedVideoClosed"

    .line 511
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 516
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_d

    .line 517
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoFinished()V

    .line 519
    :cond_d
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rewarded id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$1200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "details"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p2, p2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "ft_rewarded_sdk_completion"

    .line 521
    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    const-string p1, "fastTrackTag"

    const-string p2, "mopub rewarded onRewardedVideoCompleted"

    .line 523
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 7

    .line 445
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->videoDownloadError:Z

    .line 446
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_30

    .line 447
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-boolean p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->videoShowRequested:Z

    if-eqz p1, :cond_2b

    .line 448
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->videoShowRequested:Z

    .line 451
    :cond_2b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    .line 453
    :cond_30
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "rewarded id: "

    const-string v2, "details"

    if-ne p2, p1, :cond_66

    .line 454
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$1200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v3, "ft_rewarded_sdk_nofill"

    .line 456
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_9f

    .line 459
    :cond_66
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$1200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; error_desc: error code "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v3, "ft_rewarded_sdk_error"

    .line 462
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 465
    :goto_9f
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$6$zdFQNTvVRD8D6Nz6wJRmovi233s;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$6$zdFQNTvVRD8D6Nz6wJRmovi233s;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;)V

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mopub rewarded onRewardedVideoLoadFailure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fastTrackTag"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoLoadSuccess(Ljava/lang/String;)V
    .registers 4

    .line 435
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->videoDownloadError:Z

    .line 436
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_16

    .line 437
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v0, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoCurrentPlacement:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V

    .line 439
    :cond_16
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$1100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "fastTrackTag"

    const-string v0, "mopub rewarded onRewardedVideoLoadSuccess"

    .line 440
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 5

    .line 486
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_1b

    .line 487
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 489
    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mopub rewarded onRewardedVideoPlaybackError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fastTrackTag"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoStarted(Ljava/lang/String;)V
    .registers 6

    .line 471
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    if-eqz p1, :cond_d

    .line 472
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    .line 474
    :cond_d
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rewarded id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$1200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "ft_rewarded_sdk_impression"

    .line 476
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 478
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_4c

    .line 479
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$6;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoOpened()V

    :cond_4c
    const-string p1, "fastTrackTag"

    const-string v0, "mopub rewarded onRewardedVideoStarted"

    .line 481
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
