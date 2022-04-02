.class final synthetic Lcom/google/android/gms/internal/ads/zzasw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdfj:Lcom/google/android/gms/internal/ads/zzasv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasw;->zzdfj:Lcom/google/android/gms/internal/ads/zzasv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasw;->zzdfj:Lcom/google/android/gms/internal/ads/zzasv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasv;->zzvw()V

    return-void
.end method
