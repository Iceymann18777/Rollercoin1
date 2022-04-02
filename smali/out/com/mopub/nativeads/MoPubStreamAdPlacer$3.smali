.class Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource$PositioningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubStreamAdPlacer;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/MoPubStreamAdPlacer;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;->this$0:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 5

    .line 258
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Unable to show ads because ad positions could not be loaded from the MoPub ad server."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public onLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubStreamAdPlacer$3;->this$0:Lcom/mopub/nativeads/MoPubStreamAdPlacer;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubStreamAdPlacer;->handlePositioningLoad(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method
