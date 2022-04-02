.class public Lcom/tappx/a/w3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/tappx/a/t3;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/tappx/a/o4;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2
    new-instance p1, Lcom/tappx/a/v3;

    invoke-direct {p1, p0}, Lcom/tappx/a/v3;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 4
    :cond_c
    new-instance p1, Lcom/tappx/a/u3;

    invoke-direct {p1, p0}, Lcom/tappx/a/u3;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
