.class public final enum Lcom/google/android/gms/internal/ads/zzayd;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzayd;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbr;"
    }
.end annotation


# static fields
.field private static final zzall:Lcom/google/android/gms/internal/ads/zzbbs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbs<",
            "Lcom/google/android/gms/internal/ads/zzayd;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzdmk:Lcom/google/android/gms/internal/ads/zzayd;

.field public static final enum zzdml:Lcom/google/android/gms/internal/ads/zzayd;

.field public static final enum zzdmm:Lcom/google/android/gms/internal/ads/zzayd;

.field public static final enum zzdmn:Lcom/google/android/gms/internal/ads/zzayd;

.field public static final enum zzdmo:Lcom/google/android/gms/internal/ads/zzayd;

.field public static final enum zzdmp:Lcom/google/android/gms/internal/ads/zzayd;

.field private static final synthetic zzdmq:[Lcom/google/android/gms/internal/ads/zzayd;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayd;

    const-string v1, "UNKNOWN_PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmk:Lcom/google/android/gms/internal/ads/zzayd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayd;

    const-string v1, "TINK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdml:Lcom/google/android/gms/internal/ads/zzayd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayd;

    const-string v1, "LEGACY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmm:Lcom/google/android/gms/internal/ads/zzayd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayd;

    const-string v1, "RAW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmn:Lcom/google/android/gms/internal/ads/zzayd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayd;

    const-string v1, "CRUNCHY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmo:Lcom/google/android/gms/internal/ads/zzayd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayd;

    const-string v1, "UNRECOGNIZED"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzayd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmp:Lcom/google/android/gms/internal/ads/zzayd;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzayd;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzayd;->zzdmk:Lcom/google/android/gms/internal/ads/zzayd;

    aput-object v8, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayd;->zzdml:Lcom/google/android/gms/internal/ads/zzayd;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayd;->zzdmm:Lcom/google/android/gms/internal/ads/zzayd;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayd;->zzdmn:Lcom/google/android/gms/internal/ads/zzayd;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayd;->zzdmo:Lcom/google/android/gms/internal/ads/zzayd;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/google/android/gms/internal/ads/zzayd;->zzdmq:[Lcom/google/android/gms/internal/ads/zzayd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaye;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzall:Lcom/google/android/gms/internal/ads/zzbbs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzayd;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzayd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmq:[Lcom/google/android/gms/internal/ads/zzayd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzayd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzayd;

    return-object v0
.end method

.method public static zzbg(I)Lcom/google/android/gms/internal/ads/zzayd;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmo:Lcom/google/android/gms/internal/ads/zzayd;

    return-object p0

    :cond_13
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmn:Lcom/google/android/gms/internal/ads/zzayd;

    return-object p0

    :cond_16
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmm:Lcom/google/android/gms/internal/ads/zzayd;

    return-object p0

    :cond_19
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdml:Lcom/google/android/gms/internal/ads/zzayd;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmk:Lcom/google/android/gms/internal/ads/zzayd;

    return-object p0
.end method


# virtual methods
.method public final zzhq()I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayd;->zzdmp:Lcom/google/android/gms/internal/ads/zzayd;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayd;->value:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
