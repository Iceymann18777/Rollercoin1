.class public final Lcom/google/android/gms/internal/ads/zzid;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzid;",
        ">;"
    }
.end annotation


# instance fields
.field private zzacp:Ljava/lang/String;

.field private zzamh:[Lcom/google/android/gms/internal/ads/zzic;

.field private zzami:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzacp:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzic;->zzhr()[Lcom/google/android/gms/internal/ads/zzic;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzamh:[Lcom/google/android/gms/internal/ads/zzic;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzami:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzebt:I

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzid;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    if-eqz v0, :cond_75

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6e

    const/16 v1, 0x12

    if-eq v0, v1, :cond_33

    const/16 v1, 0x18

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzami:Ljava/lang/Integer;
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2b} :catch_2c

    goto :goto_0

    :catch_2c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :cond_33
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzamh:[Lcom/google/android/gms/internal/ads/zzic;

    const/4 v2, 0x0

    if-nez v1, :cond_3e

    const/4 v1, 0x0

    goto :goto_3f

    :cond_3e
    array-length v1, v1

    :goto_3f
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/ads/zzic;

    if-eqz v1, :cond_49

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zzamh:[Lcom/google/android/gms/internal/ads/zzic;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_49
    :goto_49
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_5f

    new-instance v2, Lcom/google/android/gms/internal/ads/zzic;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzic;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzic;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzid;->zzamh:[Lcom/google/android/gms/internal/ads/zzic;

    goto :goto_0

    :cond_6e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzacp:Ljava/lang/String;

    goto :goto_0

    :cond_75
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzid;->zzg(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzid;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzacp:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzamh:[Lcom/google/android/gms/internal/ads/zzic;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzamh:[Lcom/google/android/gms/internal/ads/zzic;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzami:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzacp:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzamh:[Lcom/google/android/gms/internal/ads/zzic;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzamh:[Lcom/google/android/gms/internal/ads/zzic;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzami:Ljava/lang/Integer;

    if-eqz v1, :cond_36

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    return v0
.end method