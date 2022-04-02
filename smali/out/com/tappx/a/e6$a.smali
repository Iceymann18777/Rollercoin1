.class Lcom/tappx/a/e6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/e6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/tappx/a/h5$a;)V
    .registers 15

    .line 9
    iget-object v2, p2, Lcom/tappx/a/h5$a;->b:Ljava/lang/String;

    iget-wide v3, p2, Lcom/tappx/a/h5$a;->c:J

    iget-wide v5, p2, Lcom/tappx/a/h5$a;->d:J

    iget-wide v7, p2, Lcom/tappx/a/h5$a;->e:J

    iget-wide v9, p2, Lcom/tappx/a/h5$a;->f:J

    .line 16
    invoke-static {p2}, Lcom/tappx/a/e6$a;->a(Lcom/tappx/a/h5$a;)Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    .line 17
    invoke-direct/range {v0 .. v11}, Lcom/tappx/a/e6$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/e6$a;->b:Ljava/lang/String;

    const-string p1, ""

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p2, 0x0

    :cond_e
    iput-object p2, p0, Lcom/tappx/a/e6$a;->c:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/tappx/a/e6$a;->d:J

    .line 5
    iput-wide p5, p0, Lcom/tappx/a/e6$a;->e:J

    .line 6
    iput-wide p7, p0, Lcom/tappx/a/e6$a;->f:J

    .line 7
    iput-wide p9, p0, Lcom/tappx/a/e6$a;->g:J

    .line 8
    iput-object p11, p0, Lcom/tappx/a/e6$a;->h:Ljava/util/List;

    return-void
.end method

.method static a(Lcom/tappx/a/e6$b;)Lcom/tappx/a/e6$a;
    .registers 15

    .line 7
    invoke-static {p0}, Lcom/tappx/a/e6;->b(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_2c

    .line 12
    invoke-static {p0}, Lcom/tappx/a/e6;->b(Lcom/tappx/a/e6$b;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {p0}, Lcom/tappx/a/e6;->b(Lcom/tappx/a/e6$b;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {p0}, Lcom/tappx/a/e6;->c(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 15
    invoke-static {p0}, Lcom/tappx/a/e6;->c(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 16
    invoke-static {p0}, Lcom/tappx/a/e6;->c(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 17
    invoke-static {p0}, Lcom/tappx/a/e6;->c(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 18
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Lcom/tappx/a/e6$b;)Ljava/util/List;

    move-result-object v13

    .line 19
    new-instance p0, Lcom/tappx/a/e6$a;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/tappx/a/e6$a;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    .line 20
    :cond_2c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static a(Lcom/tappx/a/h5$a;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/h5$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tappx/a/h5$a;->h:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    .line 6
    :cond_5
    iget-object p0, p0, Lcom/tappx/a/h5$a;->g:Ljava/util/Map;

    invoke-static {p0}, Lcom/tappx/a/f6;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a([B)Lcom/tappx/a/h5$a;
    .registers 5

    .line 21
    new-instance v0, Lcom/tappx/a/h5$a;

    invoke-direct {v0}, Lcom/tappx/a/h5$a;-><init>()V

    .line 22
    iput-object p1, v0, Lcom/tappx/a/h5$a;->a:[B

    .line 23
    iget-object p1, p0, Lcom/tappx/a/e6$a;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/tappx/a/h5$a;->b:Ljava/lang/String;

    .line 24
    iget-wide v1, p0, Lcom/tappx/a/e6$a;->d:J

    iput-wide v1, v0, Lcom/tappx/a/h5$a;->c:J

    .line 25
    iget-wide v1, p0, Lcom/tappx/a/e6$a;->e:J

    iput-wide v1, v0, Lcom/tappx/a/h5$a;->d:J

    .line 26
    iget-wide v1, p0, Lcom/tappx/a/e6$a;->f:J

    iput-wide v1, v0, Lcom/tappx/a/h5$a;->e:J

    .line 27
    iget-wide v1, p0, Lcom/tappx/a/e6$a;->g:J

    iput-wide v1, v0, Lcom/tappx/a/h5$a;->f:J

    .line 28
    iget-object p1, p0, Lcom/tappx/a/e6$a;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/tappx/a/f6;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tappx/a/h5$a;->g:Ljava/util/Map;

    .line 29
    iget-object p1, p0, Lcom/tappx/a/e6$a;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/tappx/a/h5$a;->h:Ljava/util/List;

    return-object v0
.end method

.method a(Ljava/io/OutputStream;)Z
    .registers 6

    const v0, 0x20150306

    const/4 v1, 0x1

    .line 30
    :try_start_4
    invoke-static {p1, v0}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;I)V

    .line 31
    iget-object v0, p0, Lcom/tappx/a/e6$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/tappx/a/e6$a;->c:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_35

    if-nez v0, :cond_13

    const-string v0, ""

    goto :goto_15

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/tappx/a/e6$a;->c:Ljava/lang/String;

    :goto_15
    invoke-static {p1, v0}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 33
    iget-wide v2, p0, Lcom/tappx/a/e6$a;->d:J

    invoke-static {p1, v2, v3}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;J)V

    .line 34
    iget-wide v2, p0, Lcom/tappx/a/e6$a;->e:J

    invoke-static {p1, v2, v3}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;J)V

    .line 35
    iget-wide v2, p0, Lcom/tappx/a/e6$a;->f:J

    invoke-static {p1, v2, v3}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;J)V

    .line 36
    iget-wide v2, p0, Lcom/tappx/a/e6$a;->g:J

    invoke-static {p1, v2, v3}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;J)V

    .line 37
    iget-object v0, p0, Lcom/tappx/a/e6$a;->h:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/tappx/a/e6;->a(Ljava/util/List;Ljava/io/OutputStream;)V

    .line 38
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_34} :catch_35

    return v1

    :catch_35
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s"

    invoke-static {p1, v0}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
