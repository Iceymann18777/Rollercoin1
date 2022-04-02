.class public final Lcom/google/android/gms/internal/ads/zzajb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# direct methods
.method public static zzb(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzx(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "fbs_aeid"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaiy;->zze(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2d
    return-object p0
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6

    const-string v0, "&adurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const-string v0, "?adurl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_f
    if-eq v0, v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_3d
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_a8

    :cond_12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    return-object p0

    :cond_1d
    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzaxr:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6d

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzaxs:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzcx(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zze(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzcy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zzf(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6d
    const-string v1, "fbs_aeid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzcx(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zze(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzcy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzaiy;->zzf(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_a8
    :goto_a8
    return-object p0
.end method

.method public static zzc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_60

    :cond_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaiy;->zzab(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1c

    return-object p0

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzcy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    return-object p0

    :cond_27
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxr:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxs:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    const-string v0, "fbs_aeid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_60
    :goto_60
    return-object p0
.end method
