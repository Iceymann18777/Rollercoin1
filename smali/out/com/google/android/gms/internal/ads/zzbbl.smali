.class final enum Lcom/google/android/gms/internal/ads/zzbbl;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbbl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzdtk:Lcom/google/android/gms/internal/ads/zzbbl;

.field public static final enum zzdtl:Lcom/google/android/gms/internal/ads/zzbbl;

.field public static final enum zzdtm:Lcom/google/android/gms/internal/ads/zzbbl;

.field public static final enum zzdtn:Lcom/google/android/gms/internal/ads/zzbbl;

.field private static final synthetic zzdtp:[Lcom/google/android/gms/internal/ads/zzbbl;


# instance fields
.field private final zzdto:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbl;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbbl;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtk:Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbl;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzbbl;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtl:Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbl;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzbbl;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtm:Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbl;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/zzbbl;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtn:Lcom/google/android/gms/internal/ads/zzbbl;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzbbl;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtk:Lcom/google/android/gms/internal/ads/zzbbl;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtl:Lcom/google/android/gms/internal/ads/zzbbl;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtm:Lcom/google/android/gms/internal/ads/zzbbl;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtp:[Lcom/google/android/gms/internal/ads/zzbbl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzdto:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbbl;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbl;->zzdtp:[Lcom/google/android/gms/internal/ads/zzbbl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbbl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbbl;

    return-object v0
.end method
