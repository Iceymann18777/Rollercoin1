.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;
.super Ljava/lang/Object;
.source "FastTrackMopubAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 252
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_9a

    const-string v0, "mopub banner repeat attempt to load"

    .line 253
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_49

    .line 256
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_banner_sdk_nofill"

    .line 257
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 260
    :cond_49
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniqid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 262
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$600(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v0, v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$502(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;Z)Z

    .line 265
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_banner_sdk_request"

    .line 266
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 268
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter$4;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackMopubAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9f

    :cond_9a
    const-string v0, "mopub banner attempt to load failed: bannerView null"

    .line 270
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9f
    return-void
.end method
