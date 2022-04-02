.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;
.super Ljava/lang/Object;
.source "FastTrackFacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 174
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_9d

    const-string v0, "fastTrackTag"

    const-string v1, "admob banner repeat attempt to load"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$100(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_49

    .line 178
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_banner_sdk_nofill"

    .line 179
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 182
    :cond_49
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniqid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v3, v3, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->context:Landroid/content/Context;

    const-string v4, "ft_banner_sdk_request"

    .line 184
    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 187
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    .line 188
    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$500(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Lcom/facebook/ads/AdListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    .line 190
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;Z)Z

    .line 191
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter$3;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackFacebookAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9d
    return-void
.end method
