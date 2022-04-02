.class public final Lcom/google/android/gms/internal/ads/zzic;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzic;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzame:[Lcom/google/android/gms/internal/ads/zzic;


# instance fields
.field private zzamf:Ljava/lang/Integer;

.field private zzamg:Lcom/google/android/gms/internal/ads/zziq;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamg:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzebt:I

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzic;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamg:Lcom/google/android/gms/internal/ads/zziq;

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/ads/zziq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamg:Lcom/google/android/gms/internal/ads/zziq;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamg:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto :goto_0

    :cond_26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    if-ltz v2, :cond_3b

    const/16 v3, 0xa

    if-gt v2, v3, :cond_3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamf:Ljava/lang/Integer;

    goto :goto_0

    :cond_3b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum AdFormatType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_54} :catch_54

    :catch_54
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :cond_5b
    return-object p0
.end method

.method public static zzhr()[Lcom/google/android/gms/internal/ads/zzic;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzic;->zzame:[Lcom/google/android/gms/internal/ads/zzic;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfg;->zzebs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzic;->zzame:[Lcom/google/android/gms/internal/ads/zzic;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzic;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzic;->zzame:[Lcom/google/android/gms/internal/ads/zzic;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzic;->zzame:[Lcom/google/android/gms/internal/ads/zzic;

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzic;->zzf(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzic;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamf:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamg:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_14
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamf:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzamg:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v1, :cond_1c

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    return v0
.end method
