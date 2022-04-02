.class public final Lcom/google/android/gms/internal/ads/zzbfu;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbfu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzedm:[Lcom/google/android/gms/internal/ads/zzbfu;


# instance fields
.field public url:Ljava/lang/String;

.field public zzedn:Ljava/lang/Integer;

.field public zzedo:Lcom/google/android/gms/internal/ads/zzbfp;

.field private zzedp:Lcom/google/android/gms/internal/ads/zzbfr;

.field private zzedq:Ljava/lang/Integer;

.field private zzedr:[I

.field private zzeds:Ljava/lang/String;

.field public zzedt:Ljava/lang/Integer;

.field public zzedu:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedn:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedo:Lcom/google/android/gms/internal/ads/zzbfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedp:Lcom/google/android/gms/internal/ads/zzbfr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedq:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfl;->zzeby:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzeds:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedt:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfl;->zzecd:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedu:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzebt:I

    return-void
.end method

.method private final zzac(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfu;
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

    sparse-switch v0, :sswitch_data_12c

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_f
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedu:[Ljava/lang/String;

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    array-length v2, v2

    :goto_1c
    add-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedu:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    :goto_26
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedu:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v2

    if-ltz v2, :cond_53

    const/4 v3, 0x3

    if-gt v2, v3, :cond_53

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedt:Ljava/lang/Integer;

    goto :goto_0

    :cond_53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum AdResourceType"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_6c} :catch_6c

    :catch_6c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :sswitch_73
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzeds:Ljava/lang/String;

    goto :goto_0

    :sswitch_7a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzbr(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_87
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzagn()I

    move-result v4

    if-lez v4, :cond_93

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_93
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    if-nez v2, :cond_9c

    const/4 v2, 0x0

    goto :goto_9d

    :cond_9c
    array-length v2, v2

    :goto_9d
    add-int/2addr v3, v2

    new-array v4, v3, [I

    if-eqz v2, :cond_a7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a7
    :goto_a7
    if-ge v2, v3, :cond_b2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v1

    aput v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_b2
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzbs(I)V

    goto/16 :goto_0

    :sswitch_b9
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    if-nez v2, :cond_c5

    const/4 v2, 0x0

    goto :goto_c6

    :cond_c5
    array-length v2, v2

    :goto_c6
    add-int/2addr v0, v2

    new-array v3, v0, [I

    if-eqz v2, :cond_d0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d0
    :goto_d0
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_e0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v1

    aput v1, v3, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_d0

    :cond_e0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v0

    aput v0, v3, v2

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    goto/16 :goto_0

    :sswitch_ea
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedq:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedp:Lcom/google/android/gms/internal/ads/zzbfr;

    if-nez v0, :cond_101

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedp:Lcom/google/android/gms/internal/ads/zzbfr;

    :cond_101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedp:Lcom/google/android/gms/internal/ads/zzbfr;

    goto :goto_111

    :sswitch_104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedo:Lcom/google/android/gms/internal/ads/zzbfp;

    if-nez v0, :cond_10f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedo:Lcom/google/android/gms/internal/ads/zzbfp;

    :cond_10f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedo:Lcom/google/android/gms/internal/ads/zzbfp;

    :goto_111
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :sswitch_116
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->url:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedn:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_12a
    return-object p0

    nop

    :sswitch_data_12c
    .sparse-switch
        0x0 -> :sswitch_12a
        0x8 -> :sswitch_11e
        0x12 -> :sswitch_116
        0x1a -> :sswitch_104
        0x22 -> :sswitch_f6
        0x28 -> :sswitch_ea
        0x30 -> :sswitch_b9
        0x32 -> :sswitch_7a
        0x3a -> :sswitch_73
        0x40 -> :sswitch_3f
        0x4a -> :sswitch_f
    .end sparse-switch
.end method

.method public static zzagu()[Lcom/google/android/gms/internal/ads/zzbfu;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedm:[Lcom/google/android/gms/internal/ads/zzbfu;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfg;->zzebs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfu;->zzedm:[Lcom/google/android/gms/internal/ads/zzbfu;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzbfu;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbfu;->zzedm:[Lcom/google/android/gms/internal/ads/zzbfu;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedm:[Lcom/google/android/gms/internal/ads/zzbfu;

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfu;->zzac(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfu;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedn:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->url:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedo:Lcom/google/android/gms/internal/ads/zzbfp;

    if-eqz v0, :cond_1a

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedp:Lcom/google/android/gms/internal/ads/zzbfr;

    if-eqz v0, :cond_22

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedq:Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    array-length v0, v0

    if-lez v0, :cond_45

    const/4 v0, 0x0

    :goto_37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    array-length v3, v2

    if-ge v0, v3, :cond_45

    const/4 v3, 0x6

    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzeds:Ljava/lang/String;

    if-eqz v0, :cond_4d

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedt:Ljava/lang/Integer;

    if-eqz v0, :cond_5a

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedu:[Ljava/lang/String;

    if-eqz v0, :cond_72

    array-length v0, v0

    if-lez v0, :cond_72

    :goto_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedu:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_72

    aget-object v0, v0, v1

    if-eqz v0, :cond_6f

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_72
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 8

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedn:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->url:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedo:Lcom/google/android/gms/internal/ads/zzbfp;

    if-eqz v1, :cond_24

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedp:Lcom/google/android/gms/internal/ads/zzbfr;

    if-eqz v1, :cond_2e

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedq:Ljava/lang/Integer;

    if-eqz v1, :cond_3c

    const/4 v3, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_5a

    array-length v1, v1

    if-lez v1, :cond_5a

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_46
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedr:[I

    array-length v6, v5

    if-ge v1, v6, :cond_55

    aget v5, v5, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbfa;->zzce(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_55
    add-int/2addr v0, v4

    array-length v1, v5

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzeds:Ljava/lang/String;

    if-eqz v1, :cond_64

    const/4 v4, 0x7

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_64
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedt:Ljava/lang/Integer;

    if-eqz v1, :cond_73

    const/16 v4, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedu:[Ljava/lang/String;

    if-eqz v1, :cond_93

    array-length v1, v1

    if-lez v1, :cond_93

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_7c
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbfu;->zzedu:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_8f

    aget-object v5, v5, v3

    if-eqz v5, :cond_8c

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbfa;->zzeo(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_8f
    add-int/2addr v0, v1

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_93
    return v0
.end method
