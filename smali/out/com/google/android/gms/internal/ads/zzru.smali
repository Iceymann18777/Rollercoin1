.class public final Lcom/google/android/gms/internal/ads/zzru;
.super Lcom/google/android/gms/ads/formats/UnifiedNativeAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

.field private final zzbkx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbky:Lcom/google/android/gms/internal/ads/zzpz;

.field private final zzbkz:Lcom/google/android/gms/ads/VideoController;

.field private final zzbla:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzrr;)V
    .registers 7

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkx:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkz:Lcom/google/android/gms/ads/VideoController;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    const/4 v1, 0x0

    :try_start_16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzrr;->getImages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_57

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_45

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_45

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzpw;

    if-eqz v4, :cond_3f

    check-cast v3, Lcom/google/android/gms/internal/ads/zzpw;

    goto :goto_46

    :cond_3f
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzpy;-><init>(Landroid/os/IBinder;)V

    goto :goto_46

    :cond_45
    move-object v3, v1

    :goto_46
    if-eqz v3, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkx:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzpz;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzpz;-><init>(Lcom/google/android/gms/internal/ads/zzpw;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_52} :catch_53

    goto :goto_20

    :catch_53
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :try_start_57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzrr;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object p1

    if-eqz p1, :cond_69

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpz;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzpz;-><init>(Lcom/google/android/gms/internal/ads/zzpw;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_6a

    :catch_65
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_69
    move-object v2, v1

    :goto_6a
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbky:Lcom/google/android/gms/internal/ads/zzpz;

    :try_start_6c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzrr;->zzkf()Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p1

    if-eqz p1, :cond_85

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzrr;->zzkf()Lcom/google/android/gms/internal/ads/zzps;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Lcom/google/android/gms/internal/ads/zzps;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_7f} :catch_81

    move-object v1, p1

    goto :goto_85

    :catch_81
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_85
    :goto_85
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbla:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-void
.end method

.method private final zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->cancelUnconfirmedClick()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, "Failed to cancelUnconfirmedClick"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbla:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getAdvertiser()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getCallToAction()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_9

    if-eqz v0, :cond_f

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getHeadline()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbky:Lcom/google/android/gms/internal/ads/zzpz;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkx:Ljava/util/List;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getPrice()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzrr;->getStarRating()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_e

    return-object v0

    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getStore()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkz:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzrr;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzlo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkz:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzrr;->performClick(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzrr;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzrr;->reportTouchEvent(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setUnconfirmedClickListener(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzse;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzse;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzrr;->zza(Lcom/google/android/gms/internal/ads/zzro;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "Failed to setUnconfirmedClickListener"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final synthetic zzbe()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzru;->zzka()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzbh()Ljava/lang/Object;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzru;->zzbkw:Lcom/google/android/gms/internal/ads/zzrr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrr;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method
