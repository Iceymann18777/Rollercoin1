.class public final Lcom/google/android/gms/internal/ads/zzbfq;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbfq;",
        ">;"
    }
.end annotation


# instance fields
.field private zzede:[B

.field private zzedf:[B

.field private zzedg:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzede:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzedf:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzedg:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzebt:I

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

    if-eqz v0, :cond_2e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_27

    const/16 v1, 0x12

    if-eq v0, v1, :cond_20

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_19

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzedg:[B

    goto :goto_0

    :cond_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzedf:[B

    goto :goto_0

    :cond_27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzede:[B

    goto :goto_0

    :cond_2e
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzede:[B

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzedf:[B

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzedg:[B

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzede:[B

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzedf:[B

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfq;->zzedg:[B

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    return v0
.end method
