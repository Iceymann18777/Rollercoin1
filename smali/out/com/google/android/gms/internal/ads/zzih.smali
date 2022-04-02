.class public final Lcom/google/android/gms/internal/ads/zzih;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzih;",
        ">;"
    }
.end annotation


# instance fields
.field private zzanc:Ljava/lang/Integer;

.field private zzand:Lcom/google/android/gms/internal/ads/zzit;

.field private zzane:Ljava/lang/String;

.field private zzanf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzanc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzand:Lcom/google/android/gms/internal/ads/zzit;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzane:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzanf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzebt:I

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzih;
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

    if-eqz v0, :cond_6e

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_24

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzanf:Ljava/lang/String;

    goto :goto_0

    :cond_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzane:Ljava/lang/String;

    goto :goto_0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzand:Lcom/google/android/gms/internal/ads/zzit;

    if-nez v0, :cond_36

    new-instance v0, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzit;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzand:Lcom/google/android/gms/internal/ads/zzit;

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzand:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto :goto_0

    :cond_3c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v2

    :try_start_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v3

    if-ltz v3, :cond_50

    const/4 v4, 0x2

    if-gt v3, v4, :cond_50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzih;->zzanc:Ljava/lang/Integer;

    goto :goto_0

    :cond_50
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid enum Platform"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_67} :catch_67

    :catch_67
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :cond_6e
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzih;->zzj(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzih;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzanc:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzand:Lcom/google/android/gms/internal/ads/zzit;

    if-eqz v0, :cond_14

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzane:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzih;->zzanf:Ljava/lang/String;

    if-eqz v0, :cond_25

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_25
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzih;->zzanc:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzih;->zzand:Lcom/google/android/gms/internal/ads/zzit;

    if-eqz v1, :cond_1c

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzih;->zzane:Ljava/lang/String;

    if-eqz v1, :cond_26

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzih;->zzanf:Ljava/lang/String;

    if-eqz v1, :cond_31

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_31
    return v0
.end method
