.class public abstract Lcom/google/android/gms/internal/ads/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/zzr<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzae:Lcom/google/android/gms/internal/ads/zzaf$zza;

.field private final zzaf:I

.field private final zzag:Ljava/lang/String;

.field private final zzah:I

.field private zzai:Lcom/google/android/gms/internal/ads/zzy;

.field private zzaj:Ljava/lang/Integer;

.field private zzak:Lcom/google/android/gms/internal/ads/zzv;

.field private zzal:Z

.field private zzam:Z

.field private zzan:Z

.field private zzao:Z

.field private zzap:Lcom/google/android/gms/internal/ads/zzab;

.field private zzaq:Lcom/google/android/gms/internal/ads/zzc;

.field private zzar:Lcom/google/android/gms/internal/ads/zzt;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzy;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaf$zza;->zzbk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaf$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaf$zza;-><init>()V

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzae:Lcom/google/android/gms/internal/ads/zzaf$zza;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzal:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzam:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzan:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzao:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzaq:Lcom/google/android/gms/internal/ads/zzc;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzaf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzr;->zzag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzr;->zzai:Lcom/google/android/gms/internal/ads/zzy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzap:Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_47

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_47
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzah:I

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzr;)Lcom/google/android/gms/internal/ads/zzaf$zza;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzae:Lcom/google/android/gms/internal/ads/zzaf$zza;

    return-object p0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzr;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Lcom/google/android/gms/internal/ads/zzu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Lcom/google/android/gms/internal/ads/zzu;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzaj:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzr;->zzaj:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzu;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzu;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzaf:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzag:Ljava/lang/String;

    return-object v0
.end method

.method public final isCanceled()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    monitor-exit v0

    return v1

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzah:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "0x"

    if-eqz v1, :cond_17

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c
    const-string v1, "[ ] "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzr;->zzag:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzu;->zzaw:Lcom/google/android/gms/internal/ads/zzu;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzr;->zzaj:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zzr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzaj:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzc;)Lcom/google/android/gms/internal/ads/zzr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzaq:Lcom/google/android/gms/internal/ads/zzc;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzr;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzv;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzak:Lcom/google/android/gms/internal/ads/zzv;

    return-object p0
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzp;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzx<",
            "TT;>;"
        }
    .end annotation
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzt;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzar:Lcom/google/android/gms/internal/ads/zzt;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzx<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzar:Lcom/google/android/gms/internal/ads/zzt;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzt;->zza(Lcom/google/android/gms/internal/ads/zzr;Lcom/google/android/gms/internal/ads/zzx;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method protected abstract zza(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzae;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzai:Lcom/google/android/gms/internal/ads/zzy;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzy;->zzd(Lcom/google/android/gms/internal/ads/zzae;)V

    :cond_b
    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final zzb(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaf$zza;->zzbk:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzae:Lcom/google/android/gms/internal/ads/zzaf$zza;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaf$zza;->zza(Ljava/lang/String;J)V

    :cond_11
    return-void
.end method

.method final zzc(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzak:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzv;->zzf(Lcom/google/android/gms/internal/ads/zzr;)V

    :cond_7
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaf$zza;->zzbk:Z

    if-eqz v0, :cond_3d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2f

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzs;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Lcom/google/android/gms/internal/ads/zzr;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzr;->zzae:Lcom/google/android/gms/internal/ads/zzaf$zza;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaf$zza;->zza(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzae:Lcom/google/android/gms/internal/ads/zzaf$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzr;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaf$zza;->zzc(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public final zze()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzah:I

    return v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzaq:Lcom/google/android/gms/internal/ads/zzc;

    return-object v0
.end method

.method public zzg()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzh()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzal:Z

    return v0
.end method

.method public final zzi()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzap:Lcom/google/android/gms/internal/ads/zzab;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzc()I

    move-result v0

    return v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzab;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->zzap:Lcom/google/android/gms/internal/ads/zzab;

    return-object v0
.end method

.method public final zzk()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzan:Z

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final zzl()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzan:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method final zzm()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzr;->zzar:Lcom/google/android/gms/internal/ads/zzt;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzt;->zza(Lcom/google/android/gms/internal/ads/zzr;)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method
