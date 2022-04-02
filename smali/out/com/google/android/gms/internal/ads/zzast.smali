.class final Lcom/google/android/gms/internal/ads/zzast;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdfc:Lcom/google/android/gms/internal/ads/zzasx;

.field private final zzdfd:Lcom/google/android/gms/internal/ads/zzatb;

.field private final zzdfe:Lcom/google/android/gms/internal/ads/zzasz;

.field private final zzdff:Lcom/google/android/gms/internal/ads/zzata;

.field private final zzdfg:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasx;Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/zzasz;Lcom/google/android/gms/internal/ads/zzata;)V
    .registers 6

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfg:Lcom/google/android/gms/internal/ads/zzatc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfc:Lcom/google/android/gms/internal/ads/zzasx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfd:Lcom/google/android/gms/internal/ads/zzatb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfe:Lcom/google/android/gms/internal/ads/zzasz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdff:Lcom/google/android/gms/internal/ads/zzata;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzasu;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfc:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzasx;->zza(Lcom/google/android/gms/internal/ads/zzasu;)Z

    move-result p1

    return p1
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfd:Lcom/google/android/gms/internal/ads/zzatb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzatb;->zzd(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string p1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_1a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakb;->v(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfe:Lcom/google/android/gms/internal/ads/zzasz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzasz;->zzb(Lcom/google/android/gms/internal/ads/zzasu;)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdff:Lcom/google/android/gms/internal/ads/zzata;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzata;->zzc(Lcom/google/android/gms/internal/ads/zzasu;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfg:Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzatc;->zze(ILjava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzast;->zzdfg:Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzatc;->zzb(Landroid/net/http/SslError;)V

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 3

    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_13

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzast;->zzg(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzast;->zzg(Lcom/google/android/gms/internal/ads/zzasu;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_14

    const/16 p2, 0xde

    if-eq p1, p2, :cond_14

    packed-switch p1, :pswitch_data_16

    packed-switch p1, :pswitch_data_28

    const/4 p1, 0x0

    return p1

    :cond_14
    :pswitch_14
    const/4 p1, 0x1

    return p1

    :pswitch_data_16
    .packed-switch 0x55
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x7e
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_13

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzast;->zzf(Lcom/google/android/gms/internal/ads/zzasu;)Z

    move-result p1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasu;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzast;->zzf(Lcom/google/android/gms/internal/ads/zzasu;)Z

    move-result p1

    return p1
.end method
