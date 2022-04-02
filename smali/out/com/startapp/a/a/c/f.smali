.class public Lcom/startapp/a/a/c/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a([B)Ljava/lang/String;
    .registers 2

    .line 104
    sget-object v0, Lcom/startapp/a/a/c/c;->f:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/startapp/a/a/c/f;->a([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 84
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method
