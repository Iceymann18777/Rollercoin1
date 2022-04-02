.class public abstract Lcom/b/a/a/a/b/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/b/a/a/a/b/c;Lcom/b/a/a/a/b/d;)Lcom/b/a/a/a/b/b;
    .registers 3

    invoke-static {}, Lcom/b/a/a/a/e/e;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/b/a/a/a/b/i;

    invoke-direct {v0, p0, p1}, Lcom/b/a/a/a/b/i;-><init>(Lcom/b/a/a/a/b/c;Lcom/b/a/a/a/b/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract b()V
.end method

.method public abstract b(Landroid/view/View;)V
.end method
