.class Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;
.super Ljava/lang/Object;
.source "FastTrackAdmobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const-string v1, "fastTrackTag"

    if-eqz v0, :cond_76

    const-string v0, "admob banner attempt to load"

    .line 235
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v2}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$000(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "details"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uniqid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v1, v1, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->bannerDetails:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v2, v2, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "ft_banner_sdk_request"

    .line 239
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    .line 241
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v0}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$200(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 242
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$102(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;Z)Z

    .line 243
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    iget-object v0, v0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter$2;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-static {v1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->access$300(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7b

    :cond_76
    const-string v0, "admob banner attempt to load failed: bannerView null"

    .line 245
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    return-void
.end method
