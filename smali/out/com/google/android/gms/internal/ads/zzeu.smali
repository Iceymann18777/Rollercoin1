.class final Lcom/google/android/gms/internal/ads/zzeu;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic zzafk:Lcom/google/android/gms/internal/ads/zzet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeu;->zzafk:Lcom/google/android/gms/internal/ads/zzet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeu;->zzafk:Lcom/google/android/gms/internal/ads/zzet;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzet;->zzl(I)V

    return-void
.end method
