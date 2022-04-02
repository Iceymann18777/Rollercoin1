.class public final Lcom/google/android/gms/internal/ads/zzatv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzatv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private zzdhe:Lcom/google/android/gms/internal/ads/zzba;

.field private zzdhf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatv;->versionCode:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatv;->zzwf()V

    return-void
.end method

.method private final zzwf()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-nez v0, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    if-eqz v0, :cond_f

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object v0

    :goto_15
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzwe()Lcom/google/android/gms/internal/ads/zzba;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_23

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B

    new-instance v1, Lcom/google/android/gms/internal/ads/zzba;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzba;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zza(Lcom/google/android/gms/internal/ads/zzbfi;[B)Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzba;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhf:[B
    :try_end_1b
    .catch Lcom/google/android/gms/internal/ads/zzbfh; {:try_start_9 .. :try_end_1b} :catch_1c

    goto :goto_23

    :catch_1c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatv;->zzwf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatv;->zzdhe:Lcom/google/android/gms/internal/ads/zzba;

    return-object v0
.end method
