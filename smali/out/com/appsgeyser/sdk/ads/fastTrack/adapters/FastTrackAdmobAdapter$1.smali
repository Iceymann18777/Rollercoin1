.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "FastTrackAdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

.field final synthetic val$bannerViewContainer:Landroid/view/ViewGroup;

.field final synthetic val$bannerViewRefreshRate:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .registers 4

    .line 152
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->val$bannerViewRefreshRate:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    .line 214
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    const-string v0, "fastTrackTag"

    const-string v1, "admob banner onAdClicked"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdClosed()V
    .registers 3

    .line 155
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    const-string v0, "fastTrackTag"

    const-string v1, "admob banner onAdClosed"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 7

    .line 161
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    const-string v0, "banner id: "

    const-string v1, "details"

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_39

    .line 163
    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_banner_sdk_nofill"

    .line 165
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_6e

    .line 168
    :cond_39
    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; error_desc: error code "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_banner_sdk_error"

    .line 171
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 174
    :goto_6e
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;Z)Z

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admob banner onAdFailedToLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fastTrackTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    .line 220
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    const-string v0, "fastTrackTag"

    const-string v1, "admob banner onAdImpression"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLeftApplication()V
    .registers 6

    .line 180
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 181
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const-string v3, "ft_banner_sdk_click"

    const/4 v4, 0x1

    .line 183
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    const-string v0, "fastTrackTag"

    const-string v1, "admob banner onAdLeftApplication"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded()V
    .registers 7

    .line 196
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 197
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 198
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "banner id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v3}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "details"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const/4 v4, 0x1

    const-string v5, "ft_banner_sdk_impression"

    .line 200
    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 202
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$1;->val$bannerViewRefreshRate:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7d

    :cond_78
    const-string v0, "admob banner loaded, but bannerViewContainer is null"

    .line 207
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    const-string v0, "admob banner onAdLoaded"

    .line 209
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdOpened()V
    .registers 3

    .line 190
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    const-string v0, "fastTrackTag"

    const-string v1, "admob banner onAdOpened"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
