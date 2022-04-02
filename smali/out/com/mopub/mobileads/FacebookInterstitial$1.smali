.class Lcom/mopub/mobileads/FacebookInterstitial$1;
.super Ljava/lang/Object;
.source "FacebookInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/FacebookInterstitial;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/FacebookInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/FacebookInterstitial;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->this$0:Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->this$0:Lcom/mopub/mobileads/FacebookInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/FacebookInterstitial;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_52

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->this$0:Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/FacebookInterstitial;->access$000()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Expiring unused Facebook Interstitial ad due to Facebook\'s 60-minute expiration policy."

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->this$0:Lcom/mopub/mobileads/FacebookInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/FacebookInterstitial;->mLoadListener:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->this$0:Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/FacebookInterstitial;->access$000()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 76
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v4, v3, v2

    .line 75
    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/FacebookInterstitial$1;->this$0:Lcom/mopub/mobileads/FacebookInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/FacebookInterstitial;->onInvalidate()V

    :cond_52
    return-void
.end method
