.class final synthetic Lcom/google/android/gms/internal/ads/zzadq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzht;


# static fields
.field static final zzccm:Lcom/google/android/gms/internal/ads/zzht;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzadq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadq;->zzccm:Lcom/google/android/gms/internal/ads/zzht;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzii;)V
    .registers 3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzii;->zzanp:Lcom/google/android/gms/internal/ads/zzib;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzib;->zzalt:Ljava/lang/Integer;

    return-void
.end method
