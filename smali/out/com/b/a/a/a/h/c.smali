.class public Lcom/b/a/a/a/h/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/a/h/a/b$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lcom/b/a/a/a/h/a/c;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/h/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/h/c;->b:Lcom/b/a/a/a/h/a/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/h/c;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/h/c;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/h/c;->b:Lcom/b/a/a/a/h/a/c;

    new-instance v7, Lcom/b/a/a/a/h/a/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/a/h/a/f;-><init>(Lcom/b/a/a/a/h/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v0, v7}, Lcom/b/a/a/a/h/a/c;->b(Lcom/b/a/a/a/h/a/b;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/h/c;->b:Lcom/b/a/a/a/h/a/c;

    new-instance v1, Lcom/b/a/a/a/h/a/d;

    invoke-direct {v1, p0}, Lcom/b/a/a/a/h/a/d;-><init>(Lcom/b/a/a/a/h/a/b$b;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/a/h/a/c;->b(Lcom/b/a/a/a/h/a/b;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/h/c;->b:Lcom/b/a/a/a/h/a/c;

    new-instance v7, Lcom/b/a/a/a/h/a/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/b/a/a/a/h/a/e;-><init>(Lcom/b/a/a/a/h/a/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v0, v7}, Lcom/b/a/a/a/h/a/c;->b(Lcom/b/a/a/a/h/a/b;)V

    return-void
.end method
