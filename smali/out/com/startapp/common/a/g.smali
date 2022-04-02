.class public Lcom/startapp/common/a/g;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(ILjava/lang/String;)V
    .registers 3

    .line 13
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 23
    invoke-static {v0, p0, p1, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 18
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 19
    invoke-static {p0, p1, p2, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 13

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_16

    .line 31
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    :goto_16
    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const-string v2, "startapp"

    const/16 v3, 0xfa0

    if-le v1, v3, :cond_d0

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sb.length = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v1, p3}, Lcom/startapp/common/a/g;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    div-int/2addr p2, v3

    const/4 p3, 0x0

    :goto_5c
    if-gt p3, p2, :cond_e2

    add-int/lit8 v1, p3, 0x1

    mul-int/lit16 v3, v1, 0xfa0

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x0

    const-string v6, ":"

    const-string v7, "/"

    if-lt v3, v4, :cond_9e

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p3, p3, 0xfa0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p1, p3, v5}, Lcom/startapp/common/a/g;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ce

    .line 44
    :cond_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p3, p3, 0xfa0

    invoke-virtual {v0, p3, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p1, p3, v5}, Lcom/startapp/common/a/g;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_ce
    move p3, v1

    goto :goto_5c

    .line 48
    :cond_d0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/startapp/common/a/g;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_e2
    return-void
.end method

.method private static b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    const/4 v0, 0x6

    if-eq p1, v0, :cond_10

    goto :goto_23

    .line 64
    :cond_10
    invoke-static {p0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 67
    :cond_14
    invoke-static {p0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 70
    :cond_18
    invoke-static {p0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 61
    :cond_1c
    invoke-static {p0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 58
    :cond_20
    invoke-static {p0, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-void
.end method
