.class public final Lcom/google/android/gms/internal/ads/zzci;
.super Ljava/lang/Object;


# static fields
.field private static final zzrc:[Ljava/lang/String;


# instance fields
.field private zzqy:Ljava/lang/String;

.field private zzqz:Ljava/lang/String;

.field private zzra:Ljava/lang/String;

.field private zzrb:[Ljava/lang/String;

.field private zzrd:Lcom/google/android/gms/internal/ads/zzce;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "/aclk"

    const-string v1, "/pcs/click"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzci;->zzrc:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzce;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "googleads.g.doubleclick.net"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzci;->zzqy:Ljava/lang/String;

    const-string v0, "/pagead/ads"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzci;->zzqz:Ljava/lang/String;

    const-string v0, "ad.doubleclick.net"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzci;->zzra:Ljava/lang/String;

    const-string v0, ".doubleclick.net"

    const-string v1, ".googleadservices.com"

    const-string v2, ".googlesyndication.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzci;->zzrb:[Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzci;->zzrd:Lcom/google/android/gms/internal/ads/zzce;

    return-void
.end method

.method private final zza(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcj;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzci;->zza(Landroid/net/Uri;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_4} :catch_fb

    const-string v1, "ms"

    if-eqz v0, :cond_1d

    :try_start_8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dc_ms="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_23

    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcj;

    const-string p2, "Parameter already exists: dc_ms"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcj;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f3

    :goto_23
    if-eqz p4, :cond_2c

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzci;->zzrd:Lcom/google/android/gms/internal/ads/zzce;

    invoke-interface {p4, p2, p3, p5, p6}, Lcom/google/android/gms/internal/ads/zzce;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_32

    :cond_2c
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzci;->zzrd:Lcom/google/android/gms/internal/ads/zzce;

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzce;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2
    :try_end_32
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_32} :catch_fb

    :goto_32
    const-string p3, "="

    const/4 p4, 0x0

    const/4 p5, -0x1

    if-eqz v0, :cond_a9

    :try_start_38
    const-string p6, "dc_ms"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";adurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_44
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_38 .. :try_end_44} :catch_fb

    const-string v2, ";"

    if-eq v1, p5, :cond_6f

    :try_start_48
    new-instance p1, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_6f
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v0, p4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p5, p1

    invoke-virtual {v0, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_a9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "&adurl"

    invoke-virtual {p6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p5, :cond_bb

    const-string v0, "?adurl"

    invoke-virtual {p6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_bb
    if-eq v0, p5, :cond_e6

    new-instance p1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p6, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_e6
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_f3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcj;

    const-string p2, "Query parameter already exists: ms"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcj;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_fb
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_48 .. :try_end_fb} :catch_fb

    :catch_fb
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcj;

    const-string p2, "Provided Uri is not in a valid state"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcj;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zza(Landroid/net/Uri;)Z
    .registers 3

    if-eqz p1, :cond_f

    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzci;->zzra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    return p1

    :catch_d
    const/4 p1, 0x0

    return p1

    :cond_f
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final zza(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcj;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzci;->zza(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcj;
        }
    .end annotation

    :try_start_0
    const-string v0, "ai"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzci;->zza(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcj;

    const-string p2, "Provided Uri is not in a valid state"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcj;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzci;->zzrd:Lcom/google/android/gms/internal/ads/zzce;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzce;->zza(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final zzaa()Lcom/google/android/gms/internal/ads/zzce;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzci;->zzrd:Lcom/google/android/gms/internal/ads/zzce;

    return-object v0
.end method

.method public final zzb(Landroid/net/Uri;)Z
    .registers 7

    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzci;->zzrb:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_13} :catch_1a

    if-eqz v4, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catch_1a
    :cond_1a
    return v0

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :goto_1d
    throw p1

    :goto_1e
    goto :goto_1d
.end method

.method public final zzc(Landroid/net/Uri;)Z
    .registers 8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzci;->zzb(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/internal/ads/zzci;->zzrc:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1e

    aget-object v4, v0, v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1e
    return v1
.end method
