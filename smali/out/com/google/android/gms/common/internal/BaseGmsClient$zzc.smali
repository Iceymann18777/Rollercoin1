.class public abstract Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private zzb:Z

.field private final synthetic zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzb:Z

    return-void
.end method


# virtual methods
.method protected abstract zza(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract zzb()V
.end method

.method public final zzc()V
    .registers 6

    .line 5
    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zza:Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzb:Z

    if-eqz v1, :cond_30

    const-string v1, "GmsClient"

    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Callback proxy "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " being reused. This is not safe."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_4b

    if-eqz v0, :cond_3c

    .line 11
    :try_start_33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zza(Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzb()V

    .line 15
    throw v0

    .line 16
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzb()V

    .line 17
    :goto_3f
    monitor-enter p0

    const/4 v0, 0x1

    .line 18
    :try_start_41
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzb:Z

    .line 19
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzd()V

    return-void

    :catchall_48
    move-exception v0

    .line 19
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0

    :catchall_4b
    move-exception v0

    .line 9
    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public final zzd()V
    .registers 3

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zze()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 24
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final zze()V
    .registers 2

    .line 26
    monitor-enter p0

    const/4 v0, 0x0

    .line 27
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zza:Ljava/lang/Object;

    .line 28
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method
