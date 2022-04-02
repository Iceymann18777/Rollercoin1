.class final Lcom/google/android/gms/internal/common/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/common/zzo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/common/zzo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile zza:Lcom/google/android/gms/internal/common/zzo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/common/zzo<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile zzb:Z

.field private zzc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/common/zzo<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzl;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/common/zzo;

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzp;->zza:Lcom/google/android/gms/internal/common/zzo;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzp;->zza:Lcom/google/android/gms/internal/common/zzo;

    if-nez v0, :cond_2a

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzp;->zzc:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<supplier that returned "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Suppliers.memoize("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/common/zzp;->zzb:Z

    if-nez v0, :cond_1e

    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/common/zzp;->zzb:Z

    if-nez v0, :cond_19

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzp;->zza:Lcom/google/android/gms/internal/common/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/common/zzo;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/common/zzp;->zzc:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/common/zzp;->zzb:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/common/zzp;->zza:Lcom/google/android/gms/internal/common/zzo;

    .line 11
    monitor-exit p0

    return-object v0

    .line 12
    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v0

    .line 13
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzp;->zzc:Ljava/lang/Object;

    return-object v0
.end method
