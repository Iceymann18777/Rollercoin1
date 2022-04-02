.class public Lcom/google/android/gms/internal/firebase-iid/zze;
.super Landroid/os/Handler;
.source "com.google.firebase:firebase-iid@@20.2.3"


# static fields
.field private static propagator:Lcom/google/android/gms/internal/firebase-iid/zzg;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method private prepare(Landroid/os/Message;J)V
    .registers 5

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/firebase-iid/zze;->propagator:Lcom/google/android/gms/internal/firebase-iid/zzg;

    if-eqz v0, :cond_7

    .line 25
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-iid/zzg;->zza(Lcom/google/android/gms/internal/firebase-iid/zze;Landroid/os/Message;J)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .registers 5

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-iid/zze;->propagator:Lcom/google/android/gms/internal/firebase-iid/zzg;

    if-nez v0, :cond_8

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-iid/zze;->dispatchMessageTraced(Landroid/os/Message;)V

    return-void

    .line 12
    :cond_8
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-iid/zzg;->zza(Lcom/google/android/gms/internal/firebase-iid/zze;Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-iid/zze;->dispatchMessageTraced(Landroid/os/Message;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 14
    invoke-interface {v0, p0, p1, v1}, Lcom/google/android/gms/internal/firebase-iid/zzg;->zza(Lcom/google/android/gms/internal/firebase-iid/zze;Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :catchall_13
    move-exception v2

    .line 17
    :try_start_14
    invoke-interface {v0, p0, v2, v1}, Lcom/google/android/gms/internal/firebase-iid/zzg;->zza(Lcom/google/android/gms/internal/firebase-iid/zze;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 18
    throw v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v2

    .line 19
    invoke-interface {v0, p0, p1, v1}, Lcom/google/android/gms/internal/firebase-iid/zzg;->zza(Lcom/google/android/gms/internal/firebase-iid/zze;Landroid/os/Message;Ljava/lang/Object;)V

    .line 20
    throw v2
.end method

.method protected dispatchMessageTraced(Landroid/os/Message;)V
    .registers 2

    .line 21
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 4

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-iid/zze;->prepare(Landroid/os/Message;J)V

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
