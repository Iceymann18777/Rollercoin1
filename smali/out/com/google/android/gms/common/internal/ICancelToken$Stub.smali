.class public abstract Lcom/google/android/gms/common/internal/ICancelToken$Stub;
.super Lcom/google/android/gms/internal/common/zza;
.source "com.google.android.gms:play-services-basement@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ICancelToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ICancelToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/ICancelToken$Stub$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.common.internal.ICancelToken"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zza;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/ICancelToken;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.common.internal.ICancelToken"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/common/internal/ICancelToken;

    if-eqz v1, :cond_11

    .line 7
    check-cast v0, Lcom/google/android/gms/common/internal/ICancelToken;

    return-object v0

    .line 8
    :cond_11
    new-instance v0, Lcom/google/android/gms/common/internal/ICancelToken$Stub$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/ICancelToken$Stub$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
