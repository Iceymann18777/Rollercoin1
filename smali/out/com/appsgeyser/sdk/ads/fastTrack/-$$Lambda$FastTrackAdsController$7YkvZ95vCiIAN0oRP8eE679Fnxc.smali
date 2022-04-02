.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$7YkvZ95vCiIAN0oRP8eE679Fnxc;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->lambda$showFullscreen$3$FastTrackAdsController(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
