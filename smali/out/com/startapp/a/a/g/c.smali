.class public Lcom/startapp/a/a/g/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/startapp/a/a/g/a;",
            "Lcom/startapp/a/a/g/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/a/a/g/c;->a:Ljava/util/Map;

    .line 15
    sget-object v1, Lcom/startapp/a/a/g/a;->a:Lcom/startapp/a/a/g/a;

    new-instance v2, Lcom/startapp/a/a/g/g;

    invoke-direct {v2}, Lcom/startapp/a/a/g/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/startapp/a/a/g/c;->a:Ljava/util/Map;

    sget-object v1, Lcom/startapp/a/a/g/a;->b:Lcom/startapp/a/a/g/a;

    new-instance v2, Lcom/startapp/a/a/g/f;

    invoke-direct {v2}, Lcom/startapp/a/a/g/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/startapp/a/a/g/c;->a:Ljava/util/Map;

    sget-object v1, Lcom/startapp/a/a/g/a;->c:Lcom/startapp/a/a/g/a;

    new-instance v2, Lcom/startapp/a/a/g/e;

    invoke-direct {v2}, Lcom/startapp/a/a/g/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/startapp/a/a/g/c;->a:Ljava/util/Map;

    sget-object v1, Lcom/startapp/a/a/g/a;->d:Lcom/startapp/a/a/g/a;

    new-instance v2, Lcom/startapp/a/a/g/d;

    invoke-direct {v2}, Lcom/startapp/a/a/g/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/a/a/g/a;)Lcom/startapp/a/a/a/a;
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/startapp/a/a/g/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/a/a/g/b;

    invoke-virtual {p1}, Lcom/startapp/a/a/g/b;->b()Lcom/startapp/a/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/startapp/a/a/g/a;)Lcom/startapp/a/a/d/e;
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/startapp/a/a/g/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/a/a/g/b;

    invoke-virtual {p1}, Lcom/startapp/a/a/g/b;->a()Lcom/startapp/a/a/d/e;

    move-result-object p1

    return-object p1
.end method
