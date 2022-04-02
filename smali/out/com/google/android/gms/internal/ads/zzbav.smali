.class public abstract Lcom/google/android/gms/internal/ads/zzbav;
.super Lcom/google/android/gms/internal/ads/zzbag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbav$zza;,
        Lcom/google/android/gms/internal/ads/zzbav$zzb;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzdqm:Z


# instance fields
.field zzdqn:Lcom/google/android/gms/internal/ads/zzbax;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbav;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbek;->zzagf()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzbav;->zzdqm:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbag;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbaw;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbav;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/ads/zzbcb;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcb;->zzacw()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbcb;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbcb;->zzacw()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbcu;Lcom/google/android/gms/internal/ads/zzbdm;)I
    .registers 4

    check-cast p0, Lcom/google/android/gms/internal/ads/zzazy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazy;->zzaaw()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzy(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzazy;->zzbj(I)V

    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method static synthetic zzacm()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzbav;->zzdqm:Z

    return v0
.end method

.method public static zzao(Lcom/google/android/gms/internal/ads/zzbah;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzaq(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static zzb(ID)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzb(IF)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzbcb;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzr(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zza(ILcom/google/android/gms/internal/ads/zzbcb;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzbcu;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzr(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzf(Lcom/google/android/gms/internal/ads/zzbcu;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/ads/zzbcu;Lcom/google/android/gms/internal/ads/zzbdm;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zza(Lcom/google/android/gms/internal/ads/zzbcu;Lcom/google/android/gms/internal/ads/zzbdm;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(D)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzc(F)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzbah;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/ads/zzbcu;Lcom/google/android/gms/internal/ads/zzbdm;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzazy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazy;->zzaaw()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzy(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzazy;->zzbj(I)V

    :cond_16
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzcd(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result p0

    return p0
.end method

.method public static zzce(I)I
    .registers 1

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static zzcf(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static zzcg(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzck(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result p0

    return p0
.end method

.method public static zzch(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzci(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzcj(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzce(I)I

    move-result p0

    return p0
.end method

.method private static zzck(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzcl(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result p0

    return p0
.end method

.method public static zzd(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzq(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/ads/zzbah;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzr(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzc(ILcom/google/android/gms/internal/ads/zzbah;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zze(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzq(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzeo(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbem;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzbep; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    :catch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbq;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_c
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzf(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzu(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzq(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzbcu;)I
    .registers 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzacw()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzg(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzg(ILjava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzeo(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IZ)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzbcu;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzacw()I

    move-result p0

    return p0
.end method

.method public static zzh(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzp(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzq(J)I

    move-result p0

    return p0
.end method

.method public static zzq(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzce(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzq(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    return v0
.end method

.method public static zzq([B)Lcom/google/android/gms/internal/ads/zzbav;
    .registers 4

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbav$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzbav$zza;-><init>([BII)V

    return-object v1
.end method

.method public static zzr(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzr(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzu(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzq(J)I

    move-result p0

    return p0
.end method

.method public static zzr([B)I
    .registers 2

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzs(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzck(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzcf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzs(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzt(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzt(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzu(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static zzu(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzv(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzcd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzce(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->zzc(IJ)V

    return-void
.end method

.method public final zza(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzp(II)V

    return-void
.end method

.method public abstract zza(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzbah;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzbcu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(ILcom/google/android/gms/internal/ads/zzbcu;Lcom/google/android/gms/internal/ads/zzbdm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbep;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbav;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbq;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzb([BII)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Lcom/google/android/gms/internal/ads/zzbav$zzb; {:try_start_14 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    throw p1

    :catch_20
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbav$zzb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbav$zzb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzack()I
.end method

.method public final zzacl()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbav;->zzack()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract zzan(Lcom/google/android/gms/internal/ads/zzbah;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzap(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zza(B)V

    return-void
.end method

.method public final zzb(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzo(J)V

    return-void
.end method

.method public final zzb(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzcc(I)V

    return-void
.end method

.method public final zzb(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->zzu(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbav;->zza(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzbah;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzbz(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzca(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzcb(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzck(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzca(I)V

    return-void
.end method

.method public abstract zzcc(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zze(Lcom/google/android/gms/internal/ads/zzbcu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zze([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzen(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzf(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzf(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzl(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzm(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzm(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzn(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzn(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzu(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzm(J)V

    return-void
.end method

.method public final zzo(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzck(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbav;->zzn(II)V

    return-void
.end method

.method public abstract zzo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzp(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
