.class public Lcom/tappx/a/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/x;

.field private final b:Lcom/tappx/a/p0$b;

.field private final c:Lcom/tappx/a/m1$a;

.field private final d:Lcom/tappx/a/l0$a;

.field private final e:Lcom/tappx/a/i1$a;

.field private final f:Lcom/tappx/a/g1$b;

.field private final g:Lcom/tappx/a/j1$a;


# direct methods
.method public constructor <init>(Lcom/tappx/a/x;Lcom/tappx/a/p0$b;Lcom/tappx/a/m1$a;Lcom/tappx/a/l0$a;Lcom/tappx/a/i1$a;Lcom/tappx/a/g1$b;Lcom/tappx/a/j1$a;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/y$a;->a:Lcom/tappx/a/x;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/y$a;->b:Lcom/tappx/a/p0$b;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/y$a;->c:Lcom/tappx/a/m1$a;

    .line 5
    iput-object p4, p0, Lcom/tappx/a/y$a;->d:Lcom/tappx/a/l0$a;

    .line 6
    iput-object p5, p0, Lcom/tappx/a/y$a;->e:Lcom/tappx/a/i1$a;

    .line 7
    iput-object p6, p0, Lcom/tappx/a/y$a;->f:Lcom/tappx/a/g1$b;

    .line 8
    iput-object p7, p0, Lcom/tappx/a/y$a;->g:Lcom/tappx/a/j1$a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/tappx/a/b2;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)Lcom/tappx/a/y;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tappx/a/b2;",
            "Lcom/tappx/a/f0$b<",
            "Lcom/tappx/a/w1;",
            ">;",
            "Lcom/tappx/a/f0$a;",
            ")",
            "Lcom/tappx/a/y;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/tappx/a/y$b;

    iget-object v1, p0, Lcom/tappx/a/y$a;->b:Lcom/tappx/a/p0$b;

    iget-object v2, p0, Lcom/tappx/a/y$a;->c:Lcom/tappx/a/m1$a;

    iget-object v3, p0, Lcom/tappx/a/y$a;->e:Lcom/tappx/a/i1$a;

    iget-object v4, p0, Lcom/tappx/a/y$a;->d:Lcom/tappx/a/l0$a;

    iget-object v5, p0, Lcom/tappx/a/y$a;->f:Lcom/tappx/a/g1$b;

    iget-object v6, p0, Lcom/tappx/a/y$a;->g:Lcom/tappx/a/j1$a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tappx/a/y$b;-><init>(Lcom/tappx/a/p0$b;Lcom/tappx/a/m1$a;Lcom/tappx/a/i1$a;Lcom/tappx/a/l0$a;Lcom/tappx/a/g1$b;Lcom/tappx/a/j1$a;)V

    .line 2
    new-instance v8, Lcom/tappx/a/y;

    iget-object v1, p0, Lcom/tappx/a/y$a;->a:Lcom/tappx/a/x;

    iget-object v4, p0, Lcom/tappx/a/y$a;->b:Lcom/tappx/a/p0$b;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/tappx/a/y;-><init>(Lcom/tappx/a/x;Ljava/lang/String;Lcom/tappx/a/b2;Lcom/tappx/a/p0$b;Lcom/tappx/a/y$b;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;)V

    return-object v8
.end method
