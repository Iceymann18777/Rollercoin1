.class public Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
.super Ljava/lang/Object;
.source "MoPubRewardedAd.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MoPubRewardedAdListener"
.end annotation


# instance fields
.field private final mAdExpiration:Ljava/lang/Runnable;

.field final mCustomEventClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/MoPubRewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/mopub/mobileads/MoPubRewardedAd;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/MoPubRewardedAd;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mCustomEventClass:Ljava/lang/Class;

    .line 131
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance p2, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;

    invoke-direct {p2, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener$1;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;Lcom/mopub/mobileads/MoPubRewardedAd;)V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mAdExpiration:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .registers 3

    .line 178
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialDismissed()V
    .registers 3

    .line 193
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->WILL_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubRewardedAd;->onInvalidate()V

    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 6

    .line 156
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mAdExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAd$1;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_33

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    .line 165
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_3e

    .line 160
    :cond_33
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    .line 161
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_3e
    return-void
.end method

.method public onInterstitialImpression()V
    .registers 1

    return-void
.end method

.method public onInterstitialLoaded()V
    .registers 5

    .line 144
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedAd;->access$002(Lcom/mopub/mobileads/MoPubRewardedAd;Z)Z

    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mCustomEventClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->isMoPubSpecific(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mAdExpiration:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    :cond_24
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    .line 151
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialShown()V
    .registers 3

    .line 171
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mAdExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mCustomEventClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->this$0:Lcom/mopub/mobileads/MoPubRewardedAd;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onLeaveApplication()V
    .registers 3

    .line 188
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->WILL_LEAVE_APPLICATION:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;->mHandler:Landroid/os/Handler;

    return-void
.end method
