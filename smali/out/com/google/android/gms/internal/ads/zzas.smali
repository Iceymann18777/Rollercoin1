.class public final Lcom/google/android/gms/internal/ads/zzas;
.super Lcom/google/android/gms/internal/ads/zzai;


# instance fields
.field private final zzci:Lcom/google/android/gms/internal/ads/zzat;

.field private final zzcj:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzas;-><init>(Lcom/google/android/gms/internal/ads/zzat;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzat;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzas;-><init>(Lcom/google/android/gms/internal/ads/zzat;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzat;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzai;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzas;->zzci:Lcom/google/android/gms/internal/ads/zzat;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzas;->zzcj:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static zza(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method private static zza(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzl;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_48
    return-object v0
.end method

.method private static zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzr;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzr;->zzg()[B

    move-result-object p1

    if-eqz p1, :cond_33

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "application/x-www-form-urlencoded; charset="

    const-string v1, "UTF-8"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1f
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_33
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzr;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzaq;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzaq;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzr;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzr;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzas;->zzci:Lcom/google/android/gms/internal/ads/zzat;

    if-eqz p2, :cond_3b

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3a

    new-instance p1, Ljava/io/IOException;

    const-string p2, "URL blocked by rewriter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_36

    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_36
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    move-object v0, p2

    :cond_3b
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzr;->zzi()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v4, "https"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_70
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :cond_86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzr;->getMethod()I

    move-result p2

    packed-switch p2, :pswitch_data_102

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown method type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_95
    const-string p2, "PATCH"

    goto :goto_a9

    :pswitch_98
    const-string p2, "TRACE"

    goto :goto_b2

    :pswitch_9b
    const-string p2, "OPTIONS"

    goto :goto_b2

    :pswitch_9e
    const-string p2, "HEAD"

    goto :goto_b2

    :pswitch_a1
    const-string p2, "DELETE"

    goto :goto_b2

    :pswitch_a4
    const-string p2, "PUT"

    goto :goto_a9

    :pswitch_a7
    const-string p2, "POST"

    :goto_a9
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzr;)V

    goto :goto_b5

    :pswitch_b0
    const-string p2, "GET"

    :goto_b2
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_b5
    :pswitch_b5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_f8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzr;->getMethod()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d4

    const/16 p1, 0x64

    if-gt p1, p2, :cond_cb

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_d4

    :cond_cb
    const/16 p1, 0xcc

    if-eq p2, p1, :cond_d4

    const/16 p1, 0x130

    if-eq p2, p1, :cond_d4

    const/4 v2, 0x1

    :cond_d4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaq;

    if-nez v2, :cond_e4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaq;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_e4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaq;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p1

    :cond_f8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_101

    :goto_100
    throw p1

    :goto_101
    goto :goto_100

    :pswitch_data_102
    .packed-switch -0x1
        :pswitch_b5
        :pswitch_b0
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
    .end packed-switch
.end method
