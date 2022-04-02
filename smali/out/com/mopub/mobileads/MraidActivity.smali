.class public Lcom/mopub/mobileads/MraidActivity;
.super Lcom/mopub/mobileads/BaseInterstitialActivity;
.source "MraidActivity.java"


# instance fields
.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

.field protected mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private mMraidController:Lcom/mopub/mraid/MraidController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mraid/MraidController;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    return-object p0
.end method

.method protected static createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;JLcom/mopub/common/CreativeOrientation;)Landroid/content/Intent;
    .registers 7

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "broadcastIdentifier"

    .line 162
    invoke-virtual {v0, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "mopub-intent-ad-report"

    .line 163
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "com_mopub_orientation"

    .line 164
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 165
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/Long;Lcom/mopub/common/AdReport;)V
    .registers 11

    .line 71
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    invoke-static {p4}, Lcom/mopub/mobileads/MraidActivity;->getResponseString(Lcom/mopub/common/AdReport;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-direct {v3, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/mopub/mraid/MraidController;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, p1, p4, v0}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/MraidActivity;->preRenderHtml(Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;Lcom/mopub/mobileads/BaseWebView;Ljava/lang/Long;Lcom/mopub/mraid/MraidController;)V

    return-void
.end method

.method static preRenderHtml(Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;Lcom/mopub/mobileads/BaseWebView;Ljava/lang/Long;Lcom/mopub/mraid/MraidController;)V
    .registers 14

    .line 88
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 89
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p3}, Lcom/mopub/mobileads/BaseWebView;->enableJavascriptCaching()V

    .line 96
    invoke-virtual {p3}, Lcom/mopub/mobileads/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/mopub/mobileads/MraidActivity$1;

    invoke-direct {v1, p1, p5, p3}, Lcom/mopub/mobileads/MraidActivity$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Lcom/mopub/mraid/MraidController;Lcom/mopub/mobileads/BaseWebView;)V

    invoke-virtual {p3, v1}, Lcom/mopub/mobileads/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 129
    new-instance p1, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {p1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {p1, v0, p3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object v2, p3

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/mopub/mobileads/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p4, p0, p3, p1, p5}, Lcom/mopub/mobileads/WebViewCacheService;->storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;Lcom/mopub/mraid/MraidController;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/mopub/common/AdReport;JLcom/mopub/common/CreativeOrientation;)V
    .registers 8

    .line 144
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 145
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mopub/mobileads/MraidActivity;->createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;JLcom/mopub/common/CreativeOrientation;)Landroid/content/Intent;

    move-result-object p1

    .line 148
    :try_start_c
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_30

    .line 150
    :catch_10
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x1

    sget-object p3, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object p3, p1, p2

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string p0, "MraidInterstitial"

    const-string p1, "MraidActivity.class not found. Did you declare MraidActivity in your manifest?"

    .line 152
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .registers 6

    .line 171
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 173
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MraidActivity received a null HTML body. Finishing the activity."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    .line 175
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 178
    :cond_20
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 181
    invoke-static {v1}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v2

    :cond_2b
    if-eqz v2, :cond_3a

    .line 184
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mraid/MraidController;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 185
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mraid/MraidController;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    goto :goto_45

    .line 187
    :cond_3a
    new-instance v1, Lcom/mopub/mraid/MraidController;

    iget-object v3, p0, Lcom/mopub/mobileads/MraidActivity;->mAdReport:Lcom/mopub/common/AdReport;

    sget-object v4, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v1, p0, v3, v4}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    .line 191
    :goto_45
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    iget-object v3, p0, Lcom/mopub/mobileads/MraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-virtual {v1, v3}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 192
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance v3, Lcom/mopub/mobileads/MraidActivity$2;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/MraidActivity$2;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v1, v3}, Lcom/mopub/mraid/MraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 244
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance v3, Lcom/mopub/mobileads/MraidActivity$3;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/MraidActivity$3;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v1, v3}, Lcom/mopub/mraid/MraidController;->setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V

    if-eqz v2, :cond_69

    .line 255
    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    goto :goto_73

    .line 257
    :cond_69
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance v2, Lcom/mopub/mobileads/MraidActivity$4;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidActivity$4;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/MraidController;->fillContent(Ljava/lang/String;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)V

    .line 272
    :goto_73
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->getAdContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 277
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 278
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com_mopub_orientation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 282
    sget-object v0, Lcom/mopub/common/CreativeOrientation;->DEVICE:Lcom/mopub/common/CreativeOrientation;

    .line 283
    instance-of v1, p1, Lcom/mopub/common/CreativeOrientation;

    if-eqz v1, :cond_1e

    .line 284
    move-object v0, p1

    check-cast v0, Lcom/mopub/common/CreativeOrientation;

    .line 286
    :cond_1e
    invoke-static {p0, v0}, Lcom/mopub/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V

    .line 288
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz p1, :cond_28

    .line 289
    invoke-virtual {p1, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startDeferredDisplaySession(Landroid/app/Activity;)V

    .line 291
    :cond_28
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 292
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p1, "com.mopub.action.interstitial.show"

    invoke-static {p0, v0, v1, p1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 295
    :cond_3b
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 299
    iget-object p1, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz p1, :cond_4b

    .line 300
    invoke-virtual {p1, p0}, Lcom/mopub/mraid/MraidController;->onShow(Landroid/app/Activity;)V

    :cond_4b
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_a

    .line 323
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 326
    :cond_a
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_11

    .line 327
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->destroy()V

    .line 330
    :cond_11
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 331
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 333
    :cond_24
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_b

    .line 307
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->pause(Z)V

    .line 309
    :cond_b
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 314
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onResume()V

    .line 315
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_a

    .line 316
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->resume()V

    :cond_a
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .registers 3

    .line 338
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 339
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_9

    .line 340
    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    :cond_9
    return-void
.end method
