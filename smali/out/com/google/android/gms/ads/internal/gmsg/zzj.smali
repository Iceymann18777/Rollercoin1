.class final synthetic Lcom/google/android/gms/ads/internal/gmsg/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# static fields
.field static final zzbmg:Lcom/google/android/gms/ads/internal/gmsg/zzv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/gmsg/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/gmsg/zzj;->zzbmg:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarr;

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zza(Lcom/google/android/gms/internal/ads/zzarr;Ljava/util/Map;)V

    return-void
.end method
