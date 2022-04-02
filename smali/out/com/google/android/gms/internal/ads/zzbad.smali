.class final Lcom/google/android/gms/internal/ads/zzbad;
.super Ljava/lang/Object;


# direct methods
.method static zza(I[BIILcom/google/android/gms/internal/ads/zzbae;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbbu;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_4a

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_45

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 p0, 0x5

    if-ne v0, p0, :cond_17

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzado()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_1c
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_21
    if-ge p2, p3, :cond_30

    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p2

    iget v0, p4, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-eq v0, p0, :cond_30

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbad;->zza(I[BIILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p2

    goto :goto_21

    :cond_30
    if-gt p2, p3, :cond_35

    if-ne v0, p0, :cond_35

    return p2

    :cond_35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadr()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_3a
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p0

    iget p1, p4, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    add-int/2addr p0, p1

    return p0

    :cond_42
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_45
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzbad;->zzb([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p0

    return p0

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzado()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    goto :goto_50

    :goto_4f
    throw p0

    :goto_50
    goto :goto_4f
.end method

.method static zza(I[BIILcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbae;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/ads/zzbbt<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzbae;",
            ")I"
        }
    .end annotation

    check-cast p4, Lcom/google/android/gms/internal/ads/zzbbp;

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p2

    :goto_6
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    if-ge p2, p3, :cond_1a

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-ne p0, v1, :cond_1a

    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p2

    goto :goto_6

    :cond_1a
    return p2
.end method

.method static zza(I[BIILcom/google/android/gms/internal/ads/zzbef;Lcom/google/android/gms/internal/ads/zzbae;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_85

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_77

    const/4 v1, 0x1

    if-eq v0, v1, :cond_69

    const/4 v1, 0x2

    if-eq v0, v1, :cond_55

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 p3, 0x5

    if-ne v0, p3, :cond_22

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zze([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzado()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbef;->zzagd()Lcom/google/android/gms/internal/ads/zzbef;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_30
    if-ge p2, p3, :cond_48

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result v2

    iget p2, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    move v0, p2

    if-eq p2, v7, :cond_47

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbad;->zza(I[BIILcom/google/android/gms/internal/ads/zzbef;Lcom/google/android/gms/internal/ads/zzbae;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_30

    :cond_47
    move p2, v2

    :cond_48
    if-gt p2, p3, :cond_50

    if-ne v0, v7, :cond_50

    invoke-virtual {p4, p0, v6}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    return p2

    :cond_50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadr()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0

    :cond_55
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p2

    iget p3, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-nez p3, :cond_60

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    goto :goto_64

    :cond_60
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbah;->zzc([BII)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    :goto_64
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    add-int/2addr p2, p3

    return p2

    :cond_69
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zzf([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_77
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzbad;->zzb([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/gms/internal/ads/zzbae;->zzdpm:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/ads/zzbef;->zzb(ILjava/lang/Object;)V

    return p1

    :cond_85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzado()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    goto :goto_8b

    :goto_8a
    throw p0

    :goto_8b
    goto :goto_8a
.end method

.method static zza(I[BILcom/google/android/gms/internal/ads/zzbae;)I
    .registers 5

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_e

    shl-int/lit8 p1, p2, 0x7

    :goto_a
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    return v0

    :cond_e
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1f

    shl-int/lit8 p1, v0, 0xe

    :goto_1b
    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    return p2

    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_2d

    shl-int/lit8 p1, p2, 0x15

    goto :goto_a

    :cond_2d
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3b

    shl-int/lit8 p1, v0, 0x1c

    goto :goto_1b

    :cond_3b
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_40
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_49

    iput p0, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    return v0

    :cond_49
    move p2, v0

    goto :goto_40
.end method

.method static zza([BILcom/google/android/gms/internal/ads/zzbae;)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_9

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    return v0

    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zza(I[BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p0

    return p0
.end method

.method static zza([BILcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbae;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/ads/zzbbt<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzbae;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbbp;

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzbbp;->zzco(I)V

    goto :goto_9

    :cond_15
    if-ne p1, v0, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzadl()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    goto :goto_1e

    :goto_1d
    throw p0

    :goto_1e
    goto :goto_1d
.end method

.method static zzb([BILcom/google/android/gms/internal/ads/zzbae;)I
    .registers 12

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpm:J

    return v0

    :cond_e
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_1c
    if-gez v0, :cond_2c

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_1c

    :cond_2c
    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpm:J

    return p1
.end method

.method static zzc([BILcom/google/android/gms/internal/ads/zzbae;)I
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-nez v0, :cond_d

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    return p1

    :cond_d
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbq;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method static zzd([BILcom/google/android/gms/internal/ads/zzbae;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-nez v0, :cond_d

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    return p1

    :cond_d
    add-int v1, p1, v0

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbem;->zzf([BII)Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbq;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, p1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    return v1

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->zzads()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p0

    throw p0
.end method

.method static zze([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static zze([BILcom/google/android/gms/internal/ads/zzbae;)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbad;->zza([BILcom/google/android/gms/internal/ads/zzbae;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpl:I

    if-nez v0, :cond_d

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    return p1

    :cond_d
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbah;->zzc([BII)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzbae;->zzdpn:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1
.end method

.method static zzf([BI)J
    .registers 9

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static zzg([BI)D
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzf([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzh([BI)F
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zze([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
