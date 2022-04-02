.class public Lcom/tappx/a/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tappx/a/t1;)Lcom/tappx/a/k3;
    .registers 2

    if-nez p0, :cond_4

    .line 1
    sget-object p0, Lcom/tappx/a/t1;->a:Lcom/tappx/a/t1;

    .line 2
    :cond_4
    sget-object v0, Lcom/tappx/a/b3$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x3

    if-eq p0, v0, :cond_24

    const/4 v0, 0x4

    if-eq p0, v0, :cond_21

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1e

    .line 15
    sget-object p0, Lcom/tappx/a/k3;->a:Lcom/tappx/a/k3;

    return-object p0

    .line 16
    :cond_1e
    sget-object p0, Lcom/tappx/a/k3;->e:Lcom/tappx/a/k3;

    return-object p0

    .line 17
    :cond_21
    sget-object p0, Lcom/tappx/a/k3;->b:Lcom/tappx/a/k3;

    return-object p0

    .line 18
    :cond_24
    sget-object p0, Lcom/tappx/a/k3;->f:Lcom/tappx/a/k3;

    return-object p0

    .line 19
    :cond_27
    sget-object p0, Lcom/tappx/a/k3;->d:Lcom/tappx/a/k3;

    return-object p0

    .line 20
    :cond_2a
    sget-object p0, Lcom/tappx/a/k3;->c:Lcom/tappx/a/k3;

    return-object p0
.end method
