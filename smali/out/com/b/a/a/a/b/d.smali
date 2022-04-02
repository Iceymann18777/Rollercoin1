.class public final Lcom/b/a/a/a/b/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/b/a/a/a/b/g;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/a/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/b/a/a/a/b/e;


# direct methods
.method private constructor <init>(Lcom/b/a/a/a/b/g;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/a/b/g;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/b/a/a/a/b/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/b/d;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/b/a/a/a/b/d;->a:Lcom/b/a/a/a/b/g;

    iput-object p2, p0, Lcom/b/a/a/a/b/d;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/b/a/a/a/b/d;->d:Ljava/lang/String;

    if-eqz p4, :cond_18

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/b/a/a/a/b/e;->b:Lcom/b/a/a/a/b/e;

    goto :goto_1a

    :cond_18
    sget-object p1, Lcom/b/a/a/a/b/e;->a:Lcom/b/a/a/a/b/e;

    :goto_1a
    iput-object p1, p0, Lcom/b/a/a/a/b/d;->f:Lcom/b/a/a/a/b/e;

    iput-object p5, p0, Lcom/b/a/a/a/b/d;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/b/a/a/a/b/g;Landroid/webkit/WebView;Ljava/lang/String;)Lcom/b/a/a/a/b/d;
    .registers 11

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_13

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p2, v0, v1}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_13
    new-instance v0, Lcom/b/a/a/a/b/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/b/a/a/a/b/d;-><init>(Lcom/b/a/a/a/b/g;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/b/a/a/a/b/g;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/b/a/a/a/b/d;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/a/b/g;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/b/a/a/a/b/h;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/b/a/a/a/b/d;"
        }
    .end annotation

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OMID JS script content is null"

    invoke-static {p1, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationScriptResources is null"

    invoke-static {p2, v0}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_18

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p3, v0, v1}, Lcom/b/a/a/a/e/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    new-instance v0, Lcom/b/a/a/a/b/d;

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/b/a/a/a/b/d;-><init>(Lcom/b/a/a/a/b/g;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/b/a/a/a/b/g;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/d;->a:Lcom/b/a/a/a/b/g;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/a/b/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/b/d;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/d;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/b/a/a/a/b/e;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/b/d;->f:Lcom/b/a/a/a/b/e;

    return-object v0
.end method
