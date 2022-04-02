.class public final Lcom/google/android/gms/internal/ads/zzn;
.super Ljava/lang/Thread;


# instance fields
.field private final zzaa:Lcom/google/android/gms/internal/ads/zzm;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzb;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaa;

.field private volatile zzl:Z

.field private final zzz:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzm;Lcom/google/android/gms/internal/ads/zzb;Lcom/google/android/gms/internal/ads/zzaa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/zzm;",
            "Lcom/google/android/gms/internal/ads/zzb;",
            "Lcom/google/android/gms/internal/ads/zzaa;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzn;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzn;->zzz:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzn;->zzaa:Lcom/google/android/gms/internal/ads/zzm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzn;->zzj:Lcom/google/android/gms/internal/ads/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzn;->zzk:Lcom/google/android/gms/internal/ads/zzaa;

    return-void
.end method

.method private final processRequest()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzn;->zzz:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzr;

    :try_start_c
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzr;->zzb(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzr;->isCanceled()Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzr;->zze()I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzn;->zzaa:Lcom/google/android/gms/internal/ads/zzm;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzm;->zzc(Lcom/google/android/gms/internal/ads/zzr;)Lcom/google/android/gms/internal/ads/zzp;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzr;->zzb(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/zzp;->zzac:Z

    if-eqz v4, :cond_39

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzr;->zzl()Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v3, "not-modified"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzr;->zzc(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzr;->zzm()V

    return-void

    :cond_39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzr;->zza(Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzr;->zzb(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzr;->zzh()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzx;->zzbg:Lcom/google/android/gms/internal/ads/zzc;

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzn;->zzj:Lcom/google/android/gms/internal/ads/zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzr;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzx;->zzbg:Lcom/google/android/gms/internal/ads/zzc;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzc;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzr;->zzb(Ljava/lang/String;)V

    :cond_5c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzr;->zzk()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzn;->zzk:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-interface {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zzb(Lcom/google/android/gms/internal/ads/zzr;Lcom/google/android/gms/internal/ads/zzx;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzr;->zza(Lcom/google/android/gms/internal/ads/zzx;)V
    :try_end_67
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_c .. :try_end_67} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_67} :catch_68

    return-void

    :catch_68
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unhandled exception %s"

    invoke-static {v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzaf;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzae;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzae;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzn;->zzk:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-interface {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzr;Lcom/google/android/gms/internal/ads/zzae;)V

    :goto_8a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzr;->zzm()V

    return-void

    :catch_8e
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzae;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzn;->zzk:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzr;Lcom/google/android/gms/internal/ads/zzae;)V

    goto :goto_8a
.end method


# virtual methods
.method public final quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzn;->zzl:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzn;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_5
    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzn;->processRequest()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    :catch_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzn;->zzl:Z

    if-eqz v0, :cond_5

    return-void
.end method
