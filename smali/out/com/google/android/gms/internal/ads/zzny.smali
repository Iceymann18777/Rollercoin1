.class public final Lcom/google/android/gms/internal/ads/zzny;
.super Lcom/google/android/gms/internal/ads/zzob;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzbgs:Lcom/google/android/gms/ads/internal/zzaf;

.field private final zzbgt:Ljava/lang/String;

.field private final zzbgu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzaf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzob;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbgs:Lcom/google/android/gms/ads/internal/zzaf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbgt:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbgu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbgu:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbgs:Lcom/google/android/gms/ads/internal/zzaf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzaf;->zzcn()V

    return-void
.end method

.method public final recordImpression()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbgs:Lcom/google/android/gms/ads/internal/zzaf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzaf;->zzco()V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbgs:Lcom/google/android/gms/ads/internal/zzaf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zzaf;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final zzjn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbgt:Ljava/lang/String;

    return-object v0
.end method
