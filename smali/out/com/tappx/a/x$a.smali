.class Lcom/tappx/a/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Z0s98+TEac+mapO900zQZA"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/x$a;->a:Ljava/lang/String;

    const-string v0, "UjhhaCwcEZ+voViDfkR/pA"

    .line 2
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/x$a;->b:Ljava/lang/String;

    const-string v0, "SNfY2H1acX2p46/zyMOc/g"

    .line 3
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/x$a;->c:Ljava/lang/String;

    const-string v0, "On2W1poIktAVirYlBse78g"

    .line 4
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/x$a;->d:Ljava/lang/String;

    const-string v0, "LC4el1lDkKxbZdxa4Qatkw"

    .line 5
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/x$a;->e:Ljava/lang/String;

    const-string v0, "rj1rf34CVwuKwyr8EiViZg"

    .line 6
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/x$a;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/tappx/a/t1;
    .registers 3

    if-nez p1, :cond_4

    .line 14
    sget-object p1, Lcom/tappx/a/x$a;->e:Ljava/lang/String;

    .line 15
    :cond_4
    sget-object v0, Lcom/tappx/a/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 16
    sget-object p1, Lcom/tappx/a/t1;->c:Lcom/tappx/a/t1;

    return-object p1

    .line 17
    :cond_f
    sget-object v0, Lcom/tappx/a/x$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 18
    sget-object p1, Lcom/tappx/a/t1;->d:Lcom/tappx/a/t1;

    return-object p1

    .line 19
    :cond_1a
    sget-object v0, Lcom/tappx/a/x$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 20
    sget-object p1, Lcom/tappx/a/t1;->e:Lcom/tappx/a/t1;

    return-object p1

    .line 21
    :cond_25
    sget-object v0, Lcom/tappx/a/x$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 22
    sget-object p1, Lcom/tappx/a/t1;->f:Lcom/tappx/a/t1;

    return-object p1

    .line 23
    :cond_30
    sget-object v0, Lcom/tappx/a/x$a;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 24
    sget-object p1, Lcom/tappx/a/t1;->b:Lcom/tappx/a/t1;

    return-object p1

    .line 25
    :cond_3b
    sget-object v0, Lcom/tappx/a/x$a;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 26
    sget-object p1, Lcom/tappx/a/t1;->a:Lcom/tappx/a/t1;

    return-object p1

    .line 28
    :cond_46
    sget-object p1, Lcom/tappx/a/t1;->a:Lcom/tappx/a/t1;

    return-object p1
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tappx/a/x;->k()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_d

    return p3

    .line 3
    :cond_d
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/16 v0, 0x6c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_2d

    const/16 v0, 0x70

    if-eq p3, v0, :cond_23

    goto :goto_36

    :cond_23
    const-string p3, "p"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p2, 0x1

    goto :goto_36

    :cond_2d
    const-string p3, "l"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p2, 0x0

    :cond_36
    :goto_36
    if-eqz p2, :cond_3c

    if-eq p2, v2, :cond_3b

    return v1

    :cond_3b
    return v2

    :cond_3c
    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method a(Ljava/util/Map;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-nez p1, :cond_3

    return p3

    .line 29
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31
    :try_start_9
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_13} :catch_14

    return p1

    :catch_14
    :cond_14
    return p3
.end method

.method a(Lcom/tappx/a/c0;)Lcom/tappx/a/w1;
    .registers 5

    .line 1
    new-instance v0, Lcom/tappx/a/w1;

    invoke-direct {v0}, Lcom/tappx/a/w1;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/tappx/a/c0;->a:Ljava/util/Map;

    invoke-static {}, Lcom/tappx/a/x;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_15

    .line 4
    invoke-virtual {v0, p1}, Lcom/tappx/a/w1;->a(I)V

    :cond_15
    return-object v0
.end method

.method a(Lcom/tappx/a/u1;Ljava/util/Map;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/u1;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/tappx/a/x;->b()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p0, p2, v0, v1}, Lcom/tappx/a/x$a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/tappx/a/u1;->a(J)V

    if-eqz p3, :cond_3d

    .line 8
    invoke-static {}, Lcom/tappx/a/x;->g()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/tappx/a/u1;->c(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tappx/a/x;->h()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/tappx/a/u1;->d(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/tappx/a/x;->i()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/tappx/a/u1;->b(Ljava/lang/String;)V

    .line 12
    :cond_3d
    invoke-static {}, Lcom/tappx/a/x;->j()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/tappx/a/x$a;->a(Ljava/lang/String;)Lcom/tappx/a/t1;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/tappx/a/u1;->a(Lcom/tappx/a/t1;)V

    .line 13
    invoke-static {}, Lcom/tappx/a/x;->k()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/tappx/a/x$a;->b(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tappx/a/u1;->a(I)V

    return-void
.end method
