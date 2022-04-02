.class public final Lcom/google/android/gms/internal/ads/zziz;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zziz;",
        ">;"
    }
.end annotation


# instance fields
.field private zzanu:Ljava/lang/Integer;

.field private zzapn:Lcom/google/android/gms/internal/ads/zziw;

.field private zzapo:Lcom/google/android/gms/internal/ads/zzis;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzanu:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapo:Lcom/google/android/gms/internal/ads/zzis;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzebt:I

    return-void
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zziz;
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

    if-eqz v0, :cond_52

    const/16 v1, 0x8

    if-eq v0, v1, :cond_38

    const/16 v1, 0x12

    if-eq v0, v1, :cond_27

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapo:Lcom/google/android/gms/internal/ads/zzis;

    if-nez v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapo:Lcom/google/android/gms/internal/ads/zzis;

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapo:Lcom/google/android/gms/internal/ads/zzis;

    goto :goto_34

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    if-nez v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/ads/zziw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    :goto_34
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto :goto_0

    :cond_38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_3c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zziz;->zzanu:Ljava/lang/Integer;
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_4a} :catch_4b

    goto :goto_0

    :catch_4b
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :cond_52
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zziz;->zzw(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zziz;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzanu:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapo:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_1c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzanu:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    if-eqz v1, :cond_1c

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziz;->zzapo:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz v1, :cond_26

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_26
    return v0
.end method
