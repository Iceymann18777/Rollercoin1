.class public final Lcom/google/android/gms/internal/ads/zzja;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzja;",
        ">;"
    }
.end annotation


# instance fields
.field private zzanu:Ljava/lang/Integer;

.field private zzape:Ljava/lang/Integer;

.field private zzapf:Ljava/lang/Integer;

.field private zzapn:Lcom/google/android/gms/internal/ads/zziw;

.field private zzapr:Ljava/lang/Integer;

.field private zzaps:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzanu:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzape:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapr:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaps:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzebt:I

    return-void
.end method

.method private final zzx(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzja;
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

    if-eqz v0, :cond_7c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_62

    const/16 v1, 0x12

    if-eq v0, v1, :cond_51

    const/16 v1, 0x18

    if-eq v0, v1, :cond_46

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x28

    if-eq v0, v1, :cond_30

    const/16 v1, 0x30

    if-eq v0, v1, :cond_25

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaps:Ljava/lang/Long;

    goto :goto_0

    :cond_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapr:Ljava/lang/Integer;

    goto :goto_0

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapf:Ljava/lang/Integer;

    goto :goto_0

    :cond_46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzape:Ljava/lang/Integer;

    goto :goto_0

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    if-nez v0, :cond_5c

    new-instance v0, Lcom/google/android/gms/internal/ads/zziw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto :goto_0

    :cond_62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->getPosition()I

    move-result v1

    :try_start_66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzia;->zzd(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzanu:Ljava/lang/Integer;
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_74} :catch_75

    goto :goto_0

    :catch_75
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzdc(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    goto :goto_0

    :cond_7c
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzja;->zzx(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzja;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzanu:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzape:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapf:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapr:Ljava/lang/Integer;

    if-eqz v0, :cond_38

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaps:Ljava/lang/Long;

    if-eqz v0, :cond_44

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(IJ)V

    :cond_44
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzanu:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapn:Lcom/google/android/gms/internal/ads/zziw;

    if-eqz v1, :cond_1c

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzape:Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapf:Ljava/lang/Integer;

    if-eqz v1, :cond_38

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzapr:Ljava/lang/Integer;

    if-eqz v1, :cond_46

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzaps:Ljava/lang/Long;

    if-eqz v1, :cond_54

    const/4 v2, 0x6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_54
    return v0
.end method
