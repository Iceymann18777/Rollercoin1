.class Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenMetricsWaiter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastWaitRequest:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method cancelLastRequest()V
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->mLastWaitRequest:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    if-eqz v0, :cond_a

    .line 523
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->cancel()V

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->mLastWaitRequest:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    :cond_a
    return-void
.end method

.method varargs waitFor([Landroid/view/View;)Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;
    .registers 5

    .line 517
    new-instance v0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;-><init>(Landroid/os/Handler;[Landroid/view/View;Lcom/mopub/mraid/MraidController$1;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->mLastWaitRequest:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    return-object v0
.end method
