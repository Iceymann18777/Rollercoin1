.class Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;
.super Ljava/lang/Object;
.source "MoPubRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/MoPubRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayedRequestHelper"
.end annotation


# instance fields
.field final mDelayMs:I

.field final mDelayedRunnable:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/mopub/network/MoPubRequestQueue;


# direct methods
.method constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;-><init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;ILandroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;I",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->this$0:Lcom/mopub/network/MoPubRequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p3, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->mDelayMs:I

    .line 145
    iput-object p4, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance p3, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper$1;-><init>(Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;Lcom/mopub/network/MoPubRequestQueue;Lcom/mopub/volley/Request;)V

    iput-object p3, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->mDelayedRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->mDelayedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method start()V
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->mDelayedRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mopub/network/MoPubRequestQueue$DelayedRequestHelper;->mDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
