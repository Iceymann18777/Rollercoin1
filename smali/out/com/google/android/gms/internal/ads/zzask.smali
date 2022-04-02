.class final synthetic Lcom/google/android/gms/internal/ads/zzask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzder:Lcom/google/android/gms/internal/ads/zzasj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzask;->zzder:Lcom/google/android/gms/internal/ads/zzasj;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzask;->zzder:Lcom/google/android/gms/internal/ads/zzasj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasj;->zzvg()V

    return-void
.end method
