.class public Lcom/startapp/android/publish/omsdk/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/omsdk/AdVerification;)Lcom/b/a/a/a/b/b;
    .registers 7

    .line 40
    invoke-static {p0}, Lcom/startapp/android/publish/omsdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    if-nez p1, :cond_14

    .line 45
    sget-object p1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    const-string v0, "OMSDK: Verification details can\'t be null!"

    const-string v2, ""

    invoke-static {p0, p1, v0, v2, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 50
    :cond_14
    invoke-static {}, Lcom/startapp/android/publish/omsdk/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/startapp/android/publish/omsdk/AdVerification;->getAdVerification()Ljava/util/List;

    move-result-object p1

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/omsdk/VerificationDetails;

    .line 55
    invoke-virtual {v2}, Lcom/startapp/android/publish/omsdk/VerificationDetails;->getVerificationScriptUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/startapp/android/publish/omsdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_40

    goto :goto_29

    .line 61
    :cond_40
    invoke-virtual {v2}, Lcom/startapp/android/publish/omsdk/VerificationDetails;->getVendorKey()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v2}, Lcom/startapp/android/publish/omsdk/VerificationDetails;->getVerificationParameters()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v4, v3, v2}, Lcom/b/a/a/a/b/h;->a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/b/a/a/a/b/h;

    move-result-object v2

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 67
    :cond_50
    invoke-static {}, Lcom/startapp/android/publish/omsdk/a;->b()Lcom/b/a/a/a/b/g;

    move-result-object p0

    invoke-static {}, Lcom/startapp/android/publish/omsdk/a;->a()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p0, v0, v1, p1}, Lcom/b/a/a/a/b/d;->a(Lcom/b/a/a/a/b/g;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/b/a/a/a/b/d;

    move-result-object p0

    const/4 p1, 0x1

    .line 69
    invoke-static {p0, p1}, Lcom/startapp/android/publish/omsdk/a;->a(Lcom/b/a/a/a/b/d;Z)Lcom/b/a/a/a/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/webkit/WebView;)Lcom/b/a/a/a/b/b;
    .registers 3

    .line 29
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/android/publish/omsdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_c
    invoke-static {}, Lcom/startapp/android/publish/omsdk/a;->b()Lcom/b/a/a/a/b/g;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/startapp/android/publish/omsdk/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, p0, v1}, Lcom/b/a/a/a/b/d;->a(Lcom/b/a/a/a/b/g;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/b/a/a/a/b/d;

    move-result-object p0

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, v0}, Lcom/startapp/android/publish/omsdk/a;->a(Lcom/b/a/a/a/b/d;Z)Lcom/b/a/a/a/b/b;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/b/a/a/a/b/d;Z)Lcom/b/a/a/a/b/b;
    .registers 4

    .line 73
    sget-object v0, Lcom/b/a/a/a/b/f;->a:Lcom/b/a/a/a/b/f;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/b/a/a/a/b/f;->a:Lcom/b/a/a/a/b/f;

    goto :goto_9

    :cond_7
    sget-object p1, Lcom/b/a/a/a/b/f;->c:Lcom/b/a/a/a/b/f;

    :goto_9
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/b/a/a/a/b/c;->a(Lcom/b/a/a/a/b/f;Lcom/b/a/a/a/b/f;Z)Lcom/b/a/a/a/b/c;

    move-result-object p1

    .line 76
    invoke-static {p1, p0}, Lcom/b/a/a/a/b/b;->a(Lcom/b/a/a/a/b/c;Lcom/b/a/a/a/b/d;)Lcom/b/a/a/a/b/b;

    move-result-object p0

    return-object p0
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;
    .registers 6

    .line 91
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 93
    sget-object v1, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMSDK: can\'t create URL - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 93
    invoke-static {p0, v1, p1, v0, v2}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "OMSDK: Failed to activate sdk."

    const-string v1, ""

    const/4 v2, 0x0

    .line 101
    :try_start_5
    invoke-static {}, Lcom/b/a/a/a/a;->b()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {}, Lcom/b/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 102
    sget-object v3, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-static {p0, v3, v0, v1, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1d

    return v2

    :cond_1b
    const/4 p0, 0x1

    return p0

    :catch_1d
    move-exception v3

    .line 107
    sget-object v4, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {p0, v4, v0, v3, v1}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static b()Lcom/b/a/a/a/b/g;
    .registers 2

    const-string v0, "StartApp"

    const-string v1, "3.10.1"

    .line 86
    invoke-static {v0, v1}, Lcom/b/a/a/a/b/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/a/a/b/g;

    move-result-object v0

    return-object v0
.end method
