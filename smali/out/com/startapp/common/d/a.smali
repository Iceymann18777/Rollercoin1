.class public Lcom/startapp/common/d/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Ljava/net/CookieManager;


# direct methods
.method public static a()Ljava/net/CookieManager;
    .registers 1

    .line 81
    sget-object v0, Lcom/startapp/common/d/a;->a:Ljava/net/CookieManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 26
    new-instance v0, Ljava/net/CookieManager;

    new-instance v1, Lcom/startapp/common/d/b;

    invoke-direct {v1, p0}, Lcom/startapp/common/d/b;-><init>(Landroid/content/Context;)V

    sget-object p0, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, p0}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    sput-object v0, Lcom/startapp/common/d/a;->a:Ljava/net/CookieManager;

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 4

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3d

    .line 52
    invoke-static {}, Lcom/startapp/common/d/a;->a()Ljava/net/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 54
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3d

    const-string v0, "Cookie"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const-string v1, "="

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_9

    .line 39
    invoke-static {p0}, Lcom/startapp/common/d/a;->a(Landroid/content/Context;)V

    :cond_9
    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 4

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_17

    .line 72
    invoke-static {}, Lcom/startapp/common/d/a;->a()Ljava/net/CookieManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 74
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_17
    return-void
.end method
