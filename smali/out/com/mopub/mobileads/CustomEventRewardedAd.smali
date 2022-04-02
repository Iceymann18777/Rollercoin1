.class public abstract Lcom/mopub/mobileads/CustomEventRewardedAd;
.super Ljava/lang/Object;
.source "CustomEventRewardedAd.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getAdNetworkId()Ljava/lang/String;
.end method

.method protected abstract getLifecycleListener()Lcom/mopub/common/LifecycleListener;
.end method

.method protected abstract isReady()Z
.end method

.method final loadCustomEvent(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mobileads/CustomEventRewardedAd;->checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    invoke-static {p1}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventRewardedAd;->getLifecycleListener()Lcom/mopub/common/LifecycleListener;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/mopub/common/MoPubLifecycleManager;->addLifecycleListener(Lcom/mopub/common/LifecycleListener;)V

    .line 51
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mobileads/CustomEventRewardedAd;->loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_25

    :catch_15
    move-exception p1

    .line 53
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_25
    return-void
.end method

.method protected abstract loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract onInvalidate()V
.end method

.method protected abstract show()V
.end method
