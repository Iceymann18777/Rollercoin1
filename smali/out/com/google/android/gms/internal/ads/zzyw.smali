.class final Lcom/google/android/gms/internal/ads/zzyw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbvd:Lcom/google/android/gms/internal/ads/zzyq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzyq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzbvd:Lcom/google/android/gms/internal/ads/zzyq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzbvd:Lcom/google/android/gms/internal/ads/zzyq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyq;->zza(Lcom/google/android/gms/internal/ads/zzyq;)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxt;->onAdLeftApplication()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
