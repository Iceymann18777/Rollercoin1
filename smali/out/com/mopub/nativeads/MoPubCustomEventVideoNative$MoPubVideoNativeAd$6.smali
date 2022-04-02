.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->render(Lcom/mopub/nativeads/MediaLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 578
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventVideoNative;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 579
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$1300(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)V

    .line 580
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$500(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeVideoController;->triggerImpressionTrackers()V

    .line 581
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {p1}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$200(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    invoke-static {v0}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->access$1400(Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$6;->this$0:Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    iget-object v2, v2, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-static {p1, v0, v1, v2}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startNativeVideo(Landroid/content/Context;JLcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method
