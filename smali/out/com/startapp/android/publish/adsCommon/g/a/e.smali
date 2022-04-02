.class public Lcom/startapp/android/publish/adsCommon/g/a/e;
.super Landroid/webkit/WebViewClient;
.source "StartAppSDK"


# instance fields
.field private a:Lcom/startapp/android/publish/adsCommon/g/a/b;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/adsCommon/g/a/b;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/g/a/e;->b:Z

    .line 35
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/g/a/e;->a:Lcom/startapp/android/publish/adsCommon/g/a/b;

    return-void
.end method

.method private a()Landroid/webkit/WebResourceResponse;
    .registers 5

    .line 85
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/g/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/javascript"

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, "mraid://"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    .line 75
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "mraid.js"

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    :catch_15
    move-exception p1

    const/4 v0, 0x6

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matchesInjectionUrl Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MraidWebViewClient"

    invoke-static {v1, v0, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .registers 13

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeMraidMethod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidWebViewClient"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "close"

    const-string v3, "resize"

    .line 99
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v3, "createCalendarEvent"

    const-string v4, "expand"

    const-string v5, "open"

    const-string v6, "playVideo"

    const-string v7, "storePicture"

    const-string v8, "useCustomClose"

    .line 104
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "setOrientationProperties"

    const-string v5, "setResizeProperties"

    .line 113
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 119
    :try_start_38
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/g/d/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const-string v7, "command"

    .line 120
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 122
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_60

    .line 123
    const-class v0, Lcom/startapp/android/publish/adsCommon/g/a/b;

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/g/a/e;->a:Lcom/startapp/android/publish/adsCommon/g/a/b;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d1

    .line 125
    :cond_60
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 126
    const-class v0, Lcom/startapp/android/publish/adsCommon/g/a/b;

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, -0x1

    .line 128
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_7b} :catch_e6

    const v9, -0x2bba19a0

    const-string v10, "useCustomClose"

    if-eq v4, v9, :cond_90

    const v9, 0x6037d900

    if-eq v4, v9, :cond_88

    goto :goto_99

    :cond_88
    :try_start_88
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    const/4 v3, 0x1

    goto :goto_99

    :cond_90
    const-string v4, "createCalendarEvent"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    const/4 v3, 0x0

    :cond_99
    :goto_99
    if-eqz v3, :cond_a0

    if-eq v3, v8, :cond_a2

    const-string v10, "url"

    goto :goto_a2

    :cond_a0
    const-string v10, "eventJSON"

    .line 139
    :cond_a2
    :goto_a2
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 140
    iget-object v4, p0, Lcom/startapp/android/publish/adsCommon/g/a/e;->a:Lcom/startapp/android/publish/adsCommon/g/a/b;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v5

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d1

    .line 141
    :cond_b2
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 142
    const-class v0, Lcom/startapp/android/publish/adsCommon/g/a/b;

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    aput-object v4, v3, v5

    invoke-virtual {v0, v7, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 143
    iget-object v3, p0, Lcom/startapp/android/publish/adsCommon/g/a/e;->a:Lcom/startapp/android/publish/adsCommon/g/a/b;

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_d1
    :goto_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "successfully invoked "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_e5} :catch_e6

    return v8

    :catch_e6
    move-exception v0

    const/4 v2, 0x6

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to invoke "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return v5
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidWebViewClient"

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 6

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldInterceptRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidWebViewClient"

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/g/a/e;->b:Z

    if-nez v0, :cond_29

    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/g/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/startapp/android/publish/adsCommon/g/a/e;->b:Z

    .line 60
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/g/a/e;->a()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 62
    :cond_29
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldOverrideUrlLoading: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MraidWebViewClient"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/g/a/e;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 46
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/adsCommon/g/a/e;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 51
    :cond_22
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/g/a/e;->a:Lcom/startapp/android/publish/adsCommon/g/a/b;

    invoke-interface {p1, p2}, Lcom/startapp/android/publish/adsCommon/g/a/b;->open(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
