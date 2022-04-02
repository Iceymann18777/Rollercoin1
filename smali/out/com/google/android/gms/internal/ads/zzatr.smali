.class final Lcom/google/android/gms/internal/ads/zzatr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private zzdgz:Lcom/google/android/gms/internal/ads/zzats;

.field private final zzdha:Ljava/lang/String;

.field private final zzdhb:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzba;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdhc:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatr;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdha:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhc:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzats;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhc:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0, p0}, Lcom/google/android/gms/internal/ads/zzats;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdgz:Lcom/google/android/gms/internal/ads/zzats;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhb:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdgz:Lcom/google/android/gms/internal/ads/zzats;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzats;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final zznz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdgz:Lcom/google/android/gms/internal/ads/zzats;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzats;->isConnected()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdgz:Lcom/google/android/gms/internal/ads/zzats;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzats;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdgz:Lcom/google/android/gms/internal/ads/zzats;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzats;->disconnect()V

    :cond_17
    return-void
.end method

.method private final zzwb()Lcom/google/android/gms/internal/ads/zzatx;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdgz:Lcom/google/android/gms/internal/ads/zzats;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzats;->zzwd()Lcom/google/android/gms/internal/ads/zzatx;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzwc()Lcom/google/android/gms/internal/ads/zzba;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzba;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzba;-><init>()V

    const-wide/32 v1, 0x8000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzba;->zzdu:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatr;->zzwb()Lcom/google/android/gms/internal/ads/zzatx;

    move-result-object p1

    if-eqz p1, :cond_39

    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatr;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdha:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzatt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzatx;->zza(Lcom/google/android/gms/internal/ads/zzatt;)Lcom/google/android/gms/internal/ads/zzatv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzatv;->zzwe()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    :catch_1c
    :goto_1c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatr;->zznz()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhc:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_25
    :try_start_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatr;->zzwc()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2e} :catch_1c
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_1c

    :catchall_2f
    move-exception p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatr;->zznz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhc:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_39
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatr;->zzwc()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatr;->zzwc()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final zzak(I)Lcom/google/android/gms/internal/ads/zzba;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatr;->zzdhb:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzba;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 p1, 0x0

    :goto_e
    if-nez p1, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatr;->zzwc()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object p1

    :cond_14
    return-object p1
.end method
