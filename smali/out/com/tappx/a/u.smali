.class public Lcom/tappx/a/u;
.super Lcom/tappx/a/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/d0<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;


# instance fields
.field private final f:Lcom/tappx/a/m1$a;

.field private final g:Lcom/tappx/a/j1$a;

.field private final h:Lcom/tappx/a/l0$a;

.field private final i:J

.field private final j:Lcom/tappx/a/p2;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Y3lXBmQ23xTYiukQ1UnbWw"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/u;->l:Ljava/lang/String;

    const-string v0, "KG6txY+dAsHV+aE9vCpHOQ"

    .line 2
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/u;->m:Ljava/lang/String;

    const-string v0, "FzLBfq4NHhh6H3aZu09wNg"

    .line 3
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/u;->n:Ljava/lang/String;

    const-string v0, "5RPecgzrVUOe/I8D8SnSVA"

    .line 5
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/u;->o:Ljava/lang/String;

    const-string v0, "p2JtzU2YCqXoi6X+GUHC9A"

    .line 6
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/u;->p:Ljava/lang/String;

    const-string v0, "ChYe7NtYsJ5it5MJ0kItoQ"

    .line 8
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/u;->q:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;Lcom/tappx/a/m1$a;Lcom/tappx/a/j1$a;Lcom/tappx/a/l0$a;JLcom/tappx/a/p2;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tappx/a/f0$b<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/tappx/a/f0$a;",
            "Lcom/tappx/a/m1$a;",
            "Lcom/tappx/a/j1$a;",
            "Lcom/tappx/a/l0$a;",
            "J",
            "Lcom/tappx/a/p2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/tappx/a/d0;-><init>(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/u;->k:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/tappx/a/u;->f:Lcom/tappx/a/m1$a;

    .line 4
    iput-object p5, p0, Lcom/tappx/a/u;->g:Lcom/tappx/a/j1$a;

    .line 5
    iput-object p6, p0, Lcom/tappx/a/u;->h:Lcom/tappx/a/l0$a;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/tappx/a/d0;->a(Z)V

    .line 7
    new-instance p1, Lcom/tappx/a/g0;

    const/16 p2, 0x2710

    const/4 p3, 0x1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4}, Lcom/tappx/a/g0;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/tappx/a/d0;->a(Lcom/tappx/a/g0;)V

    .line 8
    iput-wide p7, p0, Lcom/tappx/a/u;->i:J

    .line 9
    iput-object p9, p0, Lcom/tappx/a/u;->j:Lcom/tappx/a/p2;

    return-void
.end method

.method private a(Lcom/tappx/a/p2;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/u$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const-string p1, "u"

    return-object p1

    :cond_11
    const-string p1, "d"

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/tappx/a/c0;)Lcom/tappx/a/f0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/c0;",
            ")",
            "Lcom/tappx/a/f0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/tappx/a/c0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/tappx/a/f0;->a(Ljava/lang/Object;)Lcom/tappx/a/f0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_12
    new-instance p1, Lcom/tappx/a/a0;

    sget-object v0, Lcom/tappx/a/a0$a;->c:Lcom/tappx/a/a0$a;

    invoke-direct {p1, v0}, Lcom/tappx/a/a0;-><init>(Lcom/tappx/a/a0$a;)V

    invoke-static {p1}, Lcom/tappx/a/f0;->a(Lcom/tappx/a/a0;)Lcom/tappx/a/f0;

    move-result-object p1

    return-object p1
.end method

.method public a()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
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
    sget-object v0, Lcom/tappx/a/d0$a;->b:Lcom/tappx/a/d0$a;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/tappx/a/u;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tappx/a/u;->f:Lcom/tappx/a/m1$a;

    invoke-virtual {v1}, Lcom/tappx/a/m1$a;->b()Lcom/tappx/a/m1;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/tappx/a/u;->h:Lcom/tappx/a/l0$a;

    invoke-virtual {v2}, Lcom/tappx/a/l0$a;->a()Lcom/tappx/a/l0;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/tappx/a/u;->g:Lcom/tappx/a/j1$a;

    invoke-virtual {v3}, Lcom/tappx/a/j1$a;->a()Lcom/tappx/a/j1;

    move-result-object v3

    .line 5
    sget-object v4, Lcom/tappx/a/u;->l:Ljava/lang/String;

    iget-object v5, v1, Lcom/tappx/a/m1;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 6
    sget-object v4, Lcom/tappx/a/u;->m:Ljava/lang/String;

    iget-object v1, v1, Lcom/tappx/a/m1;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    sget-object v1, Lcom/tappx/a/u;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/tappx/a/u;->j:Lcom/tappx/a/p2;

    invoke-virtual {v4}, Lcom/tappx/a/p2;->a()Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "0"

    goto :goto_39

    :cond_37
    const-string v4, "1"

    :goto_39
    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    iget-object v1, p0, Lcom/tappx/a/u;->j:Lcom/tappx/a/p2;

    invoke-direct {p0, v1}, Lcom/tappx/a/u;->a(Lcom/tappx/a/p2;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "o"

    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    sget-object v1, Lcom/tappx/a/u;->o:Ljava/lang/String;

    iget-wide v4, p0, Lcom/tappx/a/u;->i:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    sget-object v1, Lcom/tappx/a/u;->p:Ljava/lang/String;

    iget-object v3, v3, Lcom/tappx/a/j1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    sget-object v1, Lcom/tappx/a/u;->q:Ljava/lang/String;

    iget-object v2, v2, Lcom/tappx/a/l0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
