.class public final Lcom/google/android/gms/internal/ads/zzbfo;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzecw:[Lcom/google/android/gms/internal/ads/zzbfo;


# instance fields
.field public zzecx:[B

.field public zzecy:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecx:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecy:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzebt:I

    return-void
.end method

.method public static zzagt()[Lcom/google/android/gms/internal/ads/zzbfo;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecw:[Lcom/google/android/gms/internal/ads/zzbfo;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfg;->zzebs:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfo;->zzecw:[Lcom/google/android/gms/internal/ads/zzbfo;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzbfo;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbfo;->zzecw:[Lcom/google/android/gms/internal/ads/zzbfo;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecw:[Lcom/google/android/gms/internal/ads/zzbfo;

    return-object v0
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

    if-eqz v0, :cond_23

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecy:[B

    goto :goto_0

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecx:[B

    goto :goto_0

    :cond_23
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecx:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecy:[B

    if-eqz v0, :cond_e

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecx:[B

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfo;->zzecy:[B

    if-eqz v1, :cond_16

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    return v0
.end method
