.class public final Lcom/google/android/gms/internal/ads/zzif;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzif;",
        ">;"
    }
.end annotation


# instance fields
.field private zzamo:Ljava/lang/Integer;

.field private zzamp:Lcom/google/android/gms/internal/ads/zzis;

.field private zzamq:Lcom/google/android/gms/internal/ads/zzis;

.field private zzamr:Lcom/google/android/gms/internal/ads/zzis;

.field private zzams:[Lcom/google/android/gms/internal/ads/zzis;

.field private zzamt:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamo:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamp:Lcom/google/android/gms/internal/ads/zzis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamq:Lcom/google/android/gms/internal/ads/zzis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamr:Lcom/google/android/gms/internal/ads/zzis;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzis;->zzht()[Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzams:[Lcom/google/android/gms/internal/ads/zzis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamt:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzebt:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
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

    if-eqz v0, :cond_a5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_99

    const/16 v1, 0x12

    if-eq v0, v1, :cond_87

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_79

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6b

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_30

    const/16 v1, 0x30

    if-eq v0, v1, :cond_25

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamt:Ljava/lang/Integer;

    goto :goto_0

    :cond_30
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzams:[Lcom/google/android/gms/internal/ads/zzis;

    const/4 v2, 0x0

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    goto :goto_3c

    :cond_3b
    array-length v1, v1

    :goto_3c
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_46

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzif;->zzams:[Lcom/google/android/gms/internal/ads/zzis;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    :goto_46
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_5c

    new-instance v2, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    aput-object v2, v3, v1

    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_5c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    aput-object v0, v3, v1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzif;->zzams:[Lcom/google/android/gms/internal/ads/zzis;

    goto :goto_0

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamr:Lcom/google/android/gms/internal/ads/zzis;

    if-nez v0, :cond_76

    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamr:Lcom/google/android/gms/internal/ads/zzis;

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamr:Lcom/google/android/gms/internal/ads/zzis;

    goto :goto_94

    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamq:Lcom/google/android/gms/internal/ads/zzis;

    if-nez v0, :cond_84

    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamq:Lcom/google/android/gms/internal/ads/zzis;

    :cond_84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamq:Lcom/google/android/gms/internal/ads/zzis;

    goto :goto_94

    :cond_87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamp:Lcom/google/android/gms/internal/ads/zzis;

    if-nez v0, :cond_92

    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamp:Lcom/google/android/gms/internal/ads/zzis;

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamp:Lcom/google/android/gms/internal/ads/zzis;

    :goto_94
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :cond_99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamo:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_a5
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamo:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamp:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamq:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamr:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzams:[Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_3c

    array-length v0, v0

    if-lez v0, :cond_3c

    const/4 v0, 0x0

    :goto_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzams:[Lcom/google/android/gms/internal/ads/zzis;

    array-length v2, v1

    if-ge v0, v2, :cond_3c

    aget-object v1, v1, v0

    if-eqz v1, :cond_39

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamt:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_48
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamo:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamp:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_1c

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamq:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_26

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamr:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_30

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzams:[Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_4a

    array-length v1, v1

    if-lez v1, :cond_4a

    const/4 v1, 0x0

    :goto_38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzif;->zzams:[Lcom/google/android/gms/internal/ads/zzis;

    array-length v3, v2

    if-ge v1, v3, :cond_4a

    aget-object v2, v2, v1

    if-eqz v2, :cond_47

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_4a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzif;->zzamt:Ljava/lang/Integer;

    if-eqz v1, :cond_58

    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    return v0
.end method
