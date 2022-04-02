.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;
.super Ljava/lang/Object;
.source "FastTrackMopubAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->initBannerView(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

.field final synthetic val$bannerViewContainer:Landroid/view/ViewGroup;

.field final synthetic val$bannerViewRefreshRate:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Landroid/view/ViewGroup;Ljava/lang/Integer;)V
    .registers 4

    .line 155
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->val$bannerViewContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->val$bannerViewRefreshRate:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBannerClicked$0$FastTrackMopubAdapter$2()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$702(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Z)Z

    return-void
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .registers 6

    .line 197
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$700(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 198
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$702(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Z)Z

    .line 200
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$2$jxbwjLfZqSnGjhUPV5JkU9oXORU;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackMopubAdapter$2$jxbwjLfZqSnGjhUPV5JkU9oXORU;-><init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v3, "ft_banner_sdk_click"

    .line 204
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    const-string p1, "fastTrackTag"

    const-string v0, "mopub banner onBannerClicked"

    .line 206
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .registers 3

    const-string p1, "fastTrackTag"

    const-string v0, "mopub banner onBannerCollapsed"

    .line 217
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .registers 3

    const-string p1, "fastTrackTag"

    const-string v0, "mopub banner onBannerExpanded"

    .line 212
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 7

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mopub banner onBannerFailed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fastTrackTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$502(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Z)Z

    .line 179
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    const-string v1, "banner id: "

    const-string v2, "details"

    if-ne p2, p1, :cond_6b

    .line 182
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p2, p2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_banner_sdk_nofill"

    .line 184
    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    goto :goto_a4

    .line 187
    :cond_6b
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; error_desc: error code "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p2, p2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v2, "ft_banner_sdk_error"

    .line 190
    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    :goto_a4
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .registers 7

    .line 158
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const-string v0, "fastTrackTag"

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Lcom/mopub/mobileads/MoPubView;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 159
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->val$bannerViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Lcom/mopub/mobileads/MoPubView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "ft_banner_sdk_impression"

    .line 164
    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 166
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object p1, p1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$400(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$2;->val$bannerViewRefreshRate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8e

    :cond_89
    const-string p1, "mopub banner loaded, but bannerViewContainer is null"

    .line 170
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8e
    const-string p1, "mopub banner onBannerLoaded"

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
