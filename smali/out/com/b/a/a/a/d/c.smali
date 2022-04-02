.class public Lcom/b/a/a/a/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/a/d/a;


# instance fields
.field private final a:Lcom/b/a/a/a/d/a;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/d/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/d/c;->a:Lcom/b/a/a/a/d/a;

    return-void
.end method


# virtual methods
.method a()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/b/a/a/a/c/a;->a()Lcom/b/a/a/a/c/a;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Lcom/b/a/a/a/c/a;->c()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/a/b/i;

    invoke-virtual {v3}, Lcom/b/a/a/a/b/i;->h()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-static {v3}, Lcom/b/a/a/a/e/f;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {v2, v3, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/b/a/a/a/e/f;->a(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_4f
    if-lez v5, :cond_64

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/b/a/a/a/e/f;->a(Landroid/view/View;)F

    move-result v6

    cmpl-float v6, v6, v4

    if-lez v6, :cond_64

    add-int/lit8 v5, v5, -0x1

    goto :goto_4f

    :cond_64
    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_20

    :cond_68
    return-object v0
.end method

.method public a(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 2

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Lcom/b/a/a/a/e/b;->a(IIII)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Lorg/json/JSONObject;Lcom/b/a/a/a/d/a$a;Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/b/a/a/a/d/c;->a()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    iget-object v0, p0, Lcom/b/a/a/a/d/c;->a:Lcom/b/a/a/a/d/a;

    invoke-interface {p3, p4, v0, p2}, Lcom/b/a/a/a/d/a$a;->a(Landroid/view/View;Lcom/b/a/a/a/d/a;Lorg/json/JSONObject;)V

    goto :goto_8

    :cond_1a
    return-void
.end method
