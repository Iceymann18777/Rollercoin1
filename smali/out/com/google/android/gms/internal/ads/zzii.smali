.class public final Lcom/google/android/gms/internal/ads/zzii;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzii;",
        ">;"
    }
.end annotation


# instance fields
.field private zzang:Ljava/lang/Integer;

.field public zzanh:Ljava/lang/String;

.field private zzani:Ljava/lang/Integer;

.field private zzanj:Ljava/lang/Integer;

.field private zzank:Lcom/google/android/gms/internal/ads/zzit;

.field public zzanl:[J

.field public zzanm:Lcom/google/android/gms/internal/ads/zzig;

.field private zzann:Lcom/google/android/gms/internal/ads/zzih;

.field private zzano:Lcom/google/android/gms/internal/ads/zzim;

.field public zzanp:Lcom/google/android/gms/internal/ads/zzib;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzang:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzani:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanj:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzank:Lcom/google/android/gms/internal/ads/zzit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfl;->zzebz:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanm:Lcom/google/android/gms/internal/ads/zzig;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzann:Lcom/google/android/gms/internal/ads/zzih;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzano:Lcom/google/android/gms/internal/ads/zzim;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzebt:I

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzii;
    .registers 9
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

    sparse-switch v0, :sswitch_data_10a

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/google/android/gms/internal/ads/zzib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzib;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    goto/16 :goto_c8

    :sswitch_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzano:Lcom/google/android/gms/internal/ads/zzim;

    if-nez v0, :cond_29

    new-instance v0, Lcom/google/android/gms/internal/ads/zzim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzim;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzano:Lcom/google/android/gms/internal/ads/zzim;

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzano:Lcom/google/android/gms/internal/ads/zzim;

    goto/16 :goto_c8

    :sswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzann:Lcom/google/android/gms/internal/ads/zzih;

    if-nez v0, :cond_38

    new-instance v0, Lcom/google/android/gms/internal/ads/zzih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzih;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzann:Lcom/google/android/gms/internal/ads/zzih;

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzann:Lcom/google/android/gms/internal/ads/zzih;

    goto/16 :goto_c8

    :sswitch_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanm:Lcom/google/android/gms/internal/ads/zzig;

    if-nez v0, :cond_47

    new-instance v0, Lcom/google/android/gms/internal/ads/zzig;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzig;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanm:Lcom/google/android/gms/internal/ads/zzig;

    :cond_47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanm:Lcom/google/android/gms/internal/ads/zzig;

    goto/16 :goto_c8

    :sswitch_4b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzbr(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzagn()I

    move-result v4

    if-lez v4, :cond_64

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_64
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    if-nez v2, :cond_6d

    const/4 v2, 0x0

    goto :goto_6e

    :cond_6d
    array-length v2, v2

    :goto_6e
    add-int/2addr v3, v2

    new-array v4, v3, [J

    if-eqz v2, :cond_78

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_78
    :goto_78
    if-ge v2, v3, :cond_83

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_83
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzbs(I)V

    goto/16 :goto_0

    :sswitch_8a
    const/16 v0, 0x70

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    if-nez v2, :cond_96

    const/4 v2, 0x0

    goto :goto_97

    :cond_96
    array-length v2, v2

    :goto_97
    add-int/2addr v0, v2

    new-array v3, v0, [J

    if-eqz v2, :cond_a1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a1
    :goto_a1
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_b1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v4

    aput-wide v4, v3, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    :cond_b1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    aput-wide v0, v3, v2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    goto/16 :goto_0

    :sswitch_bb
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzank:Lcom/google/android/gms/internal/ads/zzit;

    if-nez v0, :cond_c6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzit;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzank:Lcom/google/android/gms/internal/ads/zzit;

    :cond_c6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzank:Lcom/google/android/gms/internal/ads/zzit;

    :goto_c8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :sswitch_cd
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_d1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanj:Ljava/lang/Integer;
    :try_end_df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d1 .. :try_end_df} :catch_e1

    goto/16 :goto_0

    :catch_e1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto/16 :goto_0

    :sswitch_e9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzani:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanh:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_fd
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzang:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_109
    return-object p0

    :sswitch_data_10a
    .sparse-switch
        0x0 -> :sswitch_109
        0x48 -> :sswitch_fd
        0x52 -> :sswitch_f5
        0x58 -> :sswitch_e9
        0x60 -> :sswitch_cd
        0x6a -> :sswitch_bb
        0x70 -> :sswitch_8a
        0x72 -> :sswitch_4b
        0x7a -> :sswitch_3c
        0x82 -> :sswitch_2d
        0x8a -> :sswitch_1e
        0x92 -> :sswitch_f
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzii;->zzk(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzang:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanh:Ljava/lang/String;

    if-eqz v0, :cond_16

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzani:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzl(II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzde(I)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanj:Ljava/lang/Integer;

    if-eqz v0, :cond_34

    const/16 v2, 0xc

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzank:Lcom/google/android/gms/internal/ads/zzit;

    if-eqz v0, :cond_3d

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    if-eqz v0, :cond_53

    array-length v0, v0

    if-lez v0, :cond_53

    :goto_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    array-length v2, v0

    if-ge v1, v2, :cond_53

    const/16 v2, 0xe

    aget-wide v3, v0, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanm:Lcom/google/android/gms/internal/ads/zzig;

    if-eqz v0, :cond_5c

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzann:Lcom/google/android/gms/internal/ads/zzih;

    if-eqz v0, :cond_65

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzano:Lcom/google/android/gms/internal/ads/zzim;

    if-eqz v0, :cond_6e

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    if-eqz v0, :cond_77

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_77
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 7

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzang:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    const/16 v2, 0x9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanh:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzani:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzcd(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzcl(I)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanj:Ljava/lang/Integer;

    if-eqz v1, :cond_41

    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzank:Lcom/google/android/gms/internal/ads/zzit;

    if-eqz v1, :cond_4c

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    if-eqz v1, :cond_69

    array-length v1, v1

    if-lez v1, :cond_69

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_55
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanl:[J

    array-length v4, v3

    if-ge v1, v4, :cond_64

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzbfa;->zzy(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_64
    add-int/2addr v0, v2

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_69
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanm:Lcom/google/android/gms/internal/ads/zzig;

    if-eqz v1, :cond_74

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_74
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzann:Lcom/google/android/gms/internal/ads/zzih;

    if-eqz v1, :cond_7f

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzano:Lcom/google/android/gms/internal/ads/zzim;

    if-eqz v1, :cond_8a

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    if-eqz v1, :cond_95

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_95
    return v0
.end method
