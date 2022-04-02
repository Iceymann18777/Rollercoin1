.class final Lcom/google/android/gms/internal/ads/zzari;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzaqw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzaee:Lcom/google/android/gms/internal/ads/zzamt;

.field private final zzaeu:Landroid/view/WindowManager;

.field private final zzagj:Landroid/util/DisplayMetrics;

.field private final zzbjc:Lcom/google/android/gms/internal/ads/zzci;

.field private zzbwy:I

.field private zzbwz:I

.field private zzbxb:I

.field private zzbxc:I

.field private final zzcch:Lcom/google/android/gms/internal/ads/zzhs;

.field private zzchp:Ljava/lang/String;

.field private zzcpp:Ljava/lang/Boolean;

.field private zzdad:Lcom/google/android/gms/internal/ads/zznv;

.field private final zzdda:Lcom/google/android/gms/internal/ads/zzash;

.field private final zzddb:Lcom/google/android/gms/ads/internal/zzbo;

.field private final zzddc:F

.field private zzddd:Z

.field private zzdde:Z

.field private zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

.field private zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private zzddh:Lcom/google/android/gms/internal/ads/zzasi;

.field private zzddi:Z

.field private zzddj:Z

.field private zzddk:Z

.field private zzddl:Z

.field private zzddm:I

.field private zzddn:Z

.field private zzddo:Z

.field private zzddp:Lcom/google/android/gms/internal/ads/zzarl;

.field private zzddq:Z

.field private zzddr:Z

.field private zzdds:Lcom/google/android/gms/internal/ads/zzox;

.field private zzddt:I

.field private zzddu:I

.field private zzddv:Lcom/google/android/gms/internal/ads/zznv;

.field private zzddw:Lcom/google/android/gms/internal/ads/zznv;

.field private zzddx:Lcom/google/android/gms/internal/ads/zznw;

.field private zzddy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzddz:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private zzdea:Z

.field private zzdeb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaqh;",
            ">;"
        }
    .end annotation
.end field

.field private zzus:Ljava/lang/String;

.field private final zzwc:Lcom/google/android/gms/ads/internal/zzw;

.field private final zzyf:Lcom/google/android/gms/internal/ads/zzang;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzash;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/ads/internal/zzbo;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzhs;)V
    .registers 14

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdde:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddn:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddo:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzchp:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbwz:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbwy:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbxb:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbxc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdda:Lcom/google/android/gms/internal/ads/zzash;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzus:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddk:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddm:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbjc:Lcom/google/android/gms/internal/ads/zzci;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzari;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddb:Lcom/google/android/gms/ads/internal/zzbo;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzari;->zzwc:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaeu:Landroid/view/WindowManager;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaeu:Landroid/view/WindowManager;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzari;->zzcch:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ads/zzari;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :try_start_55
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_58
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5f

    :catch_59
    move-exception p3

    const-string p4, "Unable to enable Javascript."

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5f
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_72

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_72
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object p3

    iget-object p4, p7, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-virtual {p3, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/internal/ads/zzakq;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzari;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvk()V

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result p2

    if-eqz p2, :cond_9b

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaro;->zzk(Lcom/google/android/gms/internal/ads/zzaqw;)Lcom/google/android/gms/internal/ads/zzaro;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzari;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9b
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastHoneycomb()Z

    move-result p2

    if-eqz p2, :cond_ab

    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzari;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzari;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_ab
    new-instance p2, Lcom/google/android/gms/internal/ads/zzamt;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdda:Lcom/google/android/gms/internal/ads/zzash;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzash;->zzto()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/ads/zzamt;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaee:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvo()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zznw;

    new-instance p3, Lcom/google/android/gms/internal/ads/zznx;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzus:Ljava/lang/String;

    const-string p6, "make_wv"

    invoke-direct {p3, v0, p6, p5}, Lcom/google/android/gms/internal/ads/zznx;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zznw;-><init>(Lcom/google/android/gms/internal/ads/zznx;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/google/android/gms/internal/ads/zznx;->zzc(Lcom/google/android/gms/internal/ads/zznx;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zznq;->zzb(Lcom/google/android/gms/internal/ads/zznx;)Lcom/google/android/gms/internal/ads/zznv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    const-string p5, "native:view_create"

    invoke-virtual {p3, p5, p2}, Lcom/google/android/gms/internal/ads/zznw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zznv;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddw:Lcom/google/android/gms/internal/ads/zznv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddv:Lcom/google/android/gms/internal/ads/zznv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzakq;->zzaw(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajm;->zzqe()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzari;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddu:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzari;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddu:I

    return p1
.end method

.method private final zza(Ljava/lang/Boolean;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzcpp:Ljava/lang/Boolean;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Boolean;)V

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method private final declared-synchronized zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzari;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzal(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string v1, "isVisible"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/ads/internal/zzbo;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzhs;)Lcom/google/android/gms/internal/ads/zzari;
    .registers 24

    new-instance v1, Lcom/google/android/gms/internal/ads/zzash;

    move-object v0, p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzash;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/gms/internal/ads/zzari;

    move-object v0, v12

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzari;-><init>(Lcom/google/android/gms/internal/ads/zzash;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/ads/internal/zzbo;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzhs;)V

    return-object v12
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzari;)V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private final declared-synchronized zzds(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzdt(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_4} :catch_c
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_4} :catch_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_4} :catch_8
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    goto :goto_1f

    :catch_8
    move-exception p1

    goto :goto_f

    :catch_a
    move-exception p1

    goto :goto_f

    :catch_c
    move-exception p1

    goto :goto_f

    :catch_e
    move-exception p1

    :goto_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_6

    monitor-exit p0

    return-void

    :goto_1f
    monitor-exit p0

    throw p1
.end method

.method private final zzdu(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzpz()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvi()V

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzpz()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    :cond_2f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzds(Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_47
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzds(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zzpz()Ljava/lang/Boolean;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzcpp:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzqf()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdea:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdea:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzqf()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzvh()Z
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzfz()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuu()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdda:Lcom/google/android/gms/internal/ads/zzash;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzash;->zzto()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_3c

    goto :goto_5c

    :cond_3c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakk;->zzf(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzamu;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_5e

    :cond_5c
    :goto_5c
    move v6, v4

    move v7, v5

    :goto_5e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbwy:I

    if-ne v0, v4, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbwz:I

    if-ne v0, v5, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbxb:I

    if-ne v0, v6, :cond_6f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbxc:I

    if-ne v0, v7, :cond_6f

    return v1

    :cond_6f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbwy:I

    if-ne v0, v4, :cond_77

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbwz:I

    if-eq v0, v5, :cond_78

    :cond_77
    const/4 v1, 0x1

    :cond_78
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbwy:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbwz:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbxb:I

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbxc:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaal;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaeu:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaal;->zza(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized zzvi()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzpz()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzcpp:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_27

    if-nez v0, :cond_25

    :try_start_d
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzari;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/Boolean;)V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1b} :catch_1d
    .catchall {:try_start_d .. :try_end_1b} :catchall_27

    monitor-exit p0

    return-void

    :catch_1d
    const/4 v0, 0x0

    :try_start_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/Boolean;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzvj()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzvk()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddk:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1e

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvl()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_32

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvm()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_32

    monitor-exit p0

    return-void

    :cond_28
    :goto_28
    :try_start_28
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvm()V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzvl()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddl:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzz(Landroid/view/View;)Z

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddl:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzvm()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddl:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzy(Landroid/view/View;)Z

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddl:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzvn()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdeb:Ljava/util/Map;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzvo()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajm;->zzpy()Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajm;->zzpy()Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zznn;->zza(Lcom/google/android/gms/internal/ads/zznx;)Z

    :cond_20
    return-void
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaee:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamt;->zzsd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->reset()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddj:Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_42

    if-eqz v0, :cond_25

    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzff()Lcom/google/android/gms/internal/ads/zzaqg;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Lcom/google/android/gms/internal/ads/zzapw;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddj:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzari;->zzdt(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_42

    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdm(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_1e

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddj:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->reset()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzff()Lcom/google/android/gms/internal/ads/zzaqg;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Lcom/google/android/gms/internal/ads/zzapw;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvn()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzqf()V

    :cond_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final declared-synchronized getRequestedOrientation()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddm:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method public final declared-synchronized isDestroyed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddj:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_28

    if-nez v0, :cond_21

    :try_start_7
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_10
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_7 .. :try_end_a} :catch_e
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_7 .. :try_end_a} :catch_c
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    goto :goto_11

    :catch_e
    move-exception p1

    goto :goto_11

    :catch_10
    move-exception p1

    :goto_11
    :try_start_11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_28

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaee:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamt;->onAttachedToWindow()V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddq:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqx;

    const/4 v2, 0x1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuu()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddr:Z

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfg()Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfg()Lcom/google/android/gms/internal/ads/zzaor;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_46
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddr:Z

    :cond_48
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvh()Z

    const/4 v0, 0x1

    :cond_4c
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzari;->zzal(Z)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-void

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaee:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamt;->onDetachedFromWindow()V

    :cond_c
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddr:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuu()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuv()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzakq;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuw()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_5a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddr:Z

    :cond_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_61

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzari;->zzal(Z)V

    return-void

    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    :catch_19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    if-eqz v0, :cond_37

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzve()Lcom/google/android/gms/internal/ads/zzasg;

    move-result-object p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzve()Lcom/google/android/gms/internal/ads/zzasg;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzasg;->zzda()V

    :cond_37
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaxx:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_53

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_32

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzari;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_32
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3d

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzari;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_3d
    cmpl-float v0, v1, v3

    if-lez v0, :cond_47

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzari;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_47
    cmpg-float v0, v1, v3

    if-gez v0, :cond_53

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzari;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_51
    const/4 p1, 0x0

    return p1

    :cond_53
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvh()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznn()V

    :cond_f
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzari;->setMeasuredDimension(II)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1da

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1d5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddk:Z

    if-nez v0, :cond_1d5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasi;->zzvt()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_1d5

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasi;->zzvu()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zztm()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzarl;->getAspectRatio()F

    move-result v0

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    cmpl-float v1, v0, v1

    if-nez v1, :cond_3f

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_1da

    monitor-exit p0

    return-void

    :cond_3f
    :try_start_3f
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_58

    if-eqz v2, :cond_58

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_60

    :cond_58
    if-nez p1, :cond_60

    if-eqz v1, :cond_60

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    :cond_60
    :goto_60
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzari;->setMeasuredDimension(II)V
    :try_end_6b
    .catchall {:try_start_3f .. :try_end_6b} :catchall_1da

    monitor-exit p0

    return-void

    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasi;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_bf

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbch:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_ba

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_8e

    goto :goto_ba

    :cond_8e
    const-string v0, "/contentHeight"

    new-instance v1, Lcom/google/android/gms/internal/ads/zzarj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzarj;-><init>(Lcom/google/android/gms/internal/ads/zzari;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzari;->zzdu(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddu:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddu:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_b5

    :cond_b1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_b5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzari;->setMeasuredDimension(II)V
    :try_end_b8
    .catchall {:try_start_6d .. :try_end_b8} :catchall_1da

    monitor-exit p0

    return-void

    :cond_ba
    :goto_ba
    :try_start_ba
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_1da

    monitor-exit p0

    return-void

    :cond_bf
    :try_start_bf
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasi;->zzvs()Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzagj:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzari;->setMeasuredDimension(II)V
    :try_end_d2
    .catchall {:try_start_bf .. :try_end_d2} :catchall_1da

    monitor-exit p0

    return-void

    :cond_d4
    :try_start_d4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_f4

    if-ne v0, v3, :cond_f0

    goto :goto_f4

    :cond_f0
    const v0, 0x7fffffff

    goto :goto_f5

    :cond_f4
    :goto_f4
    move v0, p1

    :goto_f5
    if-eq v2, v4, :cond_f9

    if-ne v2, v3, :cond_fa

    :cond_f9
    move v5, p2

    :cond_fa
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_10a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->heightPixels:I

    if-le v2, v5, :cond_108

    goto :goto_10a

    :cond_108
    const/4 v2, 0x0

    goto :goto_10b

    :cond_10a
    :goto_10a
    const/4 v2, 0x1

    :goto_10b
    sget-object v4, Lcom/google/android/gms/internal/ads/zznk;->zzbfe:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_143

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzasi;->widthPixels:I

    int-to-float v4, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_13f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzasi;->heightPixels:I

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_13f

    const/4 v0, 0x1

    goto :goto_140

    :cond_13f
    const/4 v0, 0x0

    :goto_140
    if-eqz v2, :cond_143

    move v2, v0

    :cond_143
    const/16 v0, 0x8

    if-eqz v2, :cond_1b2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzasi;->widthPixels:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzasi;->heightPixels:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddc:F

    div-float/2addr p2, v5

    float-to-int p2, p2

    const/16 v5, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1a0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->setVisibility(I)V

    :cond_1a0
    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzari;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddd:Z

    if-nez p1, :cond_1d3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzcch:Lcom/google/android/gms/internal/ads/zzhs;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;->zzalj:Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhs;->zza(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddd:Z
    :try_end_1b0
    .catchall {:try_start_d4 .. :try_end_1b0} :catchall_1da

    monitor-exit p0

    return-void

    :cond_1b2
    :try_start_1b2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1bb

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzari;->setVisibility(I)V

    :cond_1bb
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdde:Z

    if-nez p1, :cond_1c8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzcch:Lcom/google/android/gms/internal/ads/zzhs;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;->zzalk:Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhs;->zza(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdde:Z

    :cond_1c8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzasi;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzasi;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzari;->setMeasuredDimension(II)V
    :try_end_1d3
    .catchall {:try_start_1b2 .. :try_end_1d3} :catchall_1da

    :cond_1d3
    monitor-exit p0

    return-void

    :cond_1d5
    :goto_1d5
    :try_start_1d5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_1da

    monitor-exit p0

    return-void

    :catchall_1da
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    :cond_10
    return-void

    :catch_11
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    :cond_10
    return-void

    :catch_11
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->zzuu()Z

    move-result v0

    if-eqz v0, :cond_19

    monitor-enter p0

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdds:Lcom/google/android/gms/internal/ads/zzox;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdds:Lcom/google/android/gms/internal/ads/zzox;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzox;->zzc(Landroid/view/MotionEvent;)V

    :cond_14
    monitor-exit p0

    goto :goto_20

    :catchall_16
    move-exception p1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw p1

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbjc:Lcom/google/android/gms/internal/ads/zzci;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzci;->zza(Landroid/view/MotionEvent;)V

    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p1, 0x0

    return p1

    :cond_28
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddy:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddm:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzaqx;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    :cond_b
    return-void
.end method

.method public final stopLoading()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzarl;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddp:Lcom/google/android/gms/internal/ads/zzarl;

    if-eqz v0, :cond_c

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->e(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddp:Lcom/google/android/gms/internal/ads/zzarl;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzasi;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->requestLayout()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->zztg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddq:Z

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzfs;->zztg:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzal(Z)V

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzaqw;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_7
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzaqw;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_7
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zzn(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_c

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_c
    const-string p1, "Could not convert parameters to JSON."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    :cond_3f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzdu(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(ZI)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzah(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzah(Z)V

    return-void
.end method

.method public final zzai(I)V
    .registers 5

    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    :cond_13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zznx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzai(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddk:Z

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddk:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvk()V

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaal;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;)V

    if-eqz p1, :cond_19

    const-string p1, "expanded"

    goto :goto_1b

    :cond_19
    const-string p1, "default"

    :goto_1b
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzby(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzaj(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzak(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddt:I

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddt:I

    if-gtz v0, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznq()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddz:Lcom/google/android/gms/ads/internal/overlay/zzd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzox;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdds:Lcom/google/android/gms/internal/ads/zzox;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzaqw;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqx;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    :cond_7
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzdu(Ljava/lang/String;)V

    return-void
.end method

.method public final zzbe(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzdu(Ljava/lang/String;)V

    return-void
.end method

.method public final zzbi()Lcom/google/android/gms/ads/internal/zzw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzwc:Lcom/google/android/gms/ads/internal/zzw;

    return-object v0
.end method

.method public final zzbm(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdda:Lcom/google/android/gms/internal/ads/zzash;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzash;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaee:Lcom/google/android/gms/internal/ads/zzamt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdda:Lcom/google/android/gms/internal/ads/zzash;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzash;->zzto()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamt;->zzi(Landroid/app/Activity;)V

    return-void
.end method

.method public final declared-synchronized zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzaya:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzarx;->zzvp()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzarx;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_27
    move-object v2, p2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_3b

    monitor-exit p0

    return-void

    :cond_34
    :try_start_34
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_3b

    monitor-exit p0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcl()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddo:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddb:Lcom/google/android/gms/ads/internal/zzbo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddb:Lcom/google/android/gms/ads/internal/zzbo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzbo;->zzcl()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzcm()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddo:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddb:Lcom/google/android/gms/ads/internal/zzbo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddb:Lcom/google/android/gms/ads/internal/zzbo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzbo;->zzcm()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzdr(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    if-nez p1, :cond_8

    :try_start_3
    const-string p1, ""

    goto :goto_8

    :catchall_6
    move-exception p1

    goto :goto_c

    :cond_8
    :goto_8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzchp:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_6

    monitor-exit p0

    return-void

    :goto_c
    monitor-exit p0

    throw p1
.end method

.method public final zzno()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddv:Lcom/google/android/gms/internal/ads/zznv;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zznv;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznq;->zzb(Lcom/google/android/gms/internal/ads/zznx;)Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddv:Lcom/google/android/gms/internal/ads/zznv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    const-string v2, "native:view_show"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zznw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zznv;)V

    :cond_28
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zznp()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzub()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznp()V

    :cond_9
    return-void
.end method

.method public final declared-synchronized zzol()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzchp:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zztl()Lcom/google/android/gms/internal/ads/zzapn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zztm()Lcom/google/android/gms/internal/ads/zzarl;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddp:Lcom/google/android/gms/internal/ads/zzarl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zztn()Lcom/google/android/gms/internal/ads/zznv;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdad:Lcom/google/android/gms/internal/ads/zznv;

    return-object v0
.end method

.method public final zzto()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdda:Lcom/google/android/gms/internal/ads/zzash;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzash;->zzto()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zztp()Lcom/google/android/gms/internal/ads/zznw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    return-object v0
.end method

.method public final zztq()Lcom/google/android/gms/internal/ads/zzang;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    return-object v0
.end method

.method public final zztr()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzts()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final zzty()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzvj()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzyf:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zztz()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfj()Lcom/google/android/gms/internal/ads/zzalb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalb;->zzdp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfj()Lcom/google/android/gms/internal/ads/zzalb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalb;->zzdo()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzalb;->zzay(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzu(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzfz()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddi:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzua()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdda:Lcom/google/android/gms/internal/ads/zzash;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzash;->zzua()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzub()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddg:Lcom/google/android/gms/ads/internal/overlay/zzd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzuc()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddz:Lcom/google/android/gms/ads/internal/overlay/zzd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzud()Lcom/google/android/gms/internal/ads/zzasi;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddh:Lcom/google/android/gms/internal/ads/zzasi;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzue()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzus:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzuf()Lcom/google/android/gms/internal/ads/zzasc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    return-object v0
.end method

.method public final zzug()Landroid/webkit/WebViewClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddf:Lcom/google/android/gms/internal/ads/zzaqx;

    return-object v0
.end method

.method public final declared-synchronized zzuh()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddi:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzui()Lcom/google/android/gms/internal/ads/zzci;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzbjc:Lcom/google/android/gms/internal/ads/zzci;

    return-object v0
.end method

.method public final declared-synchronized zzuj()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddk:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzuk()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzqf()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzark;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzark;-><init>(Lcom/google/android/gms/internal/ads/zzari;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzul()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzum()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzun()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddt:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public final zzuo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzaee:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamt;->zzsc()V

    return-void
.end method

.method public final zzup()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddw:Lcom/google/android/gms/internal/ads/zznv;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->zzji()Lcom/google/android/gms/internal/ads/zznx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznq;->zzb(Lcom/google/android/gms/internal/ads/zznx;)Lcom/google/android/gms/internal/ads/zznv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddw:Lcom/google/android/gms/internal/ads/zznv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzddx:Lcom/google/android/gms/internal/ads/zznw;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zznw;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zznv;)V

    :cond_17
    return-void
.end method

.method public final declared-synchronized zzuq()Lcom/google/android/gms/internal/ads/zzox;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzdds:Lcom/google/android/gms/internal/ads/zzox;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzur()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzari;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzus()V
    .registers 2

    const-string v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    return-void
.end method
