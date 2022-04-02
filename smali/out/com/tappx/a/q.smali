.class public Lcom/tappx/a/q;
.super Lcom/tappx/a/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tappx/a/d0<",
        "Lcom/tappx/a/j2;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lcom/tappx/a/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Atea2vjkWMaKJqXPDr3CPg"

    .line 1
    invoke-static {v0}, Lcom/tappx/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/q;->h:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/tappx/a/x;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/x;",
            "Lcom/tappx/a/f0$b<",
            "Lcom/tappx/a/j2;",
            ">;",
            "Lcom/tappx/a/f0$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/tappx/a/d0;-><init>(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/q;->g:Lcom/tappx/a/x;

    .line 3
    invoke-static {}, Lcom/tappx/a/n;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tappx/a/q;->f:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/tappx/a/d0;->a(Z)V

    .line 5
    new-instance p2, Lcom/tappx/a/g0;

    const/16 p3, 0x2710

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p1, v0}, Lcom/tappx/a/g0;-><init>(IIF)V

    invoke-virtual {p0, p2}, Lcom/tappx/a/d0;->a(Lcom/tappx/a/g0;)V

    return-void
.end method

.method private j()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "ES"

    return-object v0

    .line 3
    :cond_9
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
            "Lcom/tappx/a/j2;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tappx/a/q;->g:Lcom/tappx/a/x;

    invoke-virtual {v0, p1}, Lcom/tappx/a/x;->b(Lcom/tappx/a/c0;)Lcom/tappx/a/j2;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/tappx/a/f0;->a(Ljava/lang/Object;)Lcom/tappx/a/f0;

    move-result-object p1
    :try_end_a
    .catch Lcom/tappx/a/c2; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 4
    :catch_b
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
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/q;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/tappx/a/q;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tappx/a/q;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
