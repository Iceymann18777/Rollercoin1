.class public final Lcom/google/android/gms/internal/ads/zzio;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzio;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaoa:Ljava/lang/Integer;

.field private zzaob:Ljava/lang/Integer;

.field private zzaoc:Ljava/lang/Integer;

.field private zzaod:Ljava/lang/Integer;

.field private zzaoe:Ljava/lang/Integer;

.field private zzaof:Ljava/lang/Integer;

.field private zzaog:Ljava/lang/Integer;

.field private zzaoh:Ljava/lang/Integer;

.field private zzaoi:Ljava/lang/Integer;

.field private zzaoj:Ljava/lang/Integer;

.field private zzaok:Lcom/google/android/gms/internal/ads/zzip;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoa:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaob:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaod:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoe:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaof:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaog:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoh:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoj:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaok:Lcom/google/android/gms/internal/ads/zzip;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzebt:I

    return-void
.end method

.method private final zzq(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzio;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    sparse-switch v0, :sswitch_data_a8

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaok:Lcom/google/android/gms/internal/ads/zzip;

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/android/gms/internal/ads/zzip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzip;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaok:Lcom/google/android/gms/internal/ads/zzip;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaok:Lcom/google/android/gms/internal/ads/zzip;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto :goto_0

    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoj:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoi:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoh:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaog:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaof:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoe:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_61
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaod:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoc:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_7b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaob:Ljava/lang/Integer;
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_89} :catch_9f

    goto/16 :goto_0

    :sswitch_8b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_8f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoa:Ljava/lang/Integer;
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_9d} :catch_9f

    goto/16 :goto_0

    :catch_9f
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto/16 :goto_0

    :sswitch_a7
    return-object p0

    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_a7
        0x8 -> :sswitch_8b
        0x10 -> :sswitch_77
        0x18 -> :sswitch_6c
        0x20 -> :sswitch_61
        0x28 -> :sswitch_56
        0x30 -> :sswitch_4b
        0x38 -> :sswitch_40
        0x40 -> :sswitch_35
        0x48 -> :sswitch_2a
        0x50 -> :sswitch_1f
        0x5a -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzio;->zzq(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzio;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoa:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaob:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoc:Ljava/lang/Integer;

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaod:Ljava/lang/Integer;

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoe:Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaof:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaog:Ljava/lang/Integer;

    if-eqz v0, :cond_54

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoh:Ljava/lang/Integer;

    if-eqz v0, :cond_61

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoi:Ljava/lang/Integer;

    if-eqz v0, :cond_6e

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoj:Ljava/lang/Integer;

    if-eqz v0, :cond_7b

    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaok:Lcom/google/android/gms/internal/ads/zzip;

    if-eqz v0, :cond_84

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_84
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoa:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaob:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoc:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaod:Ljava/lang/Integer;

    if-eqz v1, :cond_3c

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoe:Ljava/lang/Integer;

    if-eqz v1, :cond_4a

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaof:Ljava/lang/Integer;

    if-eqz v1, :cond_58

    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaog:Ljava/lang/Integer;

    if-eqz v1, :cond_66

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoh:Ljava/lang/Integer;

    if-eqz v1, :cond_75

    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_75
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoi:Ljava/lang/Integer;

    if-eqz v1, :cond_84

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaoj:Ljava/lang/Integer;

    if-eqz v1, :cond_93

    const/16 v2, 0xa

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaok:Lcom/google/android/gms/internal/ads/zzip;

    if-eqz v1, :cond_9e

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9e
    return v0
.end method
