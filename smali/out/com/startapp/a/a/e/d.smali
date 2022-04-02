.class public abstract Lcom/startapp/a/a/e/d;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Lcom/startapp/a/a/e/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/startapp/a/a/e/c;

    invoke-direct {v0}, Lcom/startapp/a/a/e/c;-><init>()V

    iput-object v0, p0, Lcom/startapp/a/a/e/d;->a:Lcom/startapp/a/a/e/c;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/io/DataInput;)Lcom/startapp/a/a/a/c;
.end method

.method public a(Ljava/lang/String;)Lcom/startapp/a/a/a/c;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 25
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/startapp/a/a/e/d;->a:Lcom/startapp/a/a/e/c;

    invoke-virtual {v1, p1}, Lcom/startapp/a/a/e/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    .line 28
    :cond_d
    invoke-virtual {p0, v1}, Lcom/startapp/a/a/e/d;->a([B)Ljava/io/DataInput;

    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/startapp/a/a/e/d;->a(Ljava/io/DataInput;)Lcom/startapp/a/a/a/c;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HighPageCountException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 32
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HighPageCountException (PLM-2573) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bad bloom token: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4b
    return-object v0
.end method

.method protected a([B)Ljava/io/DataInput;
    .registers 3

    .line 49
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 50
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1
.end method

.method protected a(Ljava/io/DataInput;Lcom/startapp/a/a/a/c;J)V
    .registers 15

    .line 39
    invoke-virtual {p2}, Lcom/startapp/a/a/a/c;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_29

    .line 41
    invoke-virtual {p2, v2}, Lcom/startapp/a/a/a/c;->a(I)[J

    move-result-object v3

    const/4 v4, 0x0

    :goto_d
    const/16 v5, 0x1000

    if-ge v4, v5, :cond_26

    const-wide/16 v5, 0x1

    sub-long v5, p3, v5

    const-wide/16 v7, 0x0

    cmp-long v9, p3, v7

    if-lez v9, :cond_25

    .line 43
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide p3

    aput-wide p3, v3, v4

    add-int/lit8 v4, v4, 0x1

    move-wide p3, v5

    goto :goto_d

    :cond_25
    move-wide p3, v5

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_29
    return-void
.end method
