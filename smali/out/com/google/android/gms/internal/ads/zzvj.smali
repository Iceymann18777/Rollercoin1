.class final synthetic Lcom/google/android/gms/internal/ads/zzvj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbqh:Lcom/google/android/gms/internal/ads/zzuu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzuu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzbqh:Lcom/google/android/gms/internal/ads/zzuu;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzuu;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzvj;-><init>(Lcom/google/android/gms/internal/ads/zzuu;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvj;->zzbqh:Lcom/google/android/gms/internal/ads/zzuu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuu;->destroy()V

    return-void
.end method
