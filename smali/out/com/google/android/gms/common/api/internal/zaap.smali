.class abstract Lcom/google/android/gms/common/api/internal/zaap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaaf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zaaf;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaaf;Lcom/google/android/gms/common/api/internal/zaae;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaap;-><init>(Lcom/google/android/gms/common/api/internal/zaaf;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_d} :catch_28
    .catchall {:try_start_9 .. :try_end_d} :catchall_26

    if-eqz v0, :cond_19

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 6
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaap;->zaa()V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_28
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_26
    move-exception v0

    goto :goto_3c

    :catch_28
    move-exception v0

    .line 10
    :try_start_29
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaf;->zad(Lcom/google/android/gms/common/api/internal/zaaf;)Lcom/google/android/gms/common/api/internal/zaaz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zaaz;->zaa(Ljava/lang/RuntimeException;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_26

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 13
    :goto_3c
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaaf;->zac(Lcom/google/android/gms/common/api/internal/zaaf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 14
    throw v0
.end method

.method protected abstract zaa()V
.end method
