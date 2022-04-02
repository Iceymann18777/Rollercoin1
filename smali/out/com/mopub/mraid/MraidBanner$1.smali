.class Lcom/mopub/mraid/MraidBanner$1;
.super Ljava/lang/Object;
.source "MraidBanner.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidBanner;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidBanner;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerCollapsed()V

    return-void
.end method

.method public onExpand()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerExpanded()V

    .line 113
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerClicked()V

    return-void
.end method

.method public onFailedToLoad()V
    .registers 5

    .line 98
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 99
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 98
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onLoaded(Landroid/view/View;)V
    .registers 7

    .line 90
    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->setShouldHonorServerDimensions(Landroid/view/View;)V

    .line 91
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onOpen()V
    .registers 5

    .line 127
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerClicked()V

    return-void
.end method

.method public onRenderProcessGone(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .registers 6

    .line 106
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mraid/MraidBanner;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {v0}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onResize(Z)V
    .registers 2

    if-eqz p1, :cond_c

    .line 119
    iget-object p1, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {p1}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onResumeAutoRefresh()V

    goto :goto_15

    .line 121
    :cond_c
    iget-object p1, p0, Lcom/mopub/mraid/MraidBanner$1;->this$0:Lcom/mopub/mraid/MraidBanner;

    invoke-static {p1}, Lcom/mopub/mraid/MraidBanner;->access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/InternalCustomEventBannerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/mobileads/InternalCustomEventBannerListener;->onPauseAutoRefresh()V

    :goto_15
    return-void
.end method
