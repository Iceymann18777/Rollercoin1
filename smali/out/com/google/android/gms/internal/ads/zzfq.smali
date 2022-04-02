.class final Lcom/google/android/gms/internal/ads/zzfq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzagk:Lcom/google/android/gms/internal/ads/zzfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzagk:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfq;->zzagk:Lcom/google/android/gms/internal/ads/zzfp;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzfp;I)V

    return-void
.end method
