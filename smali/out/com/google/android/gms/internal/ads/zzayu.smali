.class final synthetic Lcom/google/android/gms/internal/ads/zzayu;
.super Ljava/lang/Object;


# static fields
.field static final synthetic zzdnm:[I

.field static final synthetic zzdnn:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayv;->values()[Lcom/google/android/gms/internal/ads/zzayv;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzdnn:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/android/gms/internal/ads/zzayv;->zzdno:Lcom/google/android/gms/internal/ads/zzayv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayv;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzayu;->zzdnn:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzayv;->zzdnp:Lcom/google/android/gms/internal/ads/zzayv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayv;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v2, Lcom/google/android/gms/internal/ads/zzayu;->zzdnn:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzayv;->zzdnq:Lcom/google/android/gms/internal/ads/zzayv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayv;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayw;->values()[Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/android/gms/internal/ads/zzayu;->zzdnm:[I

    :try_start_31
    sget-object v3, Lcom/google/android/gms/internal/ads/zzayw;->zzdns:Lcom/google/android/gms/internal/ads/zzayw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayw;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzdnm:[I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayw;->zzdnt:Lcom/google/android/gms/internal/ads/zzayw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayw;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    return-void
.end method
