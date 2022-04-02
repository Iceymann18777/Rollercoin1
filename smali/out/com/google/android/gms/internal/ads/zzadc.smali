.class final Lcom/google/android/gms/internal/ads/zzadc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final synthetic zzcca:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final synthetic zzccb:Lcom/google/android/gms/internal/ads/zzadb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzadb;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzccb:Lcom/google/android/gms/internal/ads/zzadb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzcca:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzccb:Lcom/google/android/gms/internal/ads/zzadb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadb;->zza(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzcca:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_d
    :try_start_d
    const-string v0, "AdMob exception reporter failed reporting the exception."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->e(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzcca:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzcca:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_22

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_22
    throw v0
.end method
