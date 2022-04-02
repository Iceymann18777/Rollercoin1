.class public final Lcom/google/android/gms/ads/internal/zzy;
.super Lcom/google/android/gms/ads/internal/zzi;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzvm:Z

.field private zzxf:Z

.field private zzxg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzxg:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzaqw;)V
    .registers 9

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzcp()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_e

    return-void

    :cond_e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_15

    return-void

    :cond_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaan;->zzi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_24

    return-void

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzang;->zzcve:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzang;->zzcvf:I

    const/16 v2, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzbz()Ljava/lang/String;

    move-result-object v6

    const-string v4, ""

    const-string v5, "javascript"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaan;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_71

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaan;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfa()Lcom/google/android/gms/internal/ads/zzaan;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaan;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzxf:Z

    :cond_71
    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z
    .registers 9

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzceq:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzas;->zze(Lcom/google/android/gms/internal/ads/zzajh;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    const-string p1, "Could not get mediation view"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return v1

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbx;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2c

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v3, :cond_25

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->destroy()V

    :cond_25
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzbx;->removeView(Landroid/view/View;)V

    :cond_2c
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/zzas;->zzf(Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result v2

    if-nez v2, :cond_c0

    :try_start_32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaiy;->zzt(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_59

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaix;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzbw;->zzacp:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaix;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzft;)V

    :cond_59
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcof:Lcom/google/android/gms/internal/ads/zzjn;

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcof:Lcom/google/android/gms/internal/ads/zzjn;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzjn;->widthPixels:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/internal/zzbx;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcof:Lcom/google/android/gms/internal/ads/zzjn;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzjn;->heightPixels:I

    invoke-virtual {v2, p2}, Lcom/google/android/gms/ads/internal/zzbx;->setMinimumHeight(I)V

    :cond_73
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zza;->zzg(Landroid/view/View;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_76} :catch_77

    goto :goto_c0

    :catch_77
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p2

    const-string v0, "BannerAdManager.swapViews"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_87
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcof:Lcom/google/android/gms/internal/ads/zzjn;

    if-eqz v0, :cond_c0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_c0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcof:Lcom/google/android/gms/internal/ads/zzjn;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzasi;->zzb(Lcom/google/android/gms/internal/ads/zzjn;)Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzasi;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbx;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcof:Lcom/google/android/gms/internal/ads/zzjn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzjn;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbx;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcof:Lcom/google/android/gms/internal/ads/zzjn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzjn;->heightPixels:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbx;->setMinimumHeight(I)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zza;->zzg(Landroid/view/View;)V

    :cond_c0
    :goto_c0
    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbx;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_d2

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzbx;->showNext()V

    :cond_d2
    if-eqz p1, :cond_f4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbx;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz p2, :cond_e6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->destroy()V

    goto :goto_ef

    :cond_e6
    if-eqz p1, :cond_ef

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzbx;->removeView(Landroid/view/View;)V

    :cond_ef
    :goto_ef
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbw;->zzfn()V

    :cond_f4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzbx;->setVisibility(I)V

    return v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    .registers 2

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zztm()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzy;->zzd(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzy;->zzd(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 3

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvm:Z

    return-void
.end method

.method public final showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzait;)Lcom/google/android/gms/internal/ads/zzaqw;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarg;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzard:[Lcom/google/android/gms/internal/ads/zzjn;

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzarf:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzarf:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    goto :goto_5e

    :cond_1d
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaji;->zzcos:Lcom/google/android/gms/internal/ads/zzaej;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaej;->zzcet:Ljava/lang/String;

    if-eqz v1, :cond_4d

    const-string v2, "[xX]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_55

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjn;->zzhy()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    :goto_55
    new-instance v1, Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    :goto_5e
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    :cond_60
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzait;)Lcom/google/android/gms/internal/ads/zzaqw;

    move-result-object p1

    return-object p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzajh;Z)V
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzcp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-eqz v0, :cond_24

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzxf:Z

    if-nez v2, :cond_16

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzy;->zzc(Lcom/google/android/gms/internal/ads/zzaqw;)V

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzwb:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v2, :cond_24

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v3, "onSdkImpression"

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_24
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/ads/zzajh;Z)V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzas;->zzf(Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result p2

    if-eqz p2, :cond_cf

    new-instance p2, Lcom/google/android/gms/ads/internal/zzac;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/zzac;-><init>(Lcom/google/android/gms/ads/internal/zzy;)V

    if-eqz p1, :cond_cf

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzas;->zzf(Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_44

    :cond_43
    move-object v2, v1

    :goto_44
    if-nez v2, :cond_4c

    const-string p1, "AdWebView is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_4c
    :try_start_4c
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    if-eqz v3, :cond_55

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbtw:Lcom/google/android/gms/internal/ads/zzwx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzwx;->zzbsi:Ljava/util/List;

    goto :goto_56

    :cond_55
    move-object v3, v1

    :goto_56
    if-eqz v3, :cond_c3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    goto :goto_c3

    :cond_5f
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v4, :cond_6a

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzxq;->zzmo()Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v4

    goto :goto_6b

    :cond_6a
    move-object v4, v1

    :goto_6b
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v5, :cond_76

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbtx:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxq;->zzmp()Lcom/google/android/gms/internal/ads/zzyc;

    move-result-object p1

    goto :goto_77

    :cond_76
    move-object p1, v1

    :goto_77
    const-string v5, "2"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_7d} :catch_c9

    const-string v6, "/nativeExpressViewClicked"

    if-eqz v5, :cond_9b

    if-eqz v4, :cond_9b

    :try_start_83
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzxz;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_93

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzxz;->recordImpression()V

    :cond_93
    invoke-static {v4, v1, p2}, Lcom/google/android/gms/ads/internal/zzas;->zza(Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzyc;Lcom/google/android/gms/ads/internal/zzac;)Lcom/google/android/gms/ads/internal/gmsg/zzv;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    return-void

    :cond_9b
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    if-eqz p1, :cond_bd

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzyc;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyc;->getOverrideImpressionRecording()Z

    move-result v2

    if-nez v2, :cond_b5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyc;->recordImpression()V

    :cond_b5
    invoke-static {v1, p1, p2}, Lcom/google/android/gms/ads/internal/zzas;->zza(Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzyc;Lcom/google/android/gms/ads/internal/zzac;)Lcom/google/android/gms/ads/internal/gmsg/zzv;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    return-void

    :cond_bd
    const-string p1, "No matching template id and mapper"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_c3
    :goto_c3
    const-string p1, "No template ids present in mediation response"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_c8} :catch_c9

    return-void

    :catch_c9
    move-exception p1

    const-string p2, "Error occurred while recording impression and registering for clicks"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_cf
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbw;->zzfo()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzy;->zzd(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzajh;)Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcoq:Lcom/google/android/gms/internal/ads/zzhs;

    if-eqz p1, :cond_21

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcoq:Lcom/google/android/gms/internal/ads/zzhs;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;->zzakl:Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhs;->zza(Lcom/google/android/gms/internal/ads/zzhu$zza$zzb;)V

    :cond_21
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzi(I)V

    return v1

    :cond_25
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/zzd;->zzb(Lcom/google/android/gms/internal/ads/zzajh;Z)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcfh:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_64

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zzy;->zzd(Lcom/google/android/gms/internal/ads/zzajh;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfg()Lcom/google/android/gms/internal/ads/zzaor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfg()Lcom/google/android/gms/internal/ads/zzaor;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaor;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcoc:Z

    if-nez p1, :cond_81

    new-instance p1, Lcom/google/android/gms/ads/internal/zzab;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/zzab;-><init>(Lcom/google/android/gms/ads/internal/zzy;)V

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v1, :cond_58

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v1

    goto :goto_59

    :cond_58
    move-object v1, v0

    :goto_59
    if-eqz v1, :cond_81

    new-instance v2, Lcom/google/android/gms/ads/internal/zzz;

    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/ads/internal/zzz;-><init>(Lcom/google/android/gms/internal/ads/zzajh;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Lcom/google/android/gms/internal/ads/zzasg;)V

    goto :goto_81

    :cond_64
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbw;->zzfp()Z

    move-result p1

    if-eqz p1, :cond_7e

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzbbo:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_81

    :cond_7e
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/ads/zzajh;Z)V

    :cond_81
    :goto_81
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz p1, :cond_a5

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zztm()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v1

    if-eqz v1, :cond_96

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzasc;->zzuz()V

    :cond_96
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadk:Lcom/google/android/gms/internal/ads/zzmu;

    if-eqz v1, :cond_a5

    if-eqz p1, :cond_a5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadk:Lcom/google/android/gms/internal/ads/zzmu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzb(Lcom/google/android/gms/internal/ads/zzmu;)V

    :cond_a5
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    move-result p1

    if-eqz p1, :cond_142

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbw;->zzfo()Z

    move-result p1

    if-eqz p1, :cond_11e

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz p1, :cond_139

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcob:Lorg/json/JSONObject;

    if-eqz p1, :cond_c4

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvy:Lcom/google/android/gms/internal/ads/zzes;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzes;->zza(Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzajh;)V

    :cond_c4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzfh()Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiy;->zzt(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_103

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzccv:Lcom/google/android/gms/internal/ads/zzjj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzy;->zza(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v1

    if-eqz v1, :cond_103

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_103

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaix;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzacp:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaix;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzft;)V

    :cond_103
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzajh;->zzfz()Z

    move-result v1

    if-eqz v1, :cond_10f

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Lcom/google/android/gms/internal/ads/zzft;)V

    goto :goto_139

    :cond_10f
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/zzaa;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/ads/internal/zzaa;-><init>(Lcom/google/android/gms/internal/ads/zzfp;Lcom/google/android/gms/internal/ads/zzajh;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Lcom/google/android/gms/internal/ads/zzasf;)V

    goto :goto_139

    :cond_11e
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadu:Landroid/view/View;

    if-eqz p1, :cond_139

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzcob:Lorg/json/JSONObject;

    if-eqz p1, :cond_139

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvy:Lcom/google/android/gms/internal/ads/zzes;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzadu:Landroid/view/View;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzes;->zza(Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzajh;Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/zzbw;->zzadu:Landroid/view/View;

    :cond_139
    :goto_139
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzajh;->zzceq:Z

    if-nez p1, :cond_142

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzbw;->zzj(Landroid/view/View;)V

    :cond_142
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqb:Z

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzy;->zzvm:Z

    if-ne v2, v3, :cond_b

    goto :goto_52

    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzjj;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzjj;->versionCode:I

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzapw:J

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzjj;->extras:Landroid/os/Bundle;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzapx:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzapy:Ljava/util/List;

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzapz:Z

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqa:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqb:Z

    if-nez v3, :cond_27

    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzy;->zzvm:Z

    if-eqz v3, :cond_24

    goto :goto_27

    :cond_24
    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_29

    :cond_27
    :goto_27
    const/4 v3, 0x1

    const/4 v13, 0x1

    :goto_29
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqc:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqd:Lcom/google/android/gms/internal/ads/zzmq;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqe:Landroid/location/Location;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqf:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqg:Landroid/os/Bundle;

    move-object/from16 v18, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqh:Landroid/os/Bundle;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqi:Ljava/util/List;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqj:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaqk:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzjj;->zzaql:Z

    move/from16 v23, v1

    move-object v4, v2

    invoke-direct/range {v4 .. v23}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzmq;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_52
    invoke-super {v0, v1}, Lcom/google/android/gms/ads/internal/zzi;->zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v1

    return v1
.end method

.method protected final zzbq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacw:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzxf:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzy;->zzc(Lcom/google/android/gms/internal/ads/zzaqw;)V

    :cond_17
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzbq()V

    return-void
.end method

.method protected final zzca()Z
    .registers 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    const/4 v0, 0x1

    :goto_26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakk;->zzaj(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbw;->zzacv:Lcom/google/android/gms/internal/ads/zzjn;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_47
    if-nez v0, :cond_56

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/zzbx;->setVisibility(I)V

    :cond_56
    return v0
.end method

.method public final zzcz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvv:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbl;->zzdy()V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzajh;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzcoc:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzy;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacs:Lcom/google/android/gms/ads/internal/zzbx;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zzbx;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_4f

    :cond_31
    if-eqz p1, :cond_48

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Lcom/google/android/gms/internal/ads/zzasg;)V

    :cond_48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/ads/zzajh;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzajh;->zzcoc:Z

    :cond_4f
    :goto_4f
    return-void
.end method
