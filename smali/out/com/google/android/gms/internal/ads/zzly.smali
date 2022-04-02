.class public final Lcom/google/android/gms/internal/ads/zzly;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private zzapt:Lcom/google/android/gms/internal/ads/zzjd;

.field private zzapu:Lcom/google/android/gms/ads/AdListener;

.field private zzarh:[Lcom/google/android/gms/ads/AdSize;

.field private final zzast:Lcom/google/android/gms/internal/ads/zzxm;

.field private final zzasu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzasv:Lcom/google/android/gms/ads/VideoController;

.field private final zzasw:Lcom/google/android/gms/internal/ads/zzkd;

.field private zzasx:Lcom/google/android/gms/ads/Correlator;

.field private zzasy:Lcom/google/android/gms/internal/ads/zzks;

.field private zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzata:Landroid/view/ViewGroup;

.field private zzatb:I

.field private final zzuk:Lcom/google/android/gms/internal/ads/zzjm;

.field private zzvg:Lcom/google/android/gms/ads/VideoOptions;

.field private zzvm:Z

.field private zzvo:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzye:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 8

    sget-object v4, Lcom/google/android/gms/internal/ads/zzjm;->zzara:Lcom/google/android/gms/internal/ads/zzjm;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzjm;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 9

    sget-object v4, Lcom/google/android/gms/internal/ads/zzjm;->zzara:Lcom/google/android/gms/internal/ads/zzjm;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzjm;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .registers 10

    sget-object v4, Lcom/google/android/gms/internal/ads/zzjm;->zzara:Lcom/google/android/gms/internal/ads/zzjm;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzjm;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .registers 11

    sget-object v4, Lcom/google/android/gms/internal/ads/zzjm;->zzara:Lcom/google/android/gms/internal/ads/zzjm;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzjm;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzjm;I)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzjm;Lcom/google/android/gms/internal/ads/zzks;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzjm;Lcom/google/android/gms/internal/ads/zzks;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/zzxm;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzly;->zzast:Lcom/google/android/gms/internal/ads/zzxm;

    new-instance p5, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p5}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasv:Lcom/google/android/gms/ads/VideoController;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzlz;

    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/zzlz;-><init>(Lcom/google/android/gms/internal/ads/zzly;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasw:Lcom/google/android/gms/internal/ads/zzkd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzata:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzly;->zzuk:Lcom/google/android/gms/internal/ads/zzjm;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasu:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzly;->zzatb:I

    if-eqz p2, :cond_78

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_2f
    new-instance p6, Lcom/google/android/gms/internal/ads/zzjq;

    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zzjq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zzjq;->zzi(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzjq;->getAdUnitId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_40} :catch_61

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_78

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzly;->zzatb:I

    new-instance p6, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzly;->zzu(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzjn;->zzarg:Z

    const-string p3, "Ads by Google"

    invoke-virtual {p2, p1, p6, p3}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;)V

    goto :goto_78

    :catch_61
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/ads/zzjn;

    sget-object p6, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzly;)Lcom/google/android/gms/ads/VideoController;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasv:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method

.method private static zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzjn;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzly;->zzu(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zzjn;->zzarg:Z

    return-object v0
.end method

.method private static zzu(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->destroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzapu:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->zzbk()Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjn;->zzhy()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_15

    :try_start_8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvo:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->zzck()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasv:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvg:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final isLoading()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->isLoading()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->pause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordManualImpression()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasu:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->zzbm()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    :cond_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final resume()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->resume()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzapu:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasw:Lcom/google/android/gms/internal/ads/zzkd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzkd;->zza(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzly;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvo:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz p1, :cond_10

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzjp;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzla;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasx:Lcom/google/android/gms/ads/Correlator;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/ads/Correlator;->zzaz()Lcom/google/android/gms/internal/ads/zzkc;

    move-result-object p1

    :goto_10
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzlg;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    :cond_13
    return-void

    :catch_14
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvm:Z

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzks;->setManualImpressionsEnabled(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz p1, :cond_10

    new-instance v1, Lcom/google/android/gms/internal/ads/zzog;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzog;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzod;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvg:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzmu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzmu;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object p1, v1

    :goto_12
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzmu;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    :cond_15
    return-void

    :catch_16
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjd;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz p1, :cond_10

    new-instance v1, Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lcom/google/android/gms/internal/ads/zzjd;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzke;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlw;)V
    .registers 12

    const-string v0, "#007 Could not call remote method."

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-nez v1, :cond_d5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;

    if-nez v1, :cond_12

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v1, :cond_cd

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzata:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzly;->zzatb:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzly;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzig()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;)V

    invoke-static {v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;

    move-result-object v1

    :goto_3a
    check-cast v1, Lcom/google/android/gms/internal/ads/zzks;

    goto :goto_51

    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzig()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzly;->zzye:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzly;->zzast:Lcom/google/android/gms/internal/ads/zzxm;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzjs;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;)V

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3a

    :goto_51
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasw:Lcom/google/android/gms/internal/ads/zzkd;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzjf;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzkh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzje;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzly;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lcom/google/android/gms/internal/ads/zzjd;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzke;)V

    :cond_6d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvo:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvo:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzjp;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzla;)V

    :cond_7d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzog;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzog;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzod;)V

    :cond_8d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasx:Lcom/google/android/gms/ads/Correlator;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasx:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/Correlator;->zzaz()Lcom/google/android/gms/internal/ads/zzkc;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzlg;)V

    :cond_9c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvg:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvg:Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzmu;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzmu;)V

    :cond_ac
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzvm:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->setManualImpressionsEnabled(Z)V
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b3} :catch_f1

    :try_start_b3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzks;->zzbj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-nez v1, :cond_bc

    goto :goto_d5

    :cond_bc
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzata:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_c7} :catch_c8

    goto :goto_d5

    :catch_c8
    move-exception v1

    :try_start_c9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d5

    :cond_cd
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d5
    :goto_d5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzata:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlw;)Lcom/google/android/gms/internal/ads/zzjj;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzks;->zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v1

    if-eqz v1, :cond_f0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzast:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlw;->zzir()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzj(Ljava/util/Map;)V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_f0} :catch_f1

    :cond_f0
    return-void

    :catch_f1
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs zza([Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzata:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzarh:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzly;->zzatb:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzly;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzjn;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzata:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzks;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzks;->zzbj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_27

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_18

    return v0

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzata:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    const/4 p1, 0x1

    return p1

    :catch_27
    move-exception p1

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final zzbc()Lcom/google/android/gms/internal/ads/zzlo;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzasy:Lcom/google/android/gms/internal/ads/zzks;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzks;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
