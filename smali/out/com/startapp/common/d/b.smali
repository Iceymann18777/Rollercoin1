.class public Lcom/startapp/common/d/b;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/net/CookieStore;


# instance fields
.field private final a:Ljava/net/CookieStore;

.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.startapp.android.publish.CookiePrefsFile"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/common/d/b;->b:Landroid/content/SharedPreferences;

    .line 38
    new-instance p1, Ljava/net/CookieManager;

    invoke-direct {p1}, Ljava/net/CookieManager;-><init>()V

    invoke-virtual {p1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    .line 41
    iget-object p1, p0, Lcom/startapp/common/d/b;->b:Landroid/content/SharedPreferences;

    const-string v0, "names"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_71

    const-string v0, ";"

    .line 43
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 44
    array-length v0, p1

    :goto_2d
    if-ge v1, v0, :cond_71

    aget-object v3, p1, v1

    .line 45
    iget-object v4, p0, Lcom/startapp/common/d/b;->b:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cookie_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 47
    const-class v4, Ljava/net/HttpCookie;

    invoke-static {v3, v4}, Lcom/startapp/common/c/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/HttpCookie;

    if-eqz v3, :cond_6e

    .line 50
    invoke-virtual {v3}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 51
    invoke-direct {p0, v3}, Lcom/startapp/common/d/b;->a(Ljava/net/HttpCookie;)V

    .line 52
    invoke-direct {p0}, Lcom/startapp/common/d/b;->b()V

    goto :goto_6e

    .line 54
    :cond_61
    iget-object v4, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    invoke-virtual {v3}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    :cond_6e
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_71
    return-void
.end method

.method private a()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/startapp/common/d/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Ljava/net/HttpCookie;)V
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/startapp/common/d/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/startapp/common/d/b;->b(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Ljava/net/HttpCookie;Ljava/lang/String;)V
    .registers 6

    .line 109
    iget-object v0, p0, Lcom/startapp/common/d/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/startapp/common/c/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(Ljava/net/HttpCookie;)Ljava/lang/String;
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/startapp/common/d/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    invoke-direct {p0}, Lcom/startapp/common/d/b;->c()Ljava/util/Set;

    move-result-object v1

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "names"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private c()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    invoke-interface {v1}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .line 140
    invoke-direct {p0, v2}, Lcom/startapp/common/d/b;->b(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    return-object v0
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .registers 5

    .line 64
    invoke-direct {p0, p2}, Lcom/startapp/common/d/b;->b(Ljava/net/HttpCookie;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    invoke-interface {v1, p1, p2}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 67
    invoke-direct {p0, p2, v0}, Lcom/startapp/common/d/b;->a(Ljava/net/HttpCookie;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/startapp/common/d/b;->b()V

    return-void
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCookies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURIs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0}, Ljava/net/CookieStore;->getURIs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0, p1, p2}, Ljava/net/CookieStore;->remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 89
    invoke-direct {p0, p2}, Lcom/startapp/common/d/b;->a(Ljava/net/HttpCookie;)V

    .line 90
    invoke-direct {p0}, Lcom/startapp/common/d/b;->b()V

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll()Z
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/startapp/common/d/b;->a:Ljava/net/CookieStore;

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 100
    invoke-direct {p0}, Lcom/startapp/common/d/b;->a()V

    .line 101
    invoke-direct {p0}, Lcom/startapp/common/d/b;->b()V

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
