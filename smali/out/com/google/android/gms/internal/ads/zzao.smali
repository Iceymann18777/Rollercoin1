.class final Lcom/google/android/gms/internal/ads/zzao;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final zzcc:J

.field private zzcd:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzao;->zzcc:J

    return-void
.end method


# virtual methods
.method public final read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzao;->zzcd:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzao;->zzcd:J

    :cond_e
    return v0
.end method

.method public final read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_d

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzao;->zzcd:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzao;->zzcd:J

    :cond_d
    return p1
.end method

.method final zzo()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzao;->zzcc:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzao;->zzcd:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
