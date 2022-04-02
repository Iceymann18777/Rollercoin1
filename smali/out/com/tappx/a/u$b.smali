.class public Lcom/tappx/a/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/m1$a;

.field private final b:Lcom/tappx/a/t;

.field private final c:Lcom/tappx/a/j1$a;

.field private final d:Lcom/tappx/a/l0$a;


# direct methods
.method public constructor <init>(Lcom/tappx/a/m1$a;Lcom/tappx/a/t;Lcom/tappx/a/j1$a;Lcom/tappx/a/l0$a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/u$b;->a:Lcom/tappx/a/m1$a;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/u$b;->b:Lcom/tappx/a/t;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/u$b;->c:Lcom/tappx/a/j1$a;

    .line 5
    iput-object p4, p0, Lcom/tappx/a/u$b;->d:Lcom/tappx/a/l0$a;

    return-void
.end method


# virtual methods
.method a(Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;JLcom/tappx/a/p2;)Lcom/tappx/a/u;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/f0$b<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/tappx/a/f0$a;",
            "J",
            "Lcom/tappx/a/p2;",
            ")",
            "Lcom/tappx/a/u;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    new-instance v11, Lcom/tappx/a/u;

    iget-object v1, v0, Lcom/tappx/a/u$b;->b:Lcom/tappx/a/t;

    invoke-virtual {v1}, Lcom/tappx/a/t;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/tappx/a/u$b;->a:Lcom/tappx/a/m1$a;

    iget-object v6, v0, Lcom/tappx/a/u$b;->c:Lcom/tappx/a/j1$a;

    iget-object v7, v0, Lcom/tappx/a/u$b;->d:Lcom/tappx/a/l0$a;

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-wide v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/tappx/a/u;-><init>(Ljava/lang/String;Lcom/tappx/a/f0$b;Lcom/tappx/a/f0$a;Lcom/tappx/a/m1$a;Lcom/tappx/a/j1$a;Lcom/tappx/a/l0$a;JLcom/tappx/a/p2;)V

    return-object v11
.end method
