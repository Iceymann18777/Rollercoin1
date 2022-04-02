.class public Lcom/b/a/a/a/c/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/b/a/a/a/c/a;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/b/a/a/a/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/b/a/a/a/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/b/a/a/a/c/a;

    invoke-direct {v0}, Lcom/b/a/a/a/c/a;-><init>()V

    sput-object v0, Lcom/b/a/a/a/c/a;->a:Lcom/b/a/a/a/c/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/c/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/a/c/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/b/a/a/a/c/a;
    .registers 1

    sget-object v0, Lcom/b/a/a/a/c/a;->a:Lcom/b/a/a/a/c/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/a/a/b/i;)V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/a/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/b/a/a/a/b/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/c/a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/b/a/a/a/b/i;)V
    .registers 4

    invoke-virtual {p0}, Lcom/b/a/a/a/c/a;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/a/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/b/a/a/a/c/e;->a()Lcom/b/a/a/a/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/c/e;->b()V

    :cond_12
    return-void
.end method

.method public c()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/b/a/a/a/b/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/c/a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/b/a/a/a/b/i;)V
    .registers 4

    invoke-virtual {p0}, Lcom/b/a/a/a/c/a;->d()Z

    move-result v0

    iget-object v1, p0, Lcom/b/a/a/a/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/b/a/a/a/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/b/a/a/a/c/a;->d()Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-static {}, Lcom/b/a/a/a/c/e;->a()Lcom/b/a/a/a/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a/c/e;->c()V

    :cond_1d
    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/a/c/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
