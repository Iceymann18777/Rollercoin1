.class public final Lcom/google/android/gms/internal/ads/zzig;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzig;",
        ">;"
    }
.end annotation


# instance fields
.field public zzamu:Ljava/lang/String;

.field private zzamv:Lcom/google/android/gms/internal/ads/zzis;

.field private zzamw:Ljava/lang/Integer;

.field public zzamx:Lcom/google/android/gms/internal/ads/zzit;

.field private zzamy:Ljava/lang/Integer;

.field private zzamz:Ljava/lang/Integer;

.field private zzana:Ljava/lang/Integer;

.field private zzanb:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamv:Lcom/google/android/gms/internal/ads/zzis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamw:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamx:Lcom/google/android/gms/internal/ads/zzit;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamy:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamz:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzana:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzanb:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzebt:I

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzig;
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

    if-eqz v0, :cond_ac

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_92

    const/16 v1, 0x18

    if-eq v0, v1, :cond_86

    const/16 v1, 0x22

    if-eq v0, v1, :cond_78

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6d

    const/16 v1, 0x30

    if-eq v0, v1, :cond_53

    const/16 v1, 0x38

    if-eq v0, v1, :cond_40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_2d

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_2d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzanb:Ljava/lang/Integer;
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_3f} :catch_66

    goto :goto_0

    :cond_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzana:Ljava/lang/Integer;
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_52} :catch_66

    goto :goto_0

    :cond_53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamz:Ljava/lang/Integer;
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_65} :catch_66

    goto :goto_0

    :catch_66
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :cond_6d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamy:Ljava/lang/Integer;

    goto :goto_0

    :cond_78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamx:Lcom/google/android/gms/internal/ads/zzit;

    if-nez v0, :cond_83

    new-instance v0, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzit;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamx:Lcom/google/android/gms/internal/ads/zzit;

    :cond_83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamx:Lcom/google/android/gms/internal/ads/zzit;

    goto :goto_9f

    :cond_86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamw:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamv:Lcom/google/android/gms/internal/ads/zzis;

    if-nez v0, :cond_9d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamv:Lcom/google/android/gms/internal/ads/zzis;

    :cond_9d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamv:Lcom/google/android/gms/internal/ads/zzis;

    :goto_9f
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :cond_a4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamu:Ljava/lang/String;

    goto/16 :goto_0

    :cond_ac
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzig;->zzi(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzig;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamu:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzf(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamv:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamw:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamx:Lcom/google/android/gms/internal/ads/zzit;

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamy:Ljava/lang/Integer;

    if-eqz v0, :cond_30

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamz:Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzana:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzanb:Ljava/lang/Integer;

    if-eqz v0, :cond_55

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_55
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamu:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamv:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamw:Ljava/lang/Integer;

    if-eqz v1, :cond_26

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamx:Lcom/google/android/gms/internal/ads/zzit;

    if-eqz v1, :cond_30

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamy:Ljava/lang/Integer;

    if-eqz v1, :cond_3e

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzamz:Ljava/lang/Integer;

    if-eqz v1, :cond_4c

    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzana:Ljava/lang/Integer;

    if-eqz v1, :cond_5a

    const/4 v2, 0x7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzanb:Ljava/lang/Integer;

    if-eqz v1, :cond_69

    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_69
    return v0
.end method
