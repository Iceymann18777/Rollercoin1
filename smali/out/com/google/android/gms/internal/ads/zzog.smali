.class public final Lcom/google/android/gms/internal/ads/zzog;
.super Lcom/google/android/gms/internal/ads/zzoe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzog;->zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzoa;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzog;->zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/zznz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zznz;-><init>(Lcom/google/android/gms/internal/ads/zzoa;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
