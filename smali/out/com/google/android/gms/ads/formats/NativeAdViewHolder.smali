.class public final Lcom/google/android/gms/ads/formats/NativeAdViewHolder;
.super Ljava/lang/Object;


# static fields
.field public static zzvk:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/google/android/gms/ads/formats/NativeAdViewHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzvj:Lcom/google/android/gms/internal/ads/zzqf;

.field private zzvl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvk:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContainerView must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-nez v0, :cond_3e

    instance-of v0, p1, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    if-eqz v0, :cond_11

    goto :goto_3e

    :cond_11
    sget-object v0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvk:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string p1, "The provided containerView is already in use with another NativeAdViewHolder."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->e(Ljava/lang/String;)V

    return-void

    :cond_1f
    sget-object v0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvk:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvl:Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p3}, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzig()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvj:Lcom/google/android/gms/internal/ads/zzqf;

    return-void

    :cond_3e
    :goto_3e
    const-string p1, "The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->e(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvl:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_14

    const-string p1, "NativeAdViewHolder.setNativeAd containerView doesn\'t exist, returning"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v1, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvk:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    sget-object v1, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvk:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvj:Lcom/google/android/gms/internal/ads/zzqf;

    if-eqz v0, :cond_2f

    :try_start_25
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p1

    const-string v0, "Unable to call setNativeAd on delegate"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    return-void
.end method

.method private static zzb(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_8

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final setClickConfirmingView(Landroid/view/View;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvj:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, "Unable to call setClickConfirmingView on delegate"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V
    .registers 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd;->zzbe()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final setNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .registers 2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->zzbe()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final unregisterNativeAd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvj:Lcom/google/android/gms/internal/ads/zzqf;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqf;->unregisterNativeAd()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "Unable to call unregisterNativeAd on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvl:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_21

    sget-object v1, Lcom/google/android/gms/ads/formats/NativeAdViewHolder;->zzvk:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method
