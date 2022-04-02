.class public final synthetic Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$rE5CI0zEOyCW1K7MLo2EcS_vU5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$rE5CI0zEOyCW1K7MLo2EcS_vU5c;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    return-void
.end method


# virtual methods
.method public final onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .registers 3

    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/-$$Lambda$FastTrackAdmobAdapter$rE5CI0zEOyCW1K7MLo2EcS_vU5c;->f$0:Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/ads/fastTrack/adapters/FastTrackAdmobAdapter;->lambda$loadNativeAds$3$FastTrackAdmobAdapter(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method
