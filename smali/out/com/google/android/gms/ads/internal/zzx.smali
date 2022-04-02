.class public final Lcom/google/android/gms/ads/internal/zzx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzxc:Z

.field private zzxd:Lcom/google/android/gms/internal/ads/zzait;

.field private zzxe:Lcom/google/android/gms/internal/ads/zzael;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzait;Lcom/google/android/gms/internal/ads/zzael;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxe:Lcom/google/android/gms/internal/ads/zzael;

    if-nez p3, :cond_12

    new-instance p1, Lcom/google/android/gms/internal/ads/zzael;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzael;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxe:Lcom/google/android/gms/internal/ads/zzael;

    :cond_12
    return-void
.end method

.method private final zzcx()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzait;->zzpg()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzcni:Z

    if-nez v0, :cond_12

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxe:Lcom/google/android/gms/internal/ads/zzael;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzael;->zzcfr:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final recordClick()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxc:Z

    return-void
.end method

.method public final zzcy()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzx;->zzcx()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxc:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public final zzs(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzx;->zzcx()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, ""

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxd:Lcom/google/android/gms/internal/ads/zzait;

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzait;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxe:Lcom/google/android/gms/internal/ads/zzael;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzael;->zzcfr:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxe:Lcom/google/android/gms/internal/ads/zzael;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzael;->zzcfs:Ljava/util/List;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzx;->zzxe:Lcom/google/android/gms/internal/ads/zzael;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzael;->zzcfs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{NAVIGATION_URL}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzx;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzakk;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_50
    return-void
.end method
