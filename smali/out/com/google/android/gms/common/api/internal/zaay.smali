.class abstract Lcom/google/android/gms/common/api/internal/zaay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.3.0"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zaaw;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaay;->zaa:Lcom/google/android/gms/common/api/internal/zaaw;

    return-void
.end method


# virtual methods
.method protected abstract zaa()V
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .registers 4

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zaa(Lcom/google/android/gms/common/api/internal/zaaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zab(Lcom/google/android/gms/common/api/internal/zaaz;)Lcom/google/android/gms/common/api/internal/zaaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaay;->zaa:Lcom/google/android/gms/common/api/internal/zaaw;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_22

    if-eq v0, v1, :cond_17

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zaa(Lcom/google/android/gms/common/api/internal/zaaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 8
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaay;->zaa()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_22

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zaa(Lcom/google/android/gms/common/api/internal/zaaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_22
    move-exception v0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zaa(Lcom/google/android/gms/common/api/internal/zaaz;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    throw v0
.end method
