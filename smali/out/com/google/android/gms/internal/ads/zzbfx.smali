.class public final Lcom/google/android/gms/internal/ads/zzbfx;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;


# instance fields
.field private zzedz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbfy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfy;)V
    .registers 3

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzedz:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzedz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfy;

    if-eqz p1, :cond_d

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbfy;->zza(Landroidx/browser/customtabs/CustomTabsClient;)V

    :cond_d
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzedz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfy;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfy;->zzjo()V

    :cond_d
    return-void
.end method
