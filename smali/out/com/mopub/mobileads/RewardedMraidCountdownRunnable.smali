.class public Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "RewardedMraidCountdownRunnable.java"


# instance fields
.field private mCurrentElapsedTimeMillis:I

.field private final mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/RewardedMraidController;Landroid/os/Handler;)V
    .registers 3

    .line 24
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 25
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 5

    .line 33
    iget v0, p0, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->mCurrentElapsedTimeMillis:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->mUpdateIntervalMillis:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->mCurrentElapsedTimeMillis:I

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/RewardedMraidController;->updateCountdown(I)V

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->isPlayableCloseable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->showPlayableCloseButton()V

    :cond_1b
    return-void
.end method

.method getCurrentElapsedTimeMillis()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iget v0, p0, Lcom/mopub/mobileads/RewardedMraidCountdownRunnable;->mCurrentElapsedTimeMillis:I

    return v0
.end method
