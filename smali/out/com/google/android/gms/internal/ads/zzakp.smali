.class final Lcom/google/android/gms/internal/ads/zzakp;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic zzcru:Lcom/google/android/gms/internal/ads/zzakk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzakk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzcru:Lcom/google/android/gms/internal/ads/zzakk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzakk;Lcom/google/android/gms/internal/ads/zzakl;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzakk;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzcru:Lcom/google/android/gms/internal/ads/zzakk;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Lcom/google/android/gms/internal/ads/zzakk;Z)Z

    return-void

    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzcru:Lcom/google/android/gms/internal/ads/zzakk;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Lcom/google/android/gms/internal/ads/zzakk;Z)Z

    :cond_25
    return-void
.end method
