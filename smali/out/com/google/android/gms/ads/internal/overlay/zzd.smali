.class public Lcom/google/android/gms/ads/internal/overlay/zzd;
.super Lcom/google/android/gms/internal/ads/zzaaq;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# static fields
.field private static final zzbxm:I


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

.field private zzbxp:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field private zzbxq:Z

.field private zzbxr:Landroid/widget/FrameLayout;

.field private zzbxs:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private zzbxt:Z

.field private zzbxu:Z

.field private zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

.field private zzbxw:Z

.field zzbxx:I

.field private final zzbxy:Ljava/lang/Object;

.field private zzbxz:Ljava/lang/Runnable;

.field private zzbya:Z

.field private zzbyb:Z

.field private zzbyc:Z

.field private zzbyd:Z

.field private zzbye:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxm:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxt:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxu:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxw:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxx:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxy:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbye:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private final zznl()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyc:Z

    if-eqz v0, :cond_d

    goto :goto_50

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyc:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_4d

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxx:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzai(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxy:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbya:Z

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzun()Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxz:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxz:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zznk;->zzayq:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_48
    monitor-exit v0

    goto :goto_4d

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4a

    throw v1

    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznm()V

    :cond_50
    :goto_50
    return-void
.end method

.method private final zzno()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzno()V

    return-void
.end method

.method private final zzs(Z)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzben:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    move v3, v0

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingLeft:I

    if-eqz p1, :cond_25

    const/4 v3, 0x0

    goto :goto_26

    :cond_25
    move v3, v0

    :goto_26
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingRight:I

    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingTop:I

    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzp;->paddingBottom:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxp:Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_45

    const/16 v1, 0xb

    goto :goto_47

    :cond_45
    const/16 v1, 0x9

    :goto_47
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyr:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxp:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final zzt(Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzg;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyb:Z

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_256

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    move-result v3

    if-eqz v3, :cond_3e

    sget-object v3, Lcom/google/android/gms/internal/ads/zznk;->zzbel:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v3

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x1

    :goto_3f
    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    const/4 v5, 0x0

    if-eqz v4, :cond_50

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v4, v4, Lcom/google/android/gms/ads/internal/zzaq;->zzzf:Z

    if-eqz v4, :cond_50

    const/4 v4, 0x1

    goto :goto_51

    :cond_50
    const/4 v4, 0x0

    :goto_51
    iget-boolean v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxu:Z

    if-eqz v6, :cond_57

    if-eqz v4, :cond_8d

    :cond_57
    if-eqz v3, :cond_8d

    const/16 v3, 0x400

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zznk;->zzayr:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v3, :cond_8d

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzaq;->zzzk:Z

    if-eqz v3, :cond_8d

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_8d
    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    const/4 v4, 0x0

    if-eqz v3, :cond_9d

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v3

    goto :goto_9e

    :cond_9d
    move-object v3, v4

    :goto_9e
    if-eqz v3, :cond_a5

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzasc;->zzfz()Z

    move-result v3

    goto :goto_a6

    :cond_a5
    const/4 v3, 0x0

    :goto_a6
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxw:Z

    if-eqz v3, :cond_e8

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzakq;->zzrl()I

    move-result v7

    if-ne v6, v7, :cond_ca

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_c7

    :goto_c6
    const/4 v5, 0x1

    :cond_c7
    iput-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxw:Z

    goto :goto_e8

    :cond_ca
    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzakq;->zzrm()I

    move-result v7

    if-ne v6, v7, :cond_e8

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c7

    goto :goto_c6

    :cond_e8
    :goto_e8
    iget-boolean v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxw:Z

    const/16 v6, 0x2e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Delay onShow to next orientation change: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {v1, v5}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzakq;->zza(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_116

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    :cond_116
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxu:Z

    if-nez v0, :cond_11f

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/high16 v5, -0x1000000

    goto :goto_123

    :cond_11f
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    sget v5, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxm:I

    :goto_123
    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyb:Z

    if-eqz p1, :cond_202

    :try_start_131
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzel()Lcom/google/android/gms/internal/ads/zzarc;

    iget-object v6, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_146

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzud()Lcom/google/android/gms/internal/ads/zzasi;

    move-result-object v0

    move-object v7, v0

    goto :goto_147

    :cond_146
    move-object v7, v4

    :goto_147
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_157

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzue()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_158

    :cond_157
    move-object v8, v4

    :goto_158
    const/4 v9, 0x1

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_170

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzbi()Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v0

    move-object v15, v0

    goto :goto_171

    :cond_170
    move-object v15, v4

    :goto_171
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhs;->zzhm()Lcom/google/android/gms/internal/ads/zzhs;

    move-result-object v16

    move v10, v3

    invoke-static/range {v6 .. v16}, Lcom/google/android/gms/internal/ads/zzarc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/ads/internal/zzbo;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzhs;)Lcom/google/android/gms/internal/ads/zzaqw;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_17c} :catch_1f4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyx:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    const/4 v8, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyp:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyt:Lcom/google/android/gms/ads/internal/overlay/zzt;

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_1a2

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasc;->zzut()Lcom/google/android/gms/ads/internal/zzx;

    move-result-object v4

    :cond_1a2
    move-object v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v5 .. v15}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;ZLcom/google/android/gms/ads/internal/gmsg/zzz;Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzaam;Lcom/google/android/gms/internal/ads/zzait;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuf()Lcom/google/android/gms/internal/ads/zzasc;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {v4, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzasc;->zza(Lcom/google/android/gms/internal/ads/zzasd;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v0, :cond_1c6

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzaqw;->loadUrl(Ljava/lang/String;)V

    goto :goto_1de

    :cond_1c6
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbys:Ljava/lang/String;

    if-eqz v0, :cond_1ec

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyq:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbys:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzaqw;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1de
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_20d

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    goto :goto_20d

    :cond_1ec
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1f4
    move-exception v0

    const-string v2, "Error obtaining webview."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_202
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzaqw;->zzbm(Landroid/content/Context;)V

    :cond_20d
    :goto_20d
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_229

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_229

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_229
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxu:Z

    if-eqz v0, :cond_232

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzur()V

    :cond_232
    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_247

    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxw:Z

    if-nez v0, :cond_247

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzno()V

    :cond_247
    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzs(Z)V

    iget-object v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuh()Z

    move-result v0

    if-eqz v0, :cond_255

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    :cond_255
    return-void

    :cond_256
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    goto :goto_25f

    :goto_25e
    throw v0

    :goto_25f
    goto :goto_25e
.end method


# virtual methods
.method public final close()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxx:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public final onBackPressed()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxx:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxt:Z

    const/4 v2, 0x3

    :try_start_14
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_e4

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzang;->zzcvf:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_2d

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxx:I

    :cond_2d
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbye:Z

    :cond_43
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzaq;->zzze:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxu:Z

    goto :goto_54

    :cond_52
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxu:Z

    :goto_54
    sget-object v3, Lcom/google/android/gms/internal/ads/zznk;->zzbbg:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7c

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxu:Z

    if-eqz v3, :cond_7c

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    iget v3, v3, Lcom/google/android/gms/ads/internal/zzaq;->zzzj:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7c

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzf;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzajx;->zzqo()Lcom/google/android/gms/internal/ads/zzanz;

    :cond_7c
    if-nez p1, :cond_a2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz p1, :cond_8f

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbye:Z

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzcc()V

    :cond_8f
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyu:I

    if-eq p1, v1, :cond_a2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbym:Lcom/google/android/gms/internal/ads/zzjd;

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbym:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjd;->onAdClicked()V

    :cond_a2
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyv:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzacr:Lcom/google/android/gms/internal/ads/zzang;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzang;->zzcw:Ljava/lang/String;

    invoke-direct {p1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setId(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyu:I

    if-eq p1, v1, :cond_e0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_d1

    if-ne p1, v2, :cond_c9

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzt(Z)V

    return-void

    :cond_c9
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d1
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyo:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzt(Z)V

    return-void

    :cond_e0
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzt(Z)V

    return-void

    :cond_e4
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ec
    .catch Lcom/google/android/gms/ads/internal/overlay/zzg; {:try_start_14 .. :try_end_ec} :catch_ec

    :catch_ec
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzg;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxx:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznl()V

    return-void
.end method

.method public final onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznh()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->onPause()V

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbem:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_3a

    :cond_32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakq;->zzi(Lcom/google/android/gms/internal/ads/zzaqw;)Z

    :cond_3a
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznl()V

    return-void
.end method

.method public final onRestart()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->onResume()V

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbem:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakq;->zzj(Lcom/google/android/gms/internal/ads/zzaqw;)Z

    return-void

    :cond_32
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxt:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbem:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakq;->zzj(Lcom/google/android/gms/internal/ads/zzaqw;)Z

    return-void

    :cond_25
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public final onStop()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbem:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_2a

    :cond_22
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakq;->zzi(Lcom/google/android/gms/internal/ads/zzaqw;)Z

    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznl()V

    return-void
.end method

.method public final setRequestedOrientation(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbfs:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbft:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbfu:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zznk;->zzbfv:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_5d

    return-void

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxr:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxr:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxr:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyb:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxs:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxq:Z

    return-void
.end method

.method public final zza(ZZ)V
    .registers 9

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzays:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzaq;->zzzl:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    sget-object v3, Lcom/google/android/gms/internal/ads/zznk;->zzayt:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_4b

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyw:Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzaq;->zzzm:Z

    if-eqz v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :goto_4c
    if-eqz p1, :cond_62

    if-eqz p2, :cond_62

    if-eqz v0, :cond_62

    if-nez v3, :cond_62

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaal;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzaal;->zzbw(Ljava/lang/String;)V

    :cond_62
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxp:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz p1, :cond_71

    if-nez v3, :cond_6e

    if-eqz p2, :cond_6d

    if-nez v0, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    :cond_6e
    :goto_6e
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzu(Z)V

    :cond_71
    return-void
.end method

.method public final zzax()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyb:Z

    return-void
.end method

.method public final zznh()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxq:Z

    if-eqz v1, :cond_d

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxr:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyb:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxr:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxr:Landroid/widget/FrameLayout;

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxs:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxs:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxq:Z

    return-void
.end method

.method public final zzni()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxx:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zznj()Z
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxx:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzul()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1a
    return v0
.end method

.method public final zznk()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxp:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzs(Z)V

    return-void
.end method

.method final zznm()V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbyd:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzrt:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzbm(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzai(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzi;->index:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzbyi:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxo:Lcom/google/android/gms/ads/internal/overlay/zzi;

    goto :goto_52

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzbm(Landroid/content/Context;)V

    :cond_52
    :goto_52
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_63

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxn:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyn:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzcb()V

    :cond_63
    return-void
.end method

.method public final zznn()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxw:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxw:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzno()V

    :cond_a
    return-void
.end method

.method public final zznp()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxv:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzbyh:Z

    return-void
.end method

.method public final zznq()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxy:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbya:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxz:Ljava/lang/Runnable;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxz:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakk;->zzcrm:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxz:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zznk;->zzbel:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    const/16 v0, 0x400

    const/16 v1, 0x800

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void

    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_52
    return-void
.end method
