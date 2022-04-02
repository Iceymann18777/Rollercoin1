.class public final Lcom/google/android/gms/internal/ads/zzib;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzib;",
        ">;"
    }
.end annotation


# instance fields
.field public zzalt:Ljava/lang/Integer;

.field private zzalu:Ljava/lang/Integer;

.field private zzalv:Lcom/google/android/gms/internal/ads/zzid;

.field public zzalw:Lcom/google/android/gms/internal/ads/zzie;

.field private zzalx:[Lcom/google/android/gms/internal/ads/zzic;

.field private zzaly:Lcom/google/android/gms/internal/ads/zzif;

.field private zzalz:Lcom/google/android/gms/internal/ads/zzio;

.field private zzama:Lcom/google/android/gms/internal/ads/zzin;

.field private zzamb:Lcom/google/android/gms/internal/ads/zzik;

.field private zzamc:Lcom/google/android/gms/internal/ads/zzil;

.field private zzamd:[Lcom/google/android/gms/internal/ads/zziu;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalu:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalv:Lcom/google/android/gms/internal/ads/zzid;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalw:Lcom/google/android/gms/internal/ads/zzie;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzic;->zzhr()[Lcom/google/android/gms/internal/ads/zzic;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalx:[Lcom/google/android/gms/internal/ads/zzic;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaly:Lcom/google/android/gms/internal/ads/zzif;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalz:Lcom/google/android/gms/internal/ads/zzio;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzama:Lcom/google/android/gms/internal/ads/zzin;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamb:Lcom/google/android/gms/internal/ads/zzik;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamc:Lcom/google/android/gms/internal/ads/zzil;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziu;->zzhu()[Lcom/google/android/gms/internal/ads/zziu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamd:[Lcom/google/android/gms/internal/ads/zziu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzebt:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzib;
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

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_13e

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_f
    const/16 v0, 0x8a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamd:[Lcom/google/android/gms/internal/ads/zziu;

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    array-length v2, v2

    :goto_1c
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/google/android/gms/internal/ads/zziu;

    if-eqz v2, :cond_26

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamd:[Lcom/google/android/gms/internal/ads/zziu;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    :goto_26
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_3c

    new-instance v1, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zziu;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3c
    new-instance v0, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziu;-><init>()V

    aput-object v0, v3, v2

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamd:[Lcom/google/android/gms/internal/ads/zziu;

    goto :goto_0

    :sswitch_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamc:Lcom/google/android/gms/internal/ads/zzil;

    if-nez v0, :cond_56

    new-instance v0, Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzil;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamc:Lcom/google/android/gms/internal/ads/zzil;

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamc:Lcom/google/android/gms/internal/ads/zzil;

    goto/16 :goto_ec

    :sswitch_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamb:Lcom/google/android/gms/internal/ads/zzik;

    if-nez v0, :cond_65

    new-instance v0, Lcom/google/android/gms/internal/ads/zzik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzik;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamb:Lcom/google/android/gms/internal/ads/zzik;

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamb:Lcom/google/android/gms/internal/ads/zzik;

    goto/16 :goto_ec

    :sswitch_69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzama:Lcom/google/android/gms/internal/ads/zzin;

    if-nez v0, :cond_74

    new-instance v0, Lcom/google/android/gms/internal/ads/zzin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzin;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzama:Lcom/google/android/gms/internal/ads/zzin;

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzama:Lcom/google/android/gms/internal/ads/zzin;

    goto/16 :goto_ec

    :sswitch_78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalz:Lcom/google/android/gms/internal/ads/zzio;

    if-nez v0, :cond_83

    new-instance v0, Lcom/google/android/gms/internal/ads/zzio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzio;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalz:Lcom/google/android/gms/internal/ads/zzio;

    :cond_83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalz:Lcom/google/android/gms/internal/ads/zzio;

    goto :goto_ec

    :sswitch_86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaly:Lcom/google/android/gms/internal/ads/zzif;

    if-nez v0, :cond_91

    new-instance v0, Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzif;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaly:Lcom/google/android/gms/internal/ads/zzif;

    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaly:Lcom/google/android/gms/internal/ads/zzif;

    goto :goto_ec

    :sswitch_94
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalx:[Lcom/google/android/gms/internal/ads/zzic;

    if-nez v2, :cond_a0

    const/4 v2, 0x0

    goto :goto_a1

    :cond_a0
    array-length v2, v2

    :goto_a1
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/google/android/gms/internal/ads/zzic;

    if-eqz v2, :cond_ab

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalx:[Lcom/google/android/gms/internal/ads/zzic;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_ab
    :goto_ab
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_c1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzic;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzic;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    :cond_c1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzic;-><init>()V

    aput-object v0, v3, v2

    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalx:[Lcom/google/android/gms/internal/ads/zzic;

    goto/16 :goto_0

    :sswitch_d1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalw:Lcom/google/android/gms/internal/ads/zzie;

    if-nez v0, :cond_dc

    new-instance v0, Lcom/google/android/gms/internal/ads/zzie;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzie;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalw:Lcom/google/android/gms/internal/ads/zzie;

    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalw:Lcom/google/android/gms/internal/ads/zzie;

    goto :goto_ec

    :sswitch_df
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalv:Lcom/google/android/gms/internal/ads/zzid;

    if-nez v0, :cond_ea

    new-instance v0, Lcom/google/android/gms/internal/ads/zzid;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzid;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalv:Lcom/google/android/gms/internal/ads/zzid;

    :cond_ea
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalv:Lcom/google/android/gms/internal/ads/zzid;

    :goto_ec
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :sswitch_f1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_f5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalu:Ljava/lang/Integer;
    :try_end_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f5 .. :try_end_103} :catch_134

    goto/16 :goto_0

    :sswitch_105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    if-ltz v2, :cond_11b

    const/16 v3, 0x9

    if-gt v2, v3, :cond_11b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalt:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_11b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum AdInitiater"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_109 .. :try_end_134} :catch_134

    :catch_134
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto/16 :goto_0

    :sswitch_13c
    return-object p0

    nop

    :sswitch_data_13e
    .sparse-switch
        0x0 -> :sswitch_13c
        0x38 -> :sswitch_105
        0x40 -> :sswitch_f1
        0x4a -> :sswitch_df
        0x52 -> :sswitch_d1
        0x5a -> :sswitch_94
        0x62 -> :sswitch_86
        0x6a -> :sswitch_78
        0x72 -> :sswitch_69
        0x7a -> :sswitch_5a
        0x82 -> :sswitch_4b
        0x8a -> :sswitch_f
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzib;->zze(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalt:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalu:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalv:Lcom/google/android/gms/internal/ads/zzid;

    if-eqz v0, :cond_22

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalw:Lcom/google/android/gms/internal/ads/zzie;

    if-eqz v0, :cond_2b

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalx:[Lcom/google/android/gms/internal/ads/zzic;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    array-length v0, v0

    if-lez v0, :cond_45

    const/4 v0, 0x0

    :goto_34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalx:[Lcom/google/android/gms/internal/ads/zzic;

    array-length v3, v2

    if-ge v0, v3, :cond_45

    aget-object v2, v2, v0

    if-eqz v2, :cond_42

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaly:Lcom/google/android/gms/internal/ads/zzif;

    if-eqz v0, :cond_4e

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalz:Lcom/google/android/gms/internal/ads/zzio;

    if-eqz v0, :cond_57

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzama:Lcom/google/android/gms/internal/ads/zzin;

    if-eqz v0, :cond_60

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamb:Lcom/google/android/gms/internal/ads/zzik;

    if-eqz v0, :cond_69

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamc:Lcom/google/android/gms/internal/ads/zzil;

    if-eqz v0, :cond_72

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamd:[Lcom/google/android/gms/internal/ads/zziu;

    if-eqz v0, :cond_8a

    array-length v0, v0

    if-lez v0, :cond_8a

    :goto_79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamd:[Lcom/google/android/gms/internal/ads/zziu;

    array-length v2, v0

    if-ge v1, v2, :cond_8a

    aget-object v0, v0, v1

    if-eqz v0, :cond_87

    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_8a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalt:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalu:Ljava/lang/Integer;

    if-eqz v1, :cond_21

    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalv:Lcom/google/android/gms/internal/ads/zzid;

    if-eqz v1, :cond_2c

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalw:Lcom/google/android/gms/internal/ads/zzie;

    if-eqz v1, :cond_37

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalx:[Lcom/google/android/gms/internal/ads/zzic;

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    array-length v1, v1

    if-lez v1, :cond_53

    const/4 v1, 0x0

    :goto_40
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalx:[Lcom/google/android/gms/internal/ads/zzic;

    array-length v4, v3

    if-ge v1, v4, :cond_53

    aget-object v3, v3, v1

    if-eqz v3, :cond_50

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzaly:Lcom/google/android/gms/internal/ads/zzif;

    if-eqz v1, :cond_5e

    const/16 v3, 0xc

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzalz:Lcom/google/android/gms/internal/ads/zzio;

    if-eqz v1, :cond_69

    const/16 v3, 0xd

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_69
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzama:Lcom/google/android/gms/internal/ads/zzin;

    if-eqz v1, :cond_74

    const/16 v3, 0xe

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_74
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamb:Lcom/google/android/gms/internal/ads/zzik;

    if-eqz v1, :cond_7f

    const/16 v3, 0xf

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamc:Lcom/google/android/gms/internal/ads/zzil;

    if-eqz v1, :cond_8a

    const/16 v3, 0x10

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamd:[Lcom/google/android/gms/internal/ads/zziu;

    if-eqz v1, :cond_a4

    array-length v1, v1

    if-lez v1, :cond_a4

    :goto_91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzamd:[Lcom/google/android/gms/internal/ads/zziu;

    array-length v3, v1

    if-ge v2, v3, :cond_a4

    aget-object v1, v1, v2

    if-eqz v1, :cond_a1

    const/16 v3, 0x11

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_a4
    return v0
.end method
