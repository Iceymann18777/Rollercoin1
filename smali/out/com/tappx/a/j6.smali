.class public Lcom/tappx/a/j6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/tappx/a/t5;
    .registers 2

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0}, Lcom/tappx/a/j6;->a(Landroid/content/Context;Lcom/tappx/a/b6;)Lcom/tappx/a/t5;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/tappx/a/b6;)Lcom/tappx/a/t5;
    .registers 3

    if-nez p1, :cond_d

    .line 1
    new-instance p1, Lcom/tappx/a/c6;

    new-instance v0, Lcom/tappx/a/h6;

    invoke-direct {v0}, Lcom/tappx/a/h6;-><init>()V

    invoke-direct {p1, v0}, Lcom/tappx/a/c6;-><init>(Lcom/tappx/a/b6;)V

    goto :goto_13

    .line 3
    :cond_d
    new-instance v0, Lcom/tappx/a/c6;

    invoke-direct {v0, p1}, Lcom/tappx/a/c6;-><init>(Lcom/tappx/a/b6;)V

    move-object p1, v0

    .line 6
    :goto_13
    invoke-static {p0, p1}, Lcom/tappx/a/j6;->a(Landroid/content/Context;Lcom/tappx/a/n5;)Lcom/tappx/a/t5;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/tappx/a/n5;)Lcom/tappx/a/t5;
    .registers 4

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 10
    new-instance v0, Lcom/tappx/a/j6$a;

    invoke-direct {v0, p0}, Lcom/tappx/a/j6$a;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p0, Lcom/tappx/a/t5;

    new-instance v1, Lcom/tappx/a/e6;

    invoke-direct {v1, v0}, Lcom/tappx/a/e6;-><init>(Lcom/tappx/a/e6$c;)V

    invoke-direct {p0, v1, p1}, Lcom/tappx/a/t5;-><init>(Lcom/tappx/a/h5;Lcom/tappx/a/n5;)V

    .line 23
    invoke-virtual {p0}, Lcom/tappx/a/t5;->b()V

    return-object p0
.end method
