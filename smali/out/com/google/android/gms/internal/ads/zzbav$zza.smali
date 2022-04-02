.class final Lcom/google/android/gms/internal/ads/zzbav$zza;
.super Lcom/google/android/gms/internal/ads/zzbav;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final offset:I

.field private position:I


# direct methods
.method constructor <init>([BII)V
    .registers 6

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;-><init>(Lcom/google/android/gms/internal/ads/zzbaw;)V

    if-eqz p1, :cond_3d

    or-int/lit8 p2, p3, 0x0

    array-length v0, p1

    add-int/lit8 v1, p3, 0x0

    sub-int/2addr v0, v1

    or-int/2addr p2, v0

    const/4 v0, 0x0

    if-ltz p2, :cond_19

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->offset:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->limit:I

    return-void

    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final write([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->zzm(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzbah;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzan(Lcom/google/android/gms/internal/ads/zzbah;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzbcu;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzn(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zze(Lcom/google/android/gms/internal/ads/zzbcu;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/ads/zzbcu;Lcom/google/android/gms/internal/ads/zzbdm;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzazy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazy;->zzaaw()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzy(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzazy;->zzbj(I)V

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->zzdqn:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbey;)V

    return-void
.end method

.method public final zzack()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzan(Lcom/google/android/gms/internal/ads/zzbah;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Lcom/google/android/gms/internal/ads/zzbag;)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzbah;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzn(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zza(ILcom/google/android/gms/internal/ads/zzbah;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    return-void
.end method

.method public final zzb([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->write([BII)V

    return-void
.end method

.method public final zzbz(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbav;->zzm(J)V

    return-void
.end method

.method public final zzc(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->zzo(J)V

    return-void
.end method

.method public final zzca(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbav;->zzacm()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzack()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_34

    :goto_e
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    int-to-long v1, v1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_e

    :cond_34
    :goto_34
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_44

    :try_start_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_53
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_38 .. :try_end_53} :catch_56

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_34

    :catch_56
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_80

    :goto_7f
    throw v0

    :goto_80
    goto :goto_7f
.end method

.method public final zzcc(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    shr-int/lit8 p1, p1, 0x18

    aput-byte p1, v0, v2
    :try_end_2b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbcu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzacw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzb(Lcom/google/android/gms/internal/ads/zzbav;)V

    return-void
.end method

.method public final zze([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->write([BII)V

    return-void
.end method

.method public final zzen(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbav$zza;->zzcf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbav$zza;->zzcf(I)I

    move-result v2

    if-ne v2, v1, :cond_2f

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzack()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzbem;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    return-void

    :cond_2f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbem;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzack()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbem;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I
    :try_end_44
    .catch Lcom/google/android/gms/internal/ads/zzbep; {:try_start_2 .. :try_end_44} :catch_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4c
    move-exception v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbav;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbep;)V

    return-void
.end method

.method public final zzf(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzen(Ljava/lang/String;)V

    return-void
.end method

.method public final zzf(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zza(B)V

    return-void
.end method

.method public final zzl(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    return-void
.end method

.method public final zzm(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzbz(I)V

    return-void
.end method

.method public final zzm(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbav;->zzacm()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzack()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3c

    :goto_13
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_13

    :cond_3c
    :goto_3c
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4f

    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_5f} :catch_61

    ushr-long/2addr p1, v1

    goto :goto_3c

    :catch_61
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    :goto_8a
    throw p2

    :goto_8b
    goto :goto_8a
.end method

.method public final zzn(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    return-void
.end method

.method public final zzo(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->buffer:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2
    :try_end_6d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6d} :catch_6e

    return-void

    :catch_6e
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbav$zza;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzp(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzl(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzcc(I)V

    return-void
.end method
