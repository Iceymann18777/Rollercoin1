.class public final Lcom/google/android/gms/internal/ads/zzbc;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbc;",
        ">;"
    }
.end annotation


# instance fields
.field private zzeq:Ljava/lang/Long;

.field private zzer:Ljava/lang/Long;

.field public zzgi:Ljava/lang/Long;

.field public zzgj:Ljava/lang/Long;

.field public zzgk:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzeq:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzer:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgi:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgj:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgk:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzebt:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    if-eqz v0, :cond_58

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x10

    if-eq v0, v1, :cond_42

    const/16 v1, 0x18

    if-eq v0, v1, :cond_37

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x28

    if-eq v0, v1, :cond_21

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgk:Ljava/lang/Long;

    goto :goto_0

    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgj:Ljava/lang/Long;

    goto :goto_0

    :cond_37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgi:Ljava/lang/Long;

    goto :goto_0

    :cond_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzer:Ljava/lang/Long;

    goto :goto_0

    :cond_4d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzacd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzeq:Ljava/lang/Long;

    goto :goto_0

    :cond_58
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzeq:Ljava/lang/Long;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzer:Ljava/lang/Long;

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgi:Ljava/lang/Long;

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgj:Ljava/lang/Long;

    if-eqz v0, :cond_30

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgk:Ljava/lang/Long;

    if-eqz v0, :cond_3c

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzi(IJ)V

    :cond_3c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzeq:Ljava/lang/Long;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzer:Ljava/lang/Long;

    if-eqz v1, :cond_20

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgi:Ljava/lang/Long;

    if-eqz v1, :cond_2e

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgj:Ljava/lang/Long;

    if-eqz v1, :cond_3c

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbc;->zzgk:Ljava/lang/Long;

    if-eqz v1, :cond_4a

    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfa;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    return v0
.end method
