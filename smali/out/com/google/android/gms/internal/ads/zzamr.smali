.class final Lcom/google/android/gms/internal/ads/zzamr;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic zzcuf:Lcom/google/android/gms/internal/ads/zzamq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzcuf:Lcom/google/android/gms/internal/ads/zzamq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamr;->zzcuf:Lcom/google/android/gms/internal/ads/zzamq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zza(Lcom/google/android/gms/internal/ads/zzamq;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
