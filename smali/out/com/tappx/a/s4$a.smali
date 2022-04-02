.class public Lcom/tappx/a/s4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/s4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/s4$a;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/s4$a;->b:Ljava/lang/String;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tappx/a/s4$a;->d:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tappx/a/s4$a;->e:Ljava/util/List;

    if-eqz p1, :cond_1c

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iput-object p1, p0, Lcom/tappx/a/s4$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/s4$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    iget-object v1, p0, Lcom/tappx/a/s4$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 4
    iget-object v1, p0, Lcom/tappx/a/s4$a;->c:Ljava/lang/Class;

    iget-object v2, p0, Lcom/tappx/a/s4$a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/tappx/a/s4;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6
    iget-boolean v1, p0, Lcom/tappx/a/s4$a;->f:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 10
    :cond_20
    iget-object v1, p0, Lcom/tappx/a/s4$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget-boolean v2, p0, Lcom/tappx/a/s4$a;->g:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 15
    :cond_30
    iget-object v2, p0, Lcom/tappx/a/s4$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/tappx/a/s4$a;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tappx/a/s4$a;->f:Z

    return-object p0
.end method
