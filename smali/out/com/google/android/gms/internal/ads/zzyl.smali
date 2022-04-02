.class public final Lcom/google/android/gms/internal/ads/zzyl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerListener;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

.field private zzbuv:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

.field private zzbuw:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

.field private zzbux:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .registers 4

    instance-of p0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyi;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzlo;)V

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->hasVideoContent()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zza(Lcom/google/android/gms/ads/VideoController;)V

    :cond_1d
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->hasVideoContent()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p2, p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zza(Lcom/google/android/gms/ads/VideoController;)V

    :cond_28
    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuv:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuw:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbux:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_32

    if-nez p1, :cond_18

    if-nez v0, :cond_18

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    const-string v1, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideClickHandling()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string p1, "Adapter called onAdClicked."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdClicked()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdClosed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzxt;->onAdFailedToLoad(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzxt;->onAdFailedToLoad(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x37

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzxt;->onAdFailedToLoad(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdImpression(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuv:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuw:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbux:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    const-string v2, "#007 Could not call remote method."

    if-nez v1, :cond_32

    if-nez p1, :cond_18

    if-nez v0, :cond_18

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_18
    const-string v1, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    return-void

    :cond_26
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    return-void

    :cond_32
    const-string p1, "Adapter called onAdImpression."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdImpression()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLeftApplication."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLeftApplication()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLoaded()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdLoaded."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLoaded()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuv:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuw:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzyl;->zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    :try_start_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLoaded()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuw:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuv:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzyl;->zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V

    :try_start_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLoaded()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAdOpened."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoEnd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onVideoEnd."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onVideoEnd()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string p1, "Adapter called onAppEvent."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxt;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V
    .registers 5

    const-string p1, "#008 Must be called on the main UI thread."

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Adapter called onAdLoaded with template id "

    if-eqz v0, :cond_1a

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :cond_1a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbux:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    :try_start_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLoaded()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
    .registers 4

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzqv;

    if-eqz p1, :cond_17

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuu:Lcom/google/android/gms/internal/ads/zzxt;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzqv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzqv;->zzku()Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxt;->zzb(Lcom/google/android/gms/internal/ads/zzqs;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_17
    const-string p1, "Unexpected native custom template ad type."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    return-void
.end method

.method public final zzmx()Lcom/google/android/gms/ads/mediation/NativeAdMapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuv:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    return-object v0
.end method

.method public final zzmy()Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbuw:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    return-object v0
.end method

.method public final zzmz()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyl;->zzbux:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    return-object v0
.end method
