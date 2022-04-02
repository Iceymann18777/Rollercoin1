.class final Lcom/google/android/gms/internal/ads/zzabg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbzj:Lcom/google/android/gms/internal/ads/zzabf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzabf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzbzj:Lcom/google/android/gms/internal/ads/zzabf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzbzj:Lcom/google/android/gms/internal/ads/zzabf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabf;->zza(Lcom/google/android/gms/internal/ads/zzabf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "Timed out waiting for WebView to finish loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabg;->zzbzj:Lcom/google/android/gms/internal/ads/zzabf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabf;->cancel()V

    return-void
.end method
