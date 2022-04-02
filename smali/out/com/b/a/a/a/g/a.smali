.class public abstract Lcom/b/a/a/a/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/g/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/b/a/a/a/f/b;

.field private b:Lcom/b/a/a/a/b/a;

.field private c:Lcom/b/a/a/a/b/a/a;

.field private d:Lcom/b/a/a/a/g/a$a;

.field private e:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->i()V

    new-instance v0, Lcom/b/a/a/a/f/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/a/a/f/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/b/a/a/a/g/a;->a:Lcom/b/a/a/a/f/b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(F)V
    .registers 4

    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/b/a/a/a/c/d;->a(Landroid/webkit/WebView;F)V

    return-void
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 3

    new-instance v0, Lcom/b/a/a/a/f/b;

    invoke-direct {v0, p1}, Lcom/b/a/a/a/f/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/b/a/a/a/g/a;->a:Lcom/b/a/a/a/f/b;

    return-void
.end method

.method public a(Lcom/b/a/a/a/b/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/g/a;->c:Lcom/b/a/a/a/b/a/a;

    return-void
.end method

.method public a(Lcom/b/a/a/a/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/g/a;->b:Lcom/b/a/a/a/b/a;

    return-void
.end method

.method public a(Lcom/b/a/a/a/b/c;)V
    .registers 4

    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/a/a/b/c;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/b/a/a/a/c/d;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/b/a/a/a/b/i;Lcom/b/a/a/a/b/d;)V
    .registers 8

    invoke-virtual {p1}, Lcom/b/a/a/a/b/i;->g()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "environment"

    const-string v2, "app"

    invoke-static {v0, v1, v2}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/b/a/a/a/b/d;->f()Lcom/b/a/a/a/b/e;

    move-result-object v1

    const-string v3, "adSessionType"

    invoke-static {v0, v3, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/b/a/a/a/e/a;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "deviceInfo"

    invoke-static {v0, v3, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "clid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "vlid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "supports"

    invoke-static {v0, v3, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/b/a/a/a/b/d;->a()Lcom/b/a/a/a/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/a/a/b/g;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerName"

    invoke-static {v1, v4, v3}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/b/a/a/a/b/d;->a()Lcom/b/a/a/a/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/a/a/b/g;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerVersion"

    invoke-static {v1, v4, v3}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "omidNativeInfo"

    invoke-static {v0, v3, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "libraryVersion"

    const-string v4, "1.2.0-Startapp"

    invoke-static {v1, v3, v4}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/b/a/a/a/c/c;->a()Lcom/b/a/a/a/c/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/a/a/c/c;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appId"

    invoke-static {v1, v4, v3}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/b/a/a/a/b/d;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-virtual {p2}, Lcom/b/a/a/a/b/d;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customReferenceData"

    invoke-static {v0, v2, v1}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/b/a/a/a/b/d;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/a/b/h;

    invoke-virtual {v2}, Lcom/b/a/a/a/b/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/b/a/a/a/b/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/b/a/a/a/e/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9a

    :cond_b2
    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {p2, v2, p1, v0, v1}, Lcom/b/a/a/a/c/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/b/a/a/a/c/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .registers 7

    iget-wide v0, p0, Lcom/b/a/a/a/g/a;->e:D

    cmpl-double v2, p2, v0

    if-lez v2, :cond_15

    sget-object p2, Lcom/b/a/a/a/g/a$a;->b:Lcom/b/a/a/a/g/a$a;

    iput-object p2, p0, Lcom/b/a/a/a/g/a;->d:Lcom/b/a/a/a/g/a$a;

    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/b/a/a/a/c/d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/b/a/a/a/c/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_b

    const-string p1, "foregrounded"

    goto :goto_d

    :cond_b
    const-string p1, "backgrounded"

    :goto_d
    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/b/a/a/a/c/d;->d(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/g/a;->a:Lcom/b/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/b/a/a/a/f/b;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;D)V
    .registers 7

    iget-wide v0, p0, Lcom/b/a/a/a/g/a;->e:D

    cmpl-double v2, p2, v0

    if-lez v2, :cond_1b

    iget-object p2, p0, Lcom/b/a/a/a/g/a;->d:Lcom/b/a/a/a/g/a$a;

    sget-object p3, Lcom/b/a/a/a/g/a$a;->c:Lcom/b/a/a/a/g/a$a;

    if-eq p2, p3, :cond_1b

    sget-object p2, Lcom/b/a/a/a/g/a$a;->c:Lcom/b/a/a/a/g/a$a;

    iput-object p2, p0, Lcom/b/a/a/a/g/a;->d:Lcom/b/a/a/a/g/a$a;

    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/b/a/a/a/c/d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public c()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/g/a;->a:Lcom/b/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/b/a/a/a/f/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public d()Lcom/b/a/a/a/b/a;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/g/a;->b:Lcom/b/a/a/a/b/a;

    return-object v0
.end method

.method public e()Lcom/b/a/a/a/b/a/a;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/g/a;->c:Lcom/b/a/a/a/b/a/a;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/g/a;->a:Lcom/b/a/a/a/f/b;

    invoke-virtual {v0}, Lcom/b/a/a/a/f/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/c/d;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public h()V
    .registers 3

    invoke-static {}, Lcom/b/a/a/a/c/d;->a()Lcom/b/a/a/a/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/b/a/a/a/g/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/c/d;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public i()V
    .registers 3

    invoke-static {}, Lcom/b/a/a/a/e/d;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/a/g/a;->e:D

    sget-object v0, Lcom/b/a/a/a/g/a$a;->a:Lcom/b/a/a/a/g/a$a;

    iput-object v0, p0, Lcom/b/a/a/a/g/a;->d:Lcom/b/a/a/a/g/a$a;

    return-void
.end method
