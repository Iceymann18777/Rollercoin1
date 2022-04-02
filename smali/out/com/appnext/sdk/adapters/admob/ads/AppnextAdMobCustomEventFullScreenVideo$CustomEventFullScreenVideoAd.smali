.class Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;
.super Lcom/appnext/ads/fullscreen/FullScreenVideo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomEventFullScreenVideoAd"
.end annotation


# static fields
.field protected static final TID:Ljava/lang/String; = "321"


# instance fields
.field final synthetic this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;


# direct methods
.method public constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 26
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/appnext/ads/fullscreen/FullScreenVideo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/FullscreenConfig;)V
    .registers 5

    .line 30
    iput-object p1, p0, Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo$CustomEventFullScreenVideoAd;->this$0:Lcom/appnext/sdk/adapters/admob/ads/AppnextAdMobCustomEventFullScreenVideo;

    .line 31
    invoke-direct {p0, p2, p3, p4}, Lcom/appnext/ads/fullscreen/FullScreenVideo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/ads/fullscreen/FullscreenConfig;)V

    return-void
.end method


# virtual methods
.method public getTID()Ljava/lang/String;
    .registers 2

    const-string v0, "321"

    return-object v0
.end method
