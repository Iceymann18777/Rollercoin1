.class public final Lcom/google/android/gms/internal/ads/zzgk;
.super Ljava/lang/Thread;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mStarted:Z

.field private final zzagx:I

.field private final zzagz:I

.field private zzahy:Z

.field private final zzahz:Lcom/google/android/gms/internal/ads/zzgf;

.field private final zzaia:Lcom/google/android/gms/internal/ads/zzadf;

.field private final zzaib:I

.field private final zzaic:I

.field private final zzaid:I

.field private final zzaie:I

.field private final zzaif:I

.field private final zzaig:I

.field private final zzaih:Ljava/lang/String;

.field private final zzaii:Z

.field private zzbm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgf;Lcom/google/android/gms/internal/ads/zzadf;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->mStarted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzbm:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahz:Lcom/google/android/gms/internal/ads/zzgf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaia:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->mLock:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawl:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzagx:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawm:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaic:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawn:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzagz:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawo:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaid:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawr:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaie:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawt:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaif:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawu:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaig:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawp:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaib:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzaww:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaih:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/ads/zznk;->zzawy:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaii:Z

    const-string p1, "ContentFetchTask"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzge;)Lcom/google/android/gms/internal/ads/zzgo;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzgk;II)V

    return-object p1

    :cond_9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_4e

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_4e

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzge;->zzb(Ljava/lang/String;ZFFFF)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzgk;II)V

    return-object p1

    :cond_48
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzgk;II)V

    return-object p1

    :cond_4e
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_7d

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzaqw;

    if-nez v1, :cond_7d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzge;->zzgs()V

    check-cast p1, Landroid/webkit/WebView;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v1

    if-nez v1, :cond_63

    const/4 p1, 0x0

    goto :goto_6f

    :cond_63
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzge;->zzgs()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v1, p0, p2, p1, v4}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Lcom/google/android/gms/internal/ads/zzgk;Lcom/google/android/gms/internal/ads/zzge;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    :goto_6f
    if-eqz p1, :cond_77

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {p1, p0, v0, v9}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzgk;II)V

    return-object p1

    :cond_77
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzgk;II)V

    return-object p1

    :cond_7d
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_a2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_85
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_9c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/ads/zzgk;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzge;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzgo;->zzaiq:I

    add-int/2addr v1, v4

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzgo;->zzair:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_9c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzgk;II)V

    return-object p1

    :cond_a2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzgo;-><init>(Lcom/google/android/gms/internal/ads/zzgk;II)V

    return-object p1
.end method

.method private static zzgx()Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgg;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_5f

    if-nez v3, :cond_21

    goto :goto_5f

    :cond_21
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_28

    return v0

    :cond_28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_2c

    iget v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_5f

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_58

    const/4 v1, 0x0

    goto :goto_5c

    :cond_58
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_60

    :goto_5c
    if-eqz v1, :cond_5f

    const/4 v0, 0x1

    :cond_5f
    :goto_5f
    return v0

    :catchall_60
    move-exception v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v2

    const-string v3, "ContentFetchTask.isInForeground"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private final zzgz()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahy:Z

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 5

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgk;->zzgx()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    :goto_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzgz()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_18} :catch_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_68

    goto :goto_5f

    :cond_19
    if-eqz v0, :cond_5f

    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_3d
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_3b} :catch_76

    move-object v1, v0

    goto :goto_4c

    :catch_3d
    move-exception v0

    :try_start_3e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v2

    const-string v3, "ContentFetchTask.extractContent"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Failed getting root view of activity. Content not extracted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    if-eqz v1, :cond_5f

    if-eqz v1, :cond_5f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgl;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgl;-><init>(Lcom/google/android/gms/internal/ads/zzgk;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5f

    :cond_59
    const-string v0, "ContentFetchTask: sleeping"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    goto :goto_15

    :cond_5f
    :goto_5f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaib:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_67} :catch_76
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_67} :catch_68

    goto :goto_7c

    :catch_68
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaia:Lcom/google/android/gms/internal/ads/zzadf;

    const-string v2, "ContentFetchTask.run"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzadf;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_7c

    :catch_76
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :catch_7f
    :goto_7f
    :try_start_7f
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahy:Z
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_91

    if-eqz v1, :cond_8e

    :try_start_83
    const-string v1, "ContentFetchTask: waiting"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_8d} :catch_7f
    .catchall {:try_start_83 .. :try_end_8d} :catchall_91

    goto :goto_7f

    :cond_8e
    :try_start_8e
    monitor-exit v0

    goto/16 :goto_0

    :catchall_91
    move-exception v1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_91

    goto :goto_95

    :goto_94
    throw v1

    :goto_95
    goto :goto_94
.end method

.method public final wakeup()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahy:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "ContentFetchThread: wakeup"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzge;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 15

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzge;->zzgr()V

    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "text"

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaii:Z

    if-nez p3, :cond_65

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_65

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v7

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v8, p3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v9, p2

    move-object v3, p1

    move v5, p4

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzge;->zza(Ljava/lang/String;ZFFFF)V

    goto :goto_7c

    :cond_65
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v6, p3

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v7, p2

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzge;->zza(Ljava/lang/String;ZFFFF)V

    :cond_7c
    :goto_7c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzge;->zzgn()Z

    move-result p2

    if-eqz p2, :cond_87

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahz:Lcom/google/android/gms/internal/ads/zzgf;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgf;->zzb(Lcom/google/android/gms/internal/ads/zzge;)Z
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_87} :catch_96
    .catchall {:try_start_3 .. :try_end_87} :catchall_88

    :cond_87
    return-void

    :catchall_88
    move-exception p1

    const-string p2, "Failed to get webview content."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaia:Lcom/google/android/gms/internal/ads/zzadf;

    const-string p3, "ContentFetchTask.processWebViewContent"

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzadf;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catch_96
    const-string p1, "Json string may be malformed."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    return-void
.end method

.method public final zzgw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->mStarted:Z

    if-eqz v1, :cond_e

    const-string v1, "Content hash thread already started, quiting..."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->mStarted:Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->start()V

    return-void

    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public final zzgy()Lcom/google/android/gms/internal/ads/zzge;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahz:Lcom/google/android/gms/internal/ads/zzgf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgf;->zzgv()Lcom/google/android/gms/internal/ads/zzge;

    move-result-object v0

    return-object v0
.end method

.method public final zzha()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahy:Z

    return v0
.end method

.method final zzk(Landroid/view/View;)V
    .registers 11

    :try_start_0
    new-instance v8, Lcom/google/android/gms/internal/ads/zzge;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzagx:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaic:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzagz:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaid:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaie:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaif:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaig:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzge;-><init>(IIIIIII)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzen()Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgg;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaih:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zznk;->zzawv:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaih:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    return-void

    :cond_51
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/ads/zzgk;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzge;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object p1

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzge;->zzgt()V

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzaiq:I

    if-nez v0, :cond_61

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzair:I

    if-nez v0, :cond_61

    return-void

    :cond_61
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzair:I

    if-nez v0, :cond_6c

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzge;->zzgu()I

    move-result v0

    if-nez v0, :cond_6c

    return-void

    :cond_6c
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzair:I

    if-nez p1, :cond_79

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahz:Lcom/google/android/gms/internal/ads/zzgf;

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/ads/zzgf;->zza(Lcom/google/android/gms/internal/ads/zzge;)Z

    move-result p1

    if-eqz p1, :cond_79

    return-void

    :cond_79
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzahz:Lcom/google/android/gms/internal/ads/zzgf;

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/ads/zzgf;->zzc(Lcom/google/android/gms/internal/ads/zzge;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    return-void

    :catch_7f
    move-exception p1

    const-string v0, "Exception in fetchContentOnUIThread"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzaia:Lcom/google/android/gms/internal/ads/zzadf;

    const-string v1, "ContentFetchTask.fetchContent"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
