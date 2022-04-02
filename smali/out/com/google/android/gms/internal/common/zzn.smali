.class public final Lcom/google/android/gms/internal/common/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/common/zzo;)Lcom/google/android/gms/internal/common/zzo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/common/zzo<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/common/zzo<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/common/zzp;

    if-nez v0, :cond_19

    instance-of v0, p0, Lcom/google/android/gms/internal/common/zzq;

    if-eqz v0, :cond_9

    goto :goto_19

    .line 3
    :cond_9
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_13

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/common/zzq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/common/zzq;-><init>(Lcom/google/android/gms/internal/common/zzo;)V

    return-object v0

    .line 5
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/common/zzp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/common/zzp;-><init>(Lcom/google/android/gms/internal/common/zzo;)V

    return-object v0

    :cond_19
    :goto_19
    return-object p0
.end method
