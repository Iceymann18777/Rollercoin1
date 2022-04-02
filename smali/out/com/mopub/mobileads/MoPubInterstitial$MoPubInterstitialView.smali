.class public Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
.super Lcom/mopub/mobileads/MoPubView;
.source "MoPubInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoPubInterstitialView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubInterstitial;Landroid/content/Context;)V
    .registers 3

    .line 500
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 501
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 502
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->setAutorefreshEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected adFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 4

    .line 549
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$300(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    .line 550
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$400(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 551
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$400(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-interface {v0, v1, p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1a
    return-void
.end method

.method public getAdFormat()Lcom/mopub/common/AdFormat;
    .registers 2

    .line 511
    sget-object v0, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    return-object v0
.end method

.method getCustomEventClassName()Ljava/lang/String;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadCustomEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-nez v0, :cond_5

    return-void

    .line 520
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 521
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Couldn\'t invoke custom event because the server did not specify one."

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 522
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    return-void

    .line 526
    :cond_1e
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 527
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->invalidate()V

    .line 530
    :cond_2f
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Loading custom event interstitial adapter."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    .line 536
    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->getBroadcastIdentifier()J

    move-result-wide v7

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    .line 537
    invoke-virtual {v1}, Lcom/mopub/mobileads/AdViewController;->getAdReport()Lcom/mopub/common/AdReport;

    move-result-object v9

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    .line 532
    invoke-static/range {v4 .. v9}, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->create(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$202(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    .line 538
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->setAdapterListener(Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;)V

    .line 539
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->loadInterstitial()V

    return-void
.end method

.method protected resolveAdSize()Landroid/graphics/Point;
    .registers 2

    .line 557
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->this$0:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->access$500(Lcom/mopub/mobileads/MoPubInterstitial;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method protected trackImpression()V
    .registers 5

    .line 543
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Tracking impression for interstitial."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->trackImpression()V

    :cond_16
    return-void
.end method
