.class public Lcom/b/a/a/a/h/a/e;
.super Lcom/b/a/a/a/h/a/a;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/h/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/a/h/a/b$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "D)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/b/a/a/a/h/a/a;-><init>(Lcom/b/a/a/a/h/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/b/a/a/a/c/a;->a()Lcom/b/a/a/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/b/a/a/a/c/a;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/a/b/i;

    iget-object v2, p0, Lcom/b/a/a/a/h/a/e;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/b/a/a/a/b/i;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/b/a/a/a/h/a/e;->c:D

    invoke-virtual {v1, p1, v2, v3}, Lcom/b/a/a/a/g/a;->b(Ljava/lang/String;D)V

    goto :goto_e

    :cond_30
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    iget-object p1, p0, Lcom/b/a/a/a/h/a/e;->b:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/b/a/a/a/h/a/e;->b(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/b/a/a/a/h/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/h/a/e;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/h/a/e;->a(Ljava/lang/String;)V

    return-void
.end method
