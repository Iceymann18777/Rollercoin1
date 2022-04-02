.class public Lcom/google/android/gms/internal/ads/zzjr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzjr$zza;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzari:Lcom/google/android/gms/internal/ads/zzld;

.field private final zzarj:Lcom/google/android/gms/internal/ads/zzjh;

.field private final zzark:Lcom/google/android/gms/internal/ads/zzjg;

.field private final zzarl:Lcom/google/android/gms/internal/ads/zzme;

.field private final zzarm:Lcom/google/android/gms/internal/ads/zzrv;

.field private final zzarn:Lcom/google/android/gms/internal/ads/zzahi;

.field private final zzaro:Lcom/google/android/gms/internal/ads/zzaao;

.field private final zzarp:Lcom/google/android/gms/internal/ads/zzrw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzjh;Lcom/google/android/gms/internal/ads/zzjg;Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzrv;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/internal/ads/zzaao;Lcom/google/android/gms/internal/ads/zzrw;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarj:Lcom/google/android/gms/internal/ads/zzjh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzark:Lcom/google/android/gms/internal/ads/zzjg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarl:Lcom/google/android/gms/internal/ads/zzme;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarm:Lcom/google/android/gms/internal/ads/zzrv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarn:Lcom/google/android/gms/internal/ads/zzahi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzaro:Lcom/google/android/gms/internal/ads/zzaao;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarp:Lcom/google/android/gms/internal/ads/zzrw;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzld;
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjr;->zzia()Lcom/google/android/gms/internal/ads/zzld;

    move-result-object p0

    return-object p0
.end method

.method static zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/internal/ads/zzjr$zza<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_12

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzamu;->zzbe(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string p1, "Google Play Services is not available"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzamu;->zzbg(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzamu;->zzbf(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_23

    goto :goto_24

    :cond_23
    move v0, p1

    :goto_24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zznk;->initialize(Landroid/content/Context;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zznk;->zzber:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 v0, 0x0

    :cond_3a
    if-eqz v0, :cond_47

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzjr$zza;->zzic()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_51

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzjr$zza;->zzid()Ljava/lang/Object;

    move-result-object p0

    goto :goto_51

    :cond_47
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzjr$zza;->zzid()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_51

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzjr$zza;->zzic()Ljava/lang/Object;

    move-result-object p0

    :cond_51
    :goto_51
    return-object p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzif()Lcom/google/android/gms/internal/ads/zzamu;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamu;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzjh;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarj:Lcom/google/android/gms/internal/ads/zzjh;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzjg;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzark:Lcom/google/android/gms/internal/ads/zzjg;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzme;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarl:Lcom/google/android/gms/internal/ads/zzme;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzrv;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarm:Lcom/google/android/gms/internal/ads/zzrv;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzrw;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarp:Lcom/google/android/gms/internal/ads/zzrw;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzahi;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzarn:Lcom/google/android/gms/internal/ads/zzahi;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzaao;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzaro:Lcom/google/android/gms/internal/ads/zzaao;

    return-object p0
.end method

.method private static zzhz()Lcom/google/android/gms/internal/ads/zzld;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/ads/zzjr;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_1b

    const-string v1, "ClientApi class is not an instance of IBinder"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzane;->zzdk(Ljava/lang/String;)V

    return-object v0

    :cond_1b
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzle;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    return-object v0

    :catch_22
    move-exception v1

    const-string v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final zzia()Lcom/google/android/gms/internal/ads/zzld;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzari:Lcom/google/android/gms/internal/ads/zzld;

    if-nez v1, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzjr;->zzhz()Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzari:Lcom/google/android/gms/internal/ads/zzld;

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjr;->zzari:Lcom/google/android/gms/internal/ads/zzld;

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/ads/zzqa;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjx;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzjx;-><init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqa;

    return-object p1
.end method

.method public final zza(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzqf;
    .registers 6
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
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzqf;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjy;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzjy;-><init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqf;

    return-object p1
.end method

.method public final zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzaap;
    .registers 6

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_13

    const-string v0, "useClientJar flag not found in activity intent extras."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzane;->e(Ljava/lang/String;)V

    goto :goto_17

    :cond_13
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :goto_17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzka;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzka;-><init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/app/Activity;)V

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaap;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;)Lcom/google/android/gms/internal/ads/zzkn;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzjv;-><init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjr$zza;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzkn;

    return-object p1
.end method
