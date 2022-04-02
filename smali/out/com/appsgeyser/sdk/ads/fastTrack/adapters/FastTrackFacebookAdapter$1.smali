.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;
.super Ljava/lang/Object;
.source "FastTrackFacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

.field final synthetic val$bannerViewContainer:Landroid/view/ViewGroup;

.field final synthetic val$bannerViewRefreshRate:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .registers 4

    .line 91
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->val$bannerViewRefreshRate:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 6

    .line 114
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_banner_sdk_click"

    const/4 v3, 0x1

    .line 116
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    const-string p1, "fastTrackTag"

    const-string v0, "facebook banner onAdClicked"

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 7

    .line 123
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const-string v0, "fastTrackTag"

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/AdView;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 124
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "ft_banner_sdk_impression"

    .line 126
    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 128
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->val$bannerViewRefreshRate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7a

    :cond_75
    const-string p1, "facebook banner loaded, but bannerViewContainer is null"

    .line 133
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7a
    const-string p1, "facebook banner onAdLoaded"

    .line 135
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 8

    .line 94
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const-string v0, " "

    const-string v1, "banner id: "

    const-string v2, "details"

    const/4 v3, 0x1

    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_3d

    .line 95
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_banner_sdk_nofill"

    .line 97
    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_80

    .line 100
    :cond_3d
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; error_desc: error code "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_banner_sdk_error"

    .line 104
    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 107
    :goto_80
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {p1, v3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;Z)Z

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facebook banner onError: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fastTrackTag"

    .line 108
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 3

    const-string p1, "fastTrackTag"

    const-string v0, "facebook banner onLoggingImpression"

    .line 140
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
