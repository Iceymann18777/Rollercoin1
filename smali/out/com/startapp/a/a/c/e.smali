.class public Lcom/startapp/a/a/c/e;
.super Ljava/io/Writer;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/startapp/a/a/c/e;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/a/a/c/e;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/startapp/a/a/c/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/startapp/a/a/c/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/startapp/a/a/c/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/startapp/a/a/c/e;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Lcom/startapp/a/a/c/e;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapp/a/a/c/e;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/startapp/a/a/c/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 125
    iget-object v0, p0, Lcom/startapp/a/a/c/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method public write([CII)V
    .registers 5

    if-eqz p1, :cond_7

    .line 139
    iget-object v0, p0, Lcom/startapp/a/a/c/e;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method
