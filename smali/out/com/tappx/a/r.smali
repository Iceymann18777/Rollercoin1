.class public Lcom/tappx/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x100

    .line 1
    invoke-static {p0, v0}, Lcom/tappx/a/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_19

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_19

    .line 3
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_18

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return-object p0
.end method
