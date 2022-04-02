.class public final Lcom/google/android/gms/internal/ads/zzik;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzik;",
        ">;"
    }
.end annotation


# instance fields
.field private zzans:[I

.field private zzanu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzanu:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfl;->zzeby:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzebt:I

    return-void
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzik;
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

    if-eqz v0, :cond_a3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_87

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_58

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1a

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzbr(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzagn()I

    move-result v4

    if-lez v4, :cond_33

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_33
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    if-nez v1, :cond_3c

    const/4 v1, 0x0

    goto :goto_3d

    :cond_3c
    array-length v1, v1

    :goto_3d
    add-int/2addr v3, v1

    new-array v4, v3, [I

    if-eqz v1, :cond_47

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    invoke-static {v5, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_47
    :goto_47
    if-ge v1, v3, :cond_52

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_52
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzbs(I)V

    goto :goto_0

    :cond_58
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    if-nez v1, :cond_62

    const/4 v1, 0x0

    goto :goto_63

    :cond_62
    array-length v1, v1

    :goto_63
    add-int/2addr v0, v1

    new-array v3, v0, [I

    if-eqz v1, :cond_6d

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6d
    :goto_6d
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_7d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    aput v2, v3, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_7d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    aput v0, v3, v1

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    goto/16 :goto_0

    :cond_87
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_8b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzik;->zzanu:Ljava/lang/Integer;
    :try_end_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_99} :catch_9b

    goto/16 :goto_0

    :catch_9b
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto/16 :goto_0

    :cond_a3
    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzm(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzik;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzanu:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    if-eqz v0, :cond_22

    array-length v0, v0

    if-lez v0, :cond_22

    const/4 v0, 0x0

    :goto_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    array-length v2, v1

    if-ge v0, v2, :cond_22

    const/4 v2, 0x2

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzanu:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    if-eqz v1, :cond_2f

    array-length v1, v1

    if-lez v1, :cond_2f

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1b
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzik;->zzans:[I

    array-length v5, v4

    if-ge v1, v5, :cond_2a

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzce(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2a
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2f
    return v0
.end method
