.class public final Lcom/google/android/gms/ads/internal/gmsg/zzad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/zzarr;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzars;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzarw;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzarz;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzasb;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzapt:Lcom/google/android/gms/internal/ads/zzjd;

.field private final zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

.field private final zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

.field private final zzbmw:Lcom/google/android/gms/ads/internal/zzx;

.field private final zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

.field private final zzbna:Lcom/google/android/gms/internal/ads/zzci;

.field private final zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

.field private final zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

.field private final zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

.field private final zzzw:Lcom/google/android/gms/internal/ads/zzang;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/ads/internal/overlay/zzt;Lcom/google/android/gms/internal/ads/zzjd;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/gmsg/zzd;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/zzx;Lcom/google/android/gms/internal/ads/zzaab;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbnd:Lcom/google/android/gms/internal/ads/zzaqw;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzzw:Lcom/google/android/gms/internal/ads/zzang;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbna:Lcom/google/android/gms/internal/ads/zzci;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbnb:Lcom/google/android/gms/ads/internal/overlay/zzt;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbll:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzblm:Lcom/google/android/gms/ads/internal/gmsg/zzd;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbnc:Lcom/google/android/gms/ads/internal/overlay/zzn;

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzci;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_3

    return-object p2

    :cond_3
    :try_start_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzci;->zzc(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, v0, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzci;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Lcom/google/android/gms/internal/ads/zzcj; {:try_start_3 .. :try_end_15} :catch_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object p1

    const-string p3, "OpenGmsgHandler.maybeAddClickSignalsToUrl"

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_20
    return-object p2
.end method

.method private static zzg(Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "custom_close"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3d

    const-string v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzrm()I

    move-result p0

    return p0

    :cond_1b
    const-string v0, "l"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzrl()I

    move-result p0

    return p0

    :cond_2c
    const-string v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzem()Lcom/google/android/gms/internal/ads/zzakq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzakq;->zzrn()I

    move-result p0

    return p0

    :cond_3d
    const/4 p0, -0x1

    return p0
.end method

.method private final zzl(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbmx:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaab;->zzm(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 13

    const-string v0, "OpenGmsgHandler.onGmsg"

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarr;

    const-string v1, "u"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzarr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_24

    const-string p1, "Action missing from an open GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzx;->zzcy()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzbmw:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/zzx;->zzs(Ljava/lang/String;)V

    return-void

    :cond_34
    const-string v3, "expand"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5d

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzars;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzars;->zzuj()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string p1, "Cannot expand WebView that is already expanded."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_4c
    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzl(Z)V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarw;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzg(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzh(Ljava/util/Map;)I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzarw;->zza(ZI)V

    return-void

    :cond_5d
    const-string v3, "webapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzl(Z)V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarw;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzg(Ljava/util/Map;)Z

    move-result v0

    if-eqz v1, :cond_78

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzh(Ljava/util/Map;)I

    move-result p2

    invoke-interface {p1, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzarw;->zza(ZILjava/lang/String;)V

    return-void

    :cond_78
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzh(Ljava/util/Map;)I

    move-result v1

    const-string v2, "html"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "baseurl"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzarw;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_90
    const-string v3, "app"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_ea

    const-string v2, "system_browser"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ea

    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzl(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzarr;->getContext()Landroid/content/Context;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const-string p1, "Destination url cannot be empty."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_bb
    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/zzae;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzarr;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzarz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzui()Lcom/google/android/gms/internal/ads/zzci;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzasb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzasb;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzae;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzci;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/gmsg/zzae;->zzi(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p2

    :try_start_d6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzarw;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzarw;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    :try_end_e0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d6 .. :try_end_e0} :catch_e1

    return-void

    :catch_e1
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_ea
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zzl(Z)V

    const-string v2, "intent_url"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11b

    :try_start_fc
    invoke-static {v2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_100
    .catch Ljava/net/URISyntaxException; {:try_start_fc .. :try_end_100} :catch_101

    goto :goto_11b

    :catch_101
    move-exception v4

    const-string v5, "Error parsing the url: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_113

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_118

    :cond_113
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_118
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11b
    :goto_11b
    if-eqz v3, :cond_182

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_182

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17f

    :try_start_131
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzarr;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzarz;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzarz;->zzui()Lcom/google/android/gms/internal/ads/zzci;

    move-result-object v6

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzasb;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzasb;->getView()Landroid/view/View;

    move-result-object v7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzarr;->zzto()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v5, v6, v4, v7, v8}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzci;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_14b} :catch_14c

    goto :goto_159

    :catch_14c
    move-exception v5

    const-string v6, "Error occurred while adding signals."

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_159
    :try_start_159
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15d} :catch_15e

    goto :goto_17f

    :catch_15e
    move-exception v5

    const-string v6, "Error parsing the uri: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_170

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_175

    :cond_170
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_175
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzeo()Lcom/google/android/gms/internal/ads/zzajm;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzajm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_17f
    :goto_17f
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_182
    if-eqz v3, :cond_18f

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarw;

    new-instance p2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {p2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzarw;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void

    :cond_18f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1af

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzarr;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzarz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzui()Lcom/google/android/gms/internal/ads/zzci;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzasb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzasb;->getView()Landroid/view/View;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzarr;->zzto()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzci;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    :cond_1af
    move-object v4, v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarw;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v1, "i"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, "m"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v1, "p"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v1, "c"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    const-string v1, "f"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    const-string v1, "e"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzarw;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void
.end method
