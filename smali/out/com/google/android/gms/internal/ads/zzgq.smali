.class public abstract Lcom/google/android/gms/internal/ads/zzgq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static zzaix:Ljava/security/MessageDigest;


# instance fields
.field protected mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final zzhg()Ljava/security/MessageDigest;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgq;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgq;->zzaix:Ljava/security/MessageDigest;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgq;->zzaix:Ljava/security/MessageDigest;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    return-object v1

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1a

    :try_start_f
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzgq;->zzaix:Ljava/security/MessageDigest;
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_17} :catch_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1e

    :catch_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    :try_start_1a
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgq;->zzaix:Ljava/security/MessageDigest;

    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    goto :goto_22

    :goto_21
    throw v1

    :goto_22
    goto :goto_21
.end method

.method abstract zzx(Ljava/lang/String;)[B
.end method
