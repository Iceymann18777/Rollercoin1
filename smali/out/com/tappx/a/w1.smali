.class public Lcom/tappx/a/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tappx/a/u1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/tappx/a/w1;->a:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/w1;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/tappx/a/w1;->a:I

    return-void
.end method

.method public a(ZILjava/lang/String;)V
    .registers 4

    .line 3
    iput-boolean p1, p0, Lcom/tappx/a/w1;->c:Z

    .line 4
    iput p2, p0, Lcom/tappx/a/w1;->b:I

    .line 5
    iput-object p3, p0, Lcom/tappx/a/w1;->d:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/tappx/a/w1;->c:Z

    return v0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tappx/a/u1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tappx/a/w1;->e:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/w1;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/w1;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/tappx/a/w1;->b:I

    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/w1;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
