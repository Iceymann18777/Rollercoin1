.class public final Lcom/google/android/gms/internal/ads/zzahj;
.super Lcom/google/android/gms/internal/ads/zzahf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method


# virtual methods
.method public final getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-object v0
.end method

.method public final onRewardedVideoAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdClosed()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoAdFailedToLoad(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdFailedToLoad(I)V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLeftApplication()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLoaded()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdOpened()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    :cond_7
    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoStarted()V

    :cond_7
    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzagu;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzahh;-><init>(Lcom/google/android/gms/internal/ads/zzagu;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V

    :cond_c
    return-void
.end method
