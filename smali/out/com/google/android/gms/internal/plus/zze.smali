.class public final Lcom/google/android/gms/internal/plus/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/Account;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/plus/Plus;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/plus/internal/zzh;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/plus/internal/zzh;->zza()V

    :cond_a
    return-void
.end method

.method public final getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/plus/Plus;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/plus/internal/zzh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/plus/internal/zzh;->getAccountName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/plus/zzf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/plus/zzf;-><init>(Lcom/google/android/gms/internal/plus/zze;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method
