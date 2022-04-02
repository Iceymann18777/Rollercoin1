.class public Lcom/tappx/a/s;
.super Lcom/tappx/a/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/d0<",
        "Lcom/tappx/a/y1;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lcom/tappx/a/x;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "7lAm3cGZz4MMRzfjNT4s5w"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/s;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/tappx/a/x;Ljava/lang/String;Ljava/lang/String;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/x;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tappx/a/f0$b<",
            "Lcom/tappx/a/y1;",
            ">;",
            "Lcom/tappx/a/f0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4, p5}, Lcom/tappx/a/d0;-><init>(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/s;->g:Lcom/tappx/a/x;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tappx/a/n;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/s;->f:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/s;->h:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/tappx/a/d0;->a(Z)V

    .line 6
    new-instance p1, Lcom/tappx/a/g0;

    const/16 p2, 0x2710

    const/4 p3, 0x1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4}, Lcom/tappx/a/g0;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/tappx/a/d0;->a(Lcom/tappx/a/g0;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/tappx/a/c0;)Lcom/tappx/a/f0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/c0;",
            ")",
            "Lcom/tappx/a/f0<",
            "Lcom/tappx/a/y1;",
            ">;"
        }
    .end annotation

    const-string v0, "zEfD4hGYqgGlREP0sIIg/hstxJ7mtJesC+XfeD//U5A"

    const/4 v1, 0x2

    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-wide v2, p1, Lcom/tappx/a/c0;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/tappx/a/s;->f:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/tappx/a/s;->g:Lcom/tappx/a/x;

    invoke-virtual {v0, p1}, Lcom/tappx/a/x;->a(Lcom/tappx/a/c0;)Lcom/tappx/a/w1;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/tappx/a/w1;->f()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 9
    invoke-virtual {p1}, Lcom/tappx/a/w1;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tappx/a/u1;

    .line 10
    instance-of v0, p1, Lcom/tappx/a/y1;

    if-eqz v0, :cond_37

    .line 11
    check-cast p1, Lcom/tappx/a/y1;

    invoke-static {p1}, Lcom/tappx/a/f0;->a(Ljava/lang/Object;)Lcom/tappx/a/f0;

    move-result-object p1

    return-object p1

    .line 16
    :cond_37
    new-instance p1, Lcom/tappx/a/c2;

    invoke-direct {p1}, Lcom/tappx/a/c2;-><init>()V

    throw p1

    .line 17
    :cond_3d
    new-instance p1, Lcom/tappx/a/a0;

    sget-object v0, Lcom/tappx/a/a0$a;->d:Lcom/tappx/a/a0$a;

    invoke-direct {p1, v0}, Lcom/tappx/a/a0;-><init>(Lcom/tappx/a/a0$a;)V

    invoke-static {p1}, Lcom/tappx/a/f0;->a(Lcom/tappx/a/a0;)Lcom/tappx/a/f0;

    move-result-object p1
    :try_end_48
    .catch Lcom/tappx/a/c2; {:try_start_3 .. :try_end_48} :catch_49

    return-object p1

    .line 21
    :catch_49
    new-instance p1, Lcom/tappx/a/a0;

    sget-object v0, Lcom/tappx/a/a0$a;->c:Lcom/tappx/a/a0$a;

    invoke-direct {p1, v0}, Lcom/tappx/a/a0;-><init>(Lcom/tappx/a/a0$a;)V

    invoke-static {p1}, Lcom/tappx/a/f0;->a(Lcom/tappx/a/a0;)Lcom/tappx/a/f0;

    move-result-object p1

    return-object p1
.end method

.method public a()[B
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_c

    :cond_6
    :try_start_6
    const-string v2, "utf-8"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_c} :catch_d

    :goto_c
    return-object v1

    :catch_d
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "mcDfyrZIyDh7srkDi3vhYS4jCqm7NCw5DOnMQ6j4pn8"

    .line 5
    invoke-static {v2, v0}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tappx/a/d0;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/tappx/a/d0$a;
    .registers 2

    .line 1
    sget-object v0, Lcom/tappx/a/d0$a;->a:Lcom/tappx/a/d0$a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/tappx/a/s;->i:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
