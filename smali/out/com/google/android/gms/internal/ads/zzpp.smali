.class public final Lcom/google/android/gms/internal/ads/zzpp;
.super Lcom/google/android/gms/internal/ads/zzqg;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field static final zzbjs:[Ljava/lang/String;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzbij:Lcom/google/android/gms/internal/ads/zzoz;

.field private zzbjx:Landroid/view/View;

.field private zzbjz:Landroid/graphics/Point;

.field private zzbka:Landroid/graphics/Point;

.field private zzbkb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzfp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbke:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbkf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbkg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbkh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "2011"

    const-string v1, "1009"

    const-string v2, "3010"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkf:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkg:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjz:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbka:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkb:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfg()Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfg()Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbke:Ljava/lang/ref/WeakReference;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_56
    :goto_56
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_56

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkf:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "1098"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    const-string v2, "3011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_56

    :cond_95
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkf:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a4
    :goto_a4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_cc

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkg:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_a4

    :cond_cc
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkg:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznk;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzpd;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzpp;->zzbjs:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_20

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-nez v2, :cond_29

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzkq()V

    monitor-exit v0

    return-void

    :cond_29
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpr;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzpr;-><init>(Lcom/google/android/gms/internal/ads/zzpp;Landroid/view/View;)V

    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v3, :cond_36

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzpd;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzox;)Z

    goto :goto_39

    :cond_36
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzox;)V

    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    goto :goto_3f

    :goto_3e
    throw p1

    :goto_3f
    goto :goto_3e
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzpp;Lcom/google/android/gms/internal/ads/zzpd;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpp;->zza(Lcom/google/android/gms/internal/ads/zzpd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzpp;[Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpp;->zza([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final zza([Ljava/lang/String;)Z
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkf:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    array-length v0, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_26

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkg:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    return v1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_26
    return v1
.end method

.method private final zzl(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzkn()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v1

    goto :goto_18

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    :goto_18
    if-eqz v1, :cond_1d

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzoz;->zzl(Landroid/view/View;)V

    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method private final zzv(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzoz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/content/Context;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbke:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    if-nez v7, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjz:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpp;->zzv(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjz:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpp;->zzv(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_x"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbka:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpp;->zzv(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_y"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbka:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpp;->zzv(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjx:Landroid/view/View;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjx:Landroid/view/View;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzkn()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzkn()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v2

    const-string v4, "1007"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    :goto_7b
    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;)V

    goto :goto_8e

    :cond_80
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    const-string v4, "1007"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    goto :goto_7b

    :cond_87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    invoke-interface {v1, p1, v2, v5, v7}, Lcom/google/android/gms/internal/ads/zzoz;->zza(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    :cond_8e
    :goto_8e
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    goto :goto_94

    :goto_93
    throw p1

    :goto_94
    goto :goto_93
.end method

.method public final onGlobalLayout()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbke:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzoz;->zzc(Landroid/view/View;Ljava/util/Map;)V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final onScrollChanged()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbke:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzoz;->zzc(Landroid/view/View;Ljava/util/Map;)V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p1

    return v1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbke:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_16

    monitor-exit p1

    return v1

    :cond_16
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aget v3, v2, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v3, v2

    new-instance v2, Landroid/graphics/Point;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjz:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3e

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbka:Landroid/graphics/Point;

    :cond_3e
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzoz;->zzd(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit p1

    return v1

    :catchall_55
    move-exception p2

    monitor-exit p1
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw p2
.end method

.method public final unregisterNativeAd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjx:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjz:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbka:Landroid/graphics/Point;

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzpp;->zzl(Landroid/view/View;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzpd;

    if-nez v2, :cond_16

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzpd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpd;->zzkk()Z

    move-result v2

    if-nez v2, :cond_25

    const-string p1, "Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbke:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v2, :cond_4d

    if-eqz v7, :cond_4d

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzbbu:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    invoke-interface {v2, v7, v3}, Lcom/google/android/gms/internal/ads/zzoz;->zzb(Landroid/view/View;Ljava/util/Map;)V

    :cond_4d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_50
    .catchall {:try_start_4 .. :try_end_50} :catchall_190

    :try_start_50
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v3, v3, Lcom/google/android/gms/internal/ads/zzpd;

    const/4 v4, 0x0

    if-nez v3, :cond_59

    :cond_57
    :goto_57
    monitor-exit v2

    goto :goto_96

    :cond_59
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzpd;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbke:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpd;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_57

    if-eqz v5, :cond_57

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzaiy;->zzu(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpd;->zzks()Lcom/google/android/gms/internal/ads/zzaix;

    move-result-object v3

    if-eqz v3, :cond_86

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaix;->zzx(Z)V

    :cond_86
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfp;

    if-eqz v5, :cond_57

    if-eqz v3, :cond_57

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Lcom/google/android/gms/internal/ads/zzft;)V
    :try_end_95
    .catchall {:try_start_50 .. :try_end_95} :catchall_18d

    goto :goto_57

    :goto_96
    :try_start_96
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v2, :cond_ae

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoy;->zzkm()Z

    move-result v2

    if-eqz v2, :cond_ae

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Lcom/google/android/gms/internal/ads/zzoz;)V

    goto :goto_ba

    :cond_ae
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzoy;

    if-eqz v2, :cond_ba

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Lcom/google/android/gms/internal/ads/zzoz;)V

    :cond_ba
    :goto_ba
    const-string v2, "1098"

    const-string v3, "3011"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    :goto_c2
    const/4 v3, 0x2

    if-ge v4, v3, :cond_db

    aget-object v3, v2, v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_d8

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_dc

    :cond_d8
    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    :cond_db
    move-object v2, v1

    :goto_dc
    if-nez v2, :cond_e4

    const-string v1, "Ad choices asset view is not provided."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    goto :goto_11a

    :cond_e4
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_eb

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :cond_eb
    if-eqz v1, :cond_11a

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjx:Landroid/view/View;

    if-eqz v2, :cond_11a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkh:Ljava/util/Map;

    const-string v3, "1007"

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjx:Landroid/view/View;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkf:Ljava/util/Map;

    const-string v3, "1007"

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjx:Landroid/view/View;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbjx:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_11a
    :goto_11a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkf:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkg:Ljava/util/Map;

    move-object v1, p1

    move-object v2, v7

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpq;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Lcom/google/android/gms/internal/ads/zzpp;Lcom/google/android/gms/internal/ads/zzpd;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzpp;->zzl(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzoz;->zzj(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_13a
    .catchall {:try_start_96 .. :try_end_13a} :catchall_190

    :try_start_13a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzpd;

    if-nez v1, :cond_142

    :cond_140
    :goto_140
    monitor-exit p1

    goto :goto_188

    :cond_142
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbke:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v1, :cond_140

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpd;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_140

    if-eqz v2, :cond_140

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaiy;->zzu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_140

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfp;

    if-nez v3, :cond_180

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbkb:Ljava/lang/ref/WeakReference;

    :cond_180
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpd;->zzks()Lcom/google/android/gms/internal/ads/zzaix;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzft;)V
    :try_end_187
    .catchall {:try_start_13a .. :try_end_187} :catchall_18a

    goto :goto_140

    :goto_188
    :try_start_188
    monitor-exit v0
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_190

    return-void

    :catchall_18a
    move-exception v1

    :try_start_18b
    monitor-exit p1
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18a

    :try_start_18c
    throw v1
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_190

    :catchall_18d
    move-exception p1

    :try_start_18e
    monitor-exit v2
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_18d

    :try_start_18f
    throw p1

    :catchall_190
    move-exception p1

    monitor-exit v0
    :try_end_192
    .catchall {:try_start_18f .. :try_end_192} :catchall_190

    goto :goto_194

    :goto_193
    throw p1

    :goto_194
    goto :goto_193
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpp;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpp;->zzbij:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzoz;->setClickConfirmingView(Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method
