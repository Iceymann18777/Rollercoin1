.class public Lcom/google/android/gms/common/internal/AccountAccessor;
.super Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# direct methods
.method public static getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;
    .registers 4

    if-eqz p0, :cond_1f

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4
    :try_start_6
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor;->zza()Landroid/accounts/Account;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_10
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_20

    :catchall_e
    move-exception p0

    goto :goto_1b

    :catch_10
    :try_start_10
    const-string p0, "AccountAccessor"

    const-string v2, "Remote account accessor probably died"

    .line 8
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_e

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 11
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    throw p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    .line 13
    :goto_20
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/Account;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 15
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza()Landroid/accounts/Account;
    .registers 2

    .line 14
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
