.class public Lcom/appsgeyser/multiTabApp/utils/UrlConverter;
.super Ljava/lang/Object;
.source "UrlConverter.java"


# instance fields
.field private _parentWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->_parentWebView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public toAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "/"

    const-string v1, "://"

    .line 55
    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 57
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->_parentWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    .line 64
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/[^/]+$"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5c
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_5c} :catch_5d

    :cond_5c
    :goto_5c
    return-object p1

    :catch_5d
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public toFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 6

    .line 38
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    :try_start_c
    const-string v0, "file:///"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 44
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->_parentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "file:///android_asset/"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2a} :catch_2b

    return-object p1

    :catch_2b
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2f
    return-object v1
.end method

.method public toStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    .line 19
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    :try_start_c
    const-string v0, "file:///"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 26
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/utils/UrlConverter;->_parentWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "file:///android_asset/"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_34

    .line 28
    :cond_2b
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_34} :catch_36

    :goto_34
    move-object v1, p1

    goto :goto_3a

    :catch_36
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3a
    return-object v1
.end method
