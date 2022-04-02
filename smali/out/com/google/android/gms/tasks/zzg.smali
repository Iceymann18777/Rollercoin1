.class final Lcom/google/android/gms/tasks/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/tasks/zzh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzh;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzh;->zza(Lcom/google/android/gms/tasks/zzh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzh;->zzb(Lcom/google/android/gms/tasks/zzh;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-static {v1}, Lcom/google/android/gms/tasks/zzh;->zzb(Lcom/google/android/gms/tasks/zzh;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    .line 5
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method
