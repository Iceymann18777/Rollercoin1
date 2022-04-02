.class public Lcom/b/a/a/a/h/a/d;
.super Lcom/b/a/a/a/h/a/b;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/h/a/b$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/b/a/a/a/h/a/b;-><init>(Lcom/b/a/a/a/h/a/b$b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    iget-object p1, p0, Lcom/b/a/a/a/h/a/d;->d:Lcom/b/a/a/a/h/a/b$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/b/a/a/a/h/a/b$b;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/h/a/d;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
