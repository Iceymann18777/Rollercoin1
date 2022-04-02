.class Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;
.super Ljava/lang/Object;
.source "FastTrackAdsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextConfigWrapper"
.end annotation


# instance fields
.field configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V
    .registers 4

    .line 256
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->this$0:Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 258
    iput-object p3, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method getConfigPhp()Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->configPhp:Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController$ContextConfigWrapper;->context:Landroid/content/Context;

    return-object v0
.end method
