.class public Lcom/google/android/gms/internal/ads/zzakq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzakq;-><init>()V

    return-void
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzaqw;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->onPause()V

    const/4 p0, 0x1

    return p0
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzaqw;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->onResume()V

    const/4 p0, 0x1

    return p0
.end method

.method public static zzrp()Z
    .registers 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .registers 5

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    new-instance p3, Landroid/webkit/WebResourceResponse;

    invoke-direct {p3, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p3
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzaqw;Z)Lcom/google/android/gms/internal/ads/zzaqx;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqx;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Z)V

    return-object v0
.end method

.method public zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public zza(Landroid/app/DownloadManager$Request;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Landroid/view/Window;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public zzaw(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public zzax(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzakq;->zzrp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object p1

    :catchall_10
    move-exception p1

    const-string v0, "Failed to obtain CookieManager."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public zzh(Landroid/net/Uri;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_16
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    :cond_1c
    const/16 v2, 0x26

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_29
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gt v4, v2, :cond_33

    if-ne v4, v3, :cond_34

    :cond_33
    move v4, v2

    :cond_34
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1c

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public zzrl()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzrm()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzrn()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public zzro()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public zzrq()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzy(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public zzz(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
