.class Lcom/mopub/nativeads/ClientPositioningSource;
.super Ljava/lang/Object;
.source "ClientPositioningSource.java"

# interfaces
.implements Lcom/mopub/nativeads/PositioningSource;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPositioning:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/ClientPositioningSource;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-static {p1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->clone(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/ClientPositioningSource;->mPositioning:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/ClientPositioningSource;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/mopub/nativeads/ClientPositioningSource;->mPositioning:Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    return-object p0
.end method


# virtual methods
.method public loadPositions(Ljava/lang/String;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V
    .registers 4

    .line 26
    iget-object p1, p0, Lcom/mopub/nativeads/ClientPositioningSource;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/nativeads/ClientPositioningSource$1;

    invoke-direct {v0, p0, p2}, Lcom/mopub/nativeads/ClientPositioningSource$1;-><init>(Lcom/mopub/nativeads/ClientPositioningSource;Lcom/mopub/nativeads/PositioningSource$PositioningListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
