.class public Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewCountdownRunnable.java"


# instance fields
.field private final mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V
    .registers 3

    .line 22
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 23
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->updateCountdown()V

    .line 33
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->shouldBeInteractable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 34
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->makeVideoInteractable()V

    :cond_12
    return-void
.end method
