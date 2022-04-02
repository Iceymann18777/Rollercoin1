.class final Lcom/google/ads/mediation/zzb;
.super Lcom/google/android/gms/ads/reward/zza;


# instance fields
.field private final synthetic zzhd:Lcom/google/ads/mediation/AbstractAdViewAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ads/mediation/zzb;->zzhd:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzt()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/mediation/zzb;->zzhd:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/ads/mediation/zzb;->zzhd:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/ads/mediation/zzb;->zzhd:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzb(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->zzba()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/zzb;->zzhd:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-static {v1}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->zzc(Landroid/os/Bundle;)V

    :cond_23
    return-void
.end method
