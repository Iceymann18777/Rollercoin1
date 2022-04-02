.class Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;
.super Lcom/appnext/ads/fullscreen/FullScreenVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomEventFullScreenVideoAd"
.end annotation


# static fields
.field protected static final TID:Ljava/lang/String; = "311"


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;


# direct methods
.method public constructor <init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 27
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;

    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/appnext/ads/fullscreen/FullScreenVideo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/FullscreenConfig;)V
    .registers 5

    .line 31
    iput-object p1, p0, Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;->this$0:Lcom/appnext/sdk/adapters/mopub/ads/AppnextMoPubCustomEventFullScreenVideo;

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/appnext/ads/fullscreen/FullScreenVideo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/FullscreenConfig;)V

    return-void
.end method


# virtual methods
.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "311"

    return-object v0
.end method
