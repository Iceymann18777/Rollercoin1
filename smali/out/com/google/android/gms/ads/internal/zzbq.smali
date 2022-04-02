.class final Lcom/google/android/gms/ads/internal/zzbq;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final synthetic zzaba:Lcom/google/android/gms/ads/internal/zzbp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    if-eqz p1, :cond_19

    :try_start_8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzkh;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zzeb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    :cond_e
    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbcw:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "#007 Could not call remote method."

    const/4 v2, 0x1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    if-eqz p1, :cond_3a

    :try_start_2b
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzkh;->onAdFailedToLoad(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzbp;->zzk(I)V

    return v2

    :cond_40
    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbcx:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    if-eqz p1, :cond_68

    :try_start_5a
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdFailedToLoad(I)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_68
    :goto_68
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzbp;->zzk(I)V

    return v2

    :cond_6e
    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbcy:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    if-eqz p1, :cond_96

    :try_start_88
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkh;->onAdLoaded()V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_96
    :goto_96
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzbp;->zzu(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzbp;->zzk(I)V

    return v2

    :cond_a2
    const-string p1, "gmsg://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ab

    return v2

    :cond_ab
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    if-eqz p1, :cond_c1

    :try_start_b3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkh;->onAdLeftApplication()V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bc} :catch_bd

    goto :goto_c1

    :catch_bd
    move-exception p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c1
    :goto_c1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzbp;->zza(Lcom/google/android/gms/ads/internal/zzbp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzbq;->zzaba:Lcom/google/android/gms/ads/internal/zzbp;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/zzbp;->zzb(Lcom/google/android/gms/ads/internal/zzbp;Ljava/lang/String;)V

    return v2
.end method
