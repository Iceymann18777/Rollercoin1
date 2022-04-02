.class final Lcom/google/android/gms/internal/ads/zzbaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbai;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbaj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd([BII)[B
    .registers 4

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method
