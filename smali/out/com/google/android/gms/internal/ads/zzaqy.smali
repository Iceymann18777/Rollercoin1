.class final synthetic Lcom/google/android/gms/internal/ads/zzaqy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdcf:Lcom/google/android/gms/internal/ads/zzaqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqy;->zzdcf:Lcom/google/android/gms/internal/ads/zzaqx;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqy;->zzdcf:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzvg()V

    return-void
.end method
