.class Lcom/mopub/mobileads/FacebookRewardedVideo$1;
.super Ljava/lang/Object;
.source "FacebookRewardedVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/FacebookRewardedVideo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/FacebookRewardedVideo;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/FacebookRewardedVideo;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/mopub/mobileads/FacebookRewardedVideo$1;->this$0:Lcom/mopub/mobileads/FacebookRewardedVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo$1;->this$0:Lcom/mopub/mobileads/FacebookRewardedVideo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/FacebookRewardedVideo;->access$000()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Expiring unused Facebook Rewarded Video ad due to Facebook\'s 60-minute expiration policy."

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo$1;->this$0:Lcom/mopub/mobileads/FacebookRewardedVideo;

    iget-object v0, v0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_29

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo$1;->this$0:Lcom/mopub/mobileads/FacebookRewardedVideo;

    iget-object v0, v0, Lcom/mopub/mobileads/FacebookRewardedVideo;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 77
    :cond_29
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo$1;->this$0:Lcom/mopub/mobileads/FacebookRewardedVideo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/FacebookRewardedVideo;->access$000()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 78
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v3, v2

    .line 77
    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookRewardedVideo$1;->this$0:Lcom/mopub/mobileads/FacebookRewardedVideo;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookRewardedVideo;->onInvalidate()V

    return-void
.end method
