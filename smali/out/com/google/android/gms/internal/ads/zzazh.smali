.class public final Lcom/google/android/gms/internal/ads/zzazh;
.super Ljava/lang/Object;


# instance fields
.field private final data:[B


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p2, p3, [B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazh;->data:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static zzm([B)Lcom/google/android/gms/internal/ads/zzazh;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzazh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzazh;-><init>([BII)V

    return-object v1
.end method


# virtual methods
.method public final getBytes()[B
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazh;->data:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
