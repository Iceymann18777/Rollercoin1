.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$MJ40-uST79s2Q36nLMwJceHje8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$MJ40-uST79s2Q36nLMwJceHje8A;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/-$$Lambda$FastTrackAdsController$MJ40-uST79s2Q36nLMwJceHje8A;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    check-cast p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->lambda$init$0$FastTrackAdsController(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackBaseAdapter$FullscreenListener;)V

    return-void
.end method
