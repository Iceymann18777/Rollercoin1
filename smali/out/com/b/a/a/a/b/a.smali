.class public final Lcom/b/a/a/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/b/a/a/a/b/i;


# direct methods
.method private constructor <init>(Lcom/b/a/a/a/b/i;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/b/a;->a:Lcom/b/a/a/a/b/i;

    return-void
.end method

.method public static a(Lcom/b/a/a/a/b/b;)Lcom/b/a/a/a/b/a;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/b/a/a/a/b/i;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->d(Lcom/b/a/a/a/b/i;)V

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->b(Lcom/b/a/a/a/b/i;)V

    new-instance p0, Lcom/b/a/a/a/b/a;

    invoke-direct {p0, v0}, Lcom/b/a/a/a/b/a;-><init>(Lcom/b/a/a/a/b/i;)V

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->f()Lcom/b/a/a/a/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/a/a/g/a;->a(Lcom/b/a/a/a/b/a;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->b(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a;->a:Lcom/b/a/a/a/b/i;

    invoke-static {v0}, Lcom/b/a/a/a/e/e;->f(Lcom/b/a/a/a/b/i;)V

    iget-object v0, p0, Lcom/b/a/a/a/b/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->i()Z

    move-result v0

    if-nez v0, :cond_19

    :try_start_12
    iget-object v0, p0, Lcom/b/a/a/a/b/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->a()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    nop

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/b/a/a/a/b/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->i()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/b/a/a/a/b/a;->a:Lcom/b/a/a/a/b/i;

    invoke-virtual {v0}, Lcom/b/a/a/a/b/i;->e()V

    :cond_26
    return-void
.end method
