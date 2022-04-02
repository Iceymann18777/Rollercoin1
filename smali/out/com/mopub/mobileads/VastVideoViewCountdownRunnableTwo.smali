.class public final Lcom/mopub/mobileads/VastVideoViewCountdownRunnableTwo;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewCountdownRunnableTwo.kt"


# instance fields
.field private final videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewControllerTwo;Landroid/os/Handler;)V
    .registers 4

    const-string v0, "videoViewController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 5

    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewCountdownRunnableTwo;->videoViewController:Lcom/mopub/mobileads/VastVideoViewControllerTwo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/VastVideoViewControllerTwo;->updateCountdown$mopub_sdk_base_release$default(Lcom/mopub/mobileads/VastVideoViewControllerTwo;ZILjava/lang/Object;)V

    return-void
.end method
