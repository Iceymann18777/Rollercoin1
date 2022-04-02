.class final Lcom/google/android/gms/internal/ads/zzde;
.super Ljava/lang/Object;


# static fields
.field static zzso:Lcom/google/android/gms/internal/ads/zzauf;


# direct methods
.method static zzb(Lcom/google/android/gms/internal/ads/zzcz;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzde;->zzso:Lcom/google/android/gms/internal/ads/zzauf;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbax:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_36

    :cond_1b
    const/4 v0, 0x0

    if-nez p0, :cond_1f

    goto :goto_33

    :cond_1f
    const-string v3, "4o7tecxtkw7XaNt5hPj+0H1LvOi0SgxCIJTY9VcbazM/HSl/sFlxBFwnc8glnvoB"

    const-string v4, "RgSY6YxU2k1vLXOV3vapBnQwJDzYDlmX50wbm2tDcnw="

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_2a

    goto :goto_33

    :cond_2a
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_33
    if-nez v0, :cond_36

    return v2

    :cond_36
    :try_start_36
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbi;->zza(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3a} :catch_b7

    :try_start_3a
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaul;->zzh([B)Lcom/google/android/gms/internal/ads/zzauh;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavc;->zzdht:Lcom/google/android/gms/internal/ads/zzayf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzaal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaxp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzyw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzze()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzzh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_96

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzzh()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzauo;->zzdy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaua;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzyw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzze()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzzf()I

    move-result v7

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzaua;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzaug;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzyw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxp;->zzzg()Z

    move-result v3

    invoke-static {v5, v4, v3}, Lcom/google/android/gms/internal/ads/zzauo;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaug;Z)V

    goto :goto_48

    :cond_96
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ae
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzavf;->zza(Lcom/google/android/gms/internal/ads/zzauh;)Lcom/google/android/gms/internal/ads/zzauf;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzde;->zzso:Lcom/google/android/gms/internal/ads/zzauf;
    :try_end_b4
    .catch Ljava/security/GeneralSecurityException; {:try_start_3a .. :try_end_b4} :catch_b7

    if-eqz p0, :cond_b7

    return v1

    :catch_b7
    :cond_b7
    return v2
.end method
