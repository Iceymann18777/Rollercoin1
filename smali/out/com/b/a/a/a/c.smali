.class public Lcom/b/a/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/b/a/a/a/c;->c(Ljava/lang/String;)V

    const-string p1, "Application Context cannot be null"

    invoke-static {p2, p1}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    const-string v0, "Version cannot be null"

    invoke-static {p1, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[0-9]+\\.[0-9]+\\.[0-9]+.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    const-string v0, "1.2.0-Startapp"

    return-object v0
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/b/a/a/a/c;->a:Z

    return-void
.end method

.method a(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/a/a/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/c;->b(Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/a/c;->b(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/b/a/a/a/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/b/a/a/a/c;->b()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2b

    invoke-virtual {p0, v0}, Lcom/b/a/a/a/c;->a(Z)V

    invoke-static {}, Lcom/b/a/a/a/c/e;->a()Lcom/b/a/a/a/c/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/b/a/a/a/c/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/b/a/a/a/c/b;->a()Lcom/b/a/a/a/c/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/b/a/a/a/c/b;->a(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/b/a/a/a/e/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/b/a/a/a/c/c;->a()Lcom/b/a/a/a/c/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/b/a/a/a/c/c;->a(Landroid/content/Context;)V

    :cond_2b
    return v0

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method b(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/b/a/a/a/c;->c(Ljava/lang/String;)V

    const-string v0, "\\."

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/a/a/c;->a:Z

    return v0
.end method
