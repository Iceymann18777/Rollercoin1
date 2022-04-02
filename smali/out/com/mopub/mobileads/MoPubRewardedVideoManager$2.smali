.class Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdSuccess(Lcom/mopub/network/AdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

.field final synthetic val$customEvent:Lcom/mopub/mobileads/CustomEventRewardedAd;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/mobileads/CustomEventRewardedAd;)V
    .registers 3

    .line 524
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;->this$0:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;->val$customEvent:Lcom/mopub/mobileads/CustomEventRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 527
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Custom Event failed to load rewarded ad in a timely fashion."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;->val$customEvent:Lcom/mopub/mobileads/CustomEventRewardedAd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;->val$customEvent:Lcom/mopub/mobileads/CustomEventRewardedAd;

    invoke-virtual {v1}, Lcom/mopub/mobileads/CustomEventRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 530
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;->val$customEvent:Lcom/mopub/mobileads/CustomEventRewardedAd;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventRewardedAd;->onInvalidate()V

    return-void
.end method
