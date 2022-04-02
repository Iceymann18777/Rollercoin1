.class Lcom/mopub/nativeads/NativeAdData;
.super Ljava/lang/Object;
.source "NativeAdData.java"


# instance fields
.field private final adRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

.field private final adResponse:Lcom/mopub/nativeads/NativeAd;

.field private final adUnitId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/nativeads/MoPubAdRenderer;Lcom/mopub/nativeads/NativeAd;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdData;->adUnitId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/mopub/nativeads/NativeAdData;->adRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 22
    iput-object p3, p0, Lcom/mopub/nativeads/NativeAdData;->adResponse:Lcom/mopub/nativeads/NativeAd;

    return-void
.end method


# virtual methods
.method getAd()Lcom/mopub/nativeads/NativeAd;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdData;->adResponse:Lcom/mopub/nativeads/NativeAd;

    return-object v0
.end method

.method getAdRenderer()Lcom/mopub/nativeads/MoPubAdRenderer;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdData;->adRenderer:Lcom/mopub/nativeads/MoPubAdRenderer;

    return-object v0
.end method

.method getAdUnitId()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdData;->adUnitId:Ljava/lang/String;

    return-object v0
.end method
