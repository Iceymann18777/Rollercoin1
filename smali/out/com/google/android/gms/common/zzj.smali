.class public final Lcom/google/android/gms/common/zzj;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/zzj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/common/zzd;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/google/android/gms/common/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .registers 5
    .param p2    # Landroid/os/IBinder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/zzj;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/zzj;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/common/zzd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzj;->zzb:Lcom/google/android/gms/common/zzd;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/common/zzj;->zzc:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/common/zzj;->zzd:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)V
    .registers 5
    .param p2    # Lcom/google/android/gms/common/zzd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/zzj;->zza:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/common/zzj;->zzb:Lcom/google/android/gms/common/zzd;

    .line 10
    iput-boolean p3, p0, Lcom/google/android/gms/common/zzj;->zzc:Z

    .line 11
    iput-boolean p4, p0, Lcom/google/android/gms/common/zzj;->zzd:Z

    return-void
.end method

.method private static zza(Landroid/os/IBinder;)Lcom/google/android/gms/common/zzd;
    .registers 4
    .param p0    # Landroid/os/IBinder;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "Could not unwrap certificate"

    const-string v1, "GoogleCertificatesQuery"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    return-object v2

    .line 38
    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzn;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/common/internal/zzl;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_26

    if-nez p0, :cond_14

    move-object p0, v2

    goto :goto_1a

    .line 43
    :cond_14
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_1a
    if-eqz p0, :cond_22

    .line 45
    new-instance v2, Lcom/google/android/gms/common/zzg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    goto :goto_25

    .line 46
    :cond_22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-object v2

    :catch_26
    move-exception p0

    .line 41
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/zzj;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/zzj;->zzb:Lcom/google/android/gms/common/zzd;

    if-nez v0, :cond_18

    const-string v0, "GoogleCertificatesQuery"

    const-string v1, "certificate binder is null"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1c

    .line 24
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zza;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1c
    const/4 v1, 0x2

    .line 26
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/common/zzj;->zzc:Z

    .line 29
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    .line 31
    iget-boolean v1, p0, Lcom/google/android/gms/common/zzj;->zzd:Z

    .line 32
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 33
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method