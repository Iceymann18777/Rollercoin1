.class public final Lcom/google/android/gms/ads/internal/overlay/zzl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .registers 6

    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyu:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-nez v0, :cond_1d

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbym:Lcom/google/android/gms/internal/ads/zzjd;

    if-eqz p2, :cond_12

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbym:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzjd;->onAdClicked()V

    :cond_12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeh()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyl:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyt:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    return-void

    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzcvg:Z

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result p1

    if-nez p1, :cond_43

    const/high16 p1, 0x80000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_43
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_4c

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
