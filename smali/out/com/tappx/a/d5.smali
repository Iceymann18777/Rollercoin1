.class public Lcom/tappx/a/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/c5;


# instance fields
.field private final a:Lcom/tappx/a/b5;

.field private b:Lcom/tappx/a/c5$a;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/tappx/a/f5;

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/tappx/a/b5;

    invoke-direct {v0}, Lcom/tappx/a/b5;-><init>()V

    invoke-direct {p0, v0}, Lcom/tappx/a/d5;-><init>(Lcom/tappx/a/b5;)V

    return-void
.end method

.method constructor <init>(Lcom/tappx/a/b5;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tappx/a/d5;->f:I

    .line 10
    iput-object p1, p0, Lcom/tappx/a/d5;->a:Lcom/tappx/a/b5;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 7
    iget v0, p0, Lcom/tappx/a/d5;->f:I

    invoke-static {v0}, Lcom/tappx/a/a5;->b(I)V

    .line 8
    iget-object v0, p0, Lcom/tappx/a/d5;->a:Lcom/tappx/a/b5;

    invoke-virtual {v0}, Lcom/tappx/a/b5;->a()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/f5;)V
    .registers 12

    .line 2
    iput-object p1, p0, Lcom/tappx/a/d5;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/d5;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/d5;->e:Lcom/tappx/a/f5;

    .line 5
    iget-object v0, p0, Lcom/tappx/a/d5;->b:Lcom/tappx/a/c5$a;

    invoke-static {v0}, Lcom/tappx/a/a5;->a(Lcom/tappx/a/c5$a;)I

    move-result v2

    iput v2, p0, Lcom/tappx/a/d5;->f:I

    .line 6
    iget-object v1, p0, Lcom/tappx/a/d5;->a:Lcom/tappx/a/b5;

    iget-object v6, p0, Lcom/tappx/a/d5;->b:Lcom/tappx/a/c5$a;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/tappx/a/b5;->a(ILcom/tappx/a/c5;Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/c5$a;Lcom/tappx/a/f5;)V

    return-void
.end method

.method public a(Lcom/tappx/a/c5$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/d5;->b:Lcom/tappx/a/c5$a;

    return-void
.end method

.method public b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/d5;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tappx/a/d5;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/tappx/a/d5;->e:Lcom/tappx/a/f5;

    iget v3, p0, Lcom/tappx/a/d5;->f:I

    invoke-static {v0, v1, v2, v3}, Lcom/tappx/a/z4;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tappx/a/f5;I)V

    return-void
.end method
