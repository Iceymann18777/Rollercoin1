.class final synthetic Lcom/google/android/gms/internal/ads/zzavl;
.super Ljava/lang/Object;


# static fields
.field static final synthetic zzdhz:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxa;->values()[Lcom/google/android/gms/internal/ads/zzaxa;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavl;->zzdhz:[I

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxa;->zzdkg:Lcom/google/android/gms/internal/ads/zzaxa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxa;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavl;->zzdhz:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxa;->zzdki:Lcom/google/android/gms/internal/ads/zzaxa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxa;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavl;->zzdhz:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxa;->zzdkj:Lcom/google/android/gms/internal/ads/zzaxa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaxa;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
