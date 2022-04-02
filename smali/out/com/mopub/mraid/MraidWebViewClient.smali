.class public Lcom/mopub/mraid/MraidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MraidWebViewClient.java"


# static fields
.field private static final MRAID_INJECTION_JAVASCRIPT:Ljava/lang/String;

.field private static final MRAID_JS:Ljava/lang/String; = "mraid.js"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mopub/mobileads/resource/MraidJavascript;->JAVASCRIPT_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mraid/MraidWebViewClient;->MRAID_INJECTION_JAVASCRIPT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private createMraidInjectionResponse()Landroid/webkit/WebResourceResponse;
    .registers 5

    .line 47
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/mopub/mraid/MraidWebViewClient;->MRAID_INJECTION_JAVASCRIPT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 48
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/javascript"

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method matchesInjectionUrl(Ljava/lang/String;)Z
    .registers 3

    .line 42
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mraid.js"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 4

    .line 33
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidWebViewClient;->matchesInjectionUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    invoke-direct {p0}, Lcom/mopub/mraid/MraidWebViewClient;->createMraidInjectionResponse()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 36
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
