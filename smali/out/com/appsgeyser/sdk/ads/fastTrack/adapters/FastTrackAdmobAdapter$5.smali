.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;
.super Ljava/lang/Object;
.source "FastTrackAdmobAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadRewardedVideo()V
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

    .line 453
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onRewardedVideoAdFailedToLoad$0$FastTrackAdmobAdapter$5()V
    .registers 2

    .line 539
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadRewardedVideo()V

    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .registers 6

    .line 495
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz p1, :cond_d

    .line 496
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoFinished()V

    .line 498
    :cond_d
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rewarded id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$1000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "ft_rewarded_sdk_completion"

    .line 500
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    const-string p1, "fastTrackTag"

    const-string v0, "admob rewarded onRewarded"

    .line 502
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_12

    .line 486
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoClosed()V

    .line 487
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    .line 489
    :cond_12
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->loadRewardedVideo()V

    const-string v0, "fastTrackTag"

    const-string v1, "admob rewarded onRewardedVideoAdClosed"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .registers 7

    .line 519
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->videoDownloadError:Z

    .line 520
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_30

    .line 521
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-boolean v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->videoShowRequested:Z

    if-eqz v0, :cond_2b

    .line 522
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/appsgeyser/sdk/R$string;->appsgeysersdk_fasttrack_no_rew_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoError(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->videoShowRequested:Z

    .line 525
    :cond_2b
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    :cond_30
    const/4 v0, 0x3

    const-string v2, "rewarded id: "

    const-string v3, "details"

    if-ne p1, v0, :cond_65

    .line 528
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$1000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_rewarded_sdk_nofill"

    .line 530
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_9a

    .line 533
    :cond_65
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$1000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; error_desc: error code "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_rewarded_sdk_error"

    .line 536
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 539
    :goto_9a
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$5$BIUdWINWZCZJSY9BG-yvdNjpiWA;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$5$BIUdWINWZCZJSY9BG-yvdNjpiWA;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob rewarded onRewardedVideoAdFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fastTrackTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .registers 6

    .line 507
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewarded id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$1000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v3, "ft_rewarded_sdk_click"

    const/4 v4, 0x1

    .line 509
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 511
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_3f

    .line 512
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoClicked()V

    :cond_3f
    const-string v0, "fastTrackTag"

    const-string v1, "admob rewarded onRewardedVideoAdLeftApplication"

    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 4

    .line 456
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->videoDownloadError:Z

    .line 457
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_16

    .line 458
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoCurrentPlacement:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->showRewardedVideo(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;Ljava/lang/String;)V

    .line 460
    :cond_16
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$900(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "fastTrackTag"

    const-string v1, "admob rewarded onRewardedVideoAdLoaded"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 6

    .line 466
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->dismiss()V

    .line 467
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rewarded id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$1000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v3, "ft_rewarded_sdk_impression"

    const/4 v4, 0x1

    .line 469
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 471
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->videoShowRequested:Z

    .line 472
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    if-eqz v0, :cond_4b

    .line 473
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$5;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->rewardedVideoListener:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;

    invoke-interface {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$RewardedVideoListener;->onVideoOpened()V

    :cond_4b
    const-string v0, "fastTrackTag"

    const-string v1, "admob rewarded onRewardedVideoAdOpened"

    .line 475
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "admob rewarded onRewardedVideoCompleted"

    .line 545
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRewardedVideoStarted()V
    .registers 3

    const-string v0, "fastTrackTag"

    const-string v1, "admob rewarded onRewardedVideoStarted"

    .line 480
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
