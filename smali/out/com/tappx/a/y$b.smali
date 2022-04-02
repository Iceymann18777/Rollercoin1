.class public Lcom/tappx/a/y$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/p0$b;

.field private final b:Lcom/tappx/a/m1$a;

.field private final c:Lcom/tappx/a/l0$a;

.field private final d:Lcom/tappx/a/i1$a;

.field private final e:Lcom/tappx/a/g1$b;

.field private final f:Lcom/tappx/a/j1$a;


# direct methods
.method public constructor <init>(Lcom/tappx/a/p0$b;Lcom/tappx/a/m1$a;Lcom/tappx/a/i1$a;Lcom/tappx/a/l0$a;Lcom/tappx/a/g1$b;Lcom/tappx/a/j1$a;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/y$b;->a:Lcom/tappx/a/p0$b;

    .line 3
    iput-object p2, p0, Lcom/tappx/a/y$b;->b:Lcom/tappx/a/m1$a;

    .line 4
    iput-object p3, p0, Lcom/tappx/a/y$b;->d:Lcom/tappx/a/i1$a;

    .line 5
    iput-object p4, p0, Lcom/tappx/a/y$b;->c:Lcom/tappx/a/l0$a;

    .line 6
    iput-object p5, p0, Lcom/tappx/a/y$b;->e:Lcom/tappx/a/g1$b;

    .line 7
    iput-object p6, p0, Lcom/tappx/a/y$b;->f:Lcom/tappx/a/j1$a;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const-string p1, "u"

    return-object p1

    :cond_9
    const-string p1, "l"

    return-object p1

    :cond_c
    const-string p1, "p"

    return-object p1
.end method

.method private a(Lcom/tappx/a/g1$a;)Ljava/lang/String;
    .registers 5

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p1, Lcom/tappx/a/g1$a;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/tappx/a/g1$a;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/tappx/a/b2;Lorg/json/JSONObject;)V
    .registers 5

    .line 16
    invoke-static {}, Lcom/tappx/a/y;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/b2;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/tappx/a/y;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/b2;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/tappx/a/y;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/b2;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/tappx/a/y;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/b2;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/tappx/a/y;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/b2;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/tappx/a/b2;->j()I

    move-result v0

    if-lez v0, :cond_48

    .line 22
    invoke-static {}, Lcom/tappx/a/y;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/b2;->j()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 24
    :cond_48
    invoke-virtual {p1}, Lcom/tappx/a/b2;->c()I

    move-result v0

    if-lez v0, :cond_59

    .line 25
    invoke-static {}, Lcom/tappx/a/y;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tappx/a/b2;->c()I

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    :cond_59
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    .line 27
    iget-object v0, p0, Lcom/tappx/a/y$b;->c:Lcom/tappx/a/l0$a;

    invoke-virtual {v0}, Lcom/tappx/a/l0$a;->a()Lcom/tappx/a/l0;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/tappx/a/y;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/l0;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/tappx/a/y;->u()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/l0;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/tappx/a/y;->w()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tappx/a/l0;->c:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y$b;->a:Lcom/tappx/a/p0$b;

    invoke-virtual {v0}, Lcom/tappx/a/p0$b;->a()Lcom/tappx/a/p0;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tappx/a/y;->x()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/p0;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tappx/a/y;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/p0;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tappx/a/y;->z()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/p0;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tappx/a/y;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/p0;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tappx/a/y;->B()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/p0;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/tappx/a/y;->C()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/p0;->j:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/tappx/a/y;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/p0;->k:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tappx/a/y;->E()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/tappx/a/p0;->g:I

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 10
    invoke-static {}, Lcom/tappx/a/y;->F()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/tappx/a/p0;->h:I

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 11
    invoke-static {}, Lcom/tappx/a/y;->G()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/tappx/a/p0;->f:I

    invoke-direct {p0, v2}, Lcom/tappx/a/y$b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/tappx/a/y;->H()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tappx/a/p0;->i:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y$b;->e:Lcom/tappx/a/g1$b;

    invoke-virtual {v0}, Lcom/tappx/a/g1$b;->a()Lcom/tappx/a/g1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tappx/a/y;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/g1;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/tappx/a/g1;->b:Lcom/tappx/a/g1$a;

    if-eqz v1, :cond_36

    .line 4
    invoke-static {}, Lcom/tappx/a/y;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/g1;->b:Lcom/tappx/a/g1$a;

    invoke-direct {p0, v2}, Lcom/tappx/a/y$b;->a(Lcom/tappx/a/g1$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tappx/a/y;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/g1;->b:Lcom/tappx/a/g1$a;

    iget-wide v2, v2, Lcom/tappx/a/g1$a;->c:J

    invoke-static {p1, v1, v2, v3}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 6
    invoke-static {}, Lcom/tappx/a/y;->s()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tappx/a/g1;->b:Lcom/tappx/a/g1$a;

    iget-wide v2, v0, Lcom/tappx/a/g1$a;->d:J

    invoke-static {p1, v1, v2, v3}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    :cond_36
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y$b;->d:Lcom/tappx/a/i1$a;

    invoke-virtual {v0}, Lcom/tappx/a/i1$a;->a()Lcom/tappx/a/i1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tappx/a/y;->P()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/i1;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tappx/a/y;->R()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/i1;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tappx/a/y;->S()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/i1;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tappx/a/y;->T()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/i1;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tappx/a/y;->U()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/i1;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/tappx/a/y;->V()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/i1;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/tappx/a/y;->W()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/i1;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tappx/a/y;->X()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tappx/a/i1;->h:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y$b;->f:Lcom/tappx/a/j1$a;

    invoke-virtual {v0}, Lcom/tappx/a/j1$a;->a()Lcom/tappx/a/j1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tappx/a/y;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/j1;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-static {}, Lcom/tappx/a/y;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/j1;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-static {}, Lcom/tappx/a/y;->v()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/tappx/a/j1;->c:I

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 5
    invoke-static {}, Lcom/tappx/a/y;->Q()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/tappx/a/j1;->d:J

    invoke-static {p1, v1, v2, v3}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y$b;->b:Lcom/tappx/a/m1$a;

    invoke-virtual {v0}, Lcom/tappx/a/m1$a;->b()Lcom/tappx/a/m1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tappx/a/y;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/m1;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tappx/a/y;->J()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/m1;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tappx/a/y;->K()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/m1;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/tappx/a/y;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "2.0"

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tappx/a/y;->M()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/m1;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/tappx/a/y;->N()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tappx/a/m1;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/tappx/a/y;->O()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/tappx/a/m1;->f:Z

    if-eqz v0, :cond_4a

    const-string v0, "1"

    goto :goto_4c

    :cond_4a
    const-string v0, "0"

    :goto_4c
    invoke-static {p1, v1, v0}, Lcom/tappx/a/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tappx/a/b2;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x2uhGdCrXlc/d34/V/9dIsc+jpxTfVhWYH+besdMUd3yom+tujc5IRypFyH2BscX"

    const/4 v2, 0x0

    :try_start_8
    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {v1, v3}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/tappx/a/y$b;->e(Lorg/json/JSONObject;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/tappx/a/y$b;->b(Lorg/json/JSONObject;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/tappx/a/y$b;->f(Lorg/json/JSONObject;)V

    .line 7
    invoke-direct {p0, v0}, Lcom/tappx/a/y$b;->d(Lorg/json/JSONObject;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/tappx/a/y$b;->a(Lorg/json/JSONObject;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/tappx/a/y$b;->c(Lorg/json/JSONObject;)V

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/tappx/a/y$b;->a(Lcom/tappx/a/b2;Lorg/json/JSONObject;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_22} :catch_29

    const-string p1, "p8d3YH5MuCxwVpTkZb94TbytsEXMz1FDtMwkGzTtUPg"

    :try_start_24
    new-array v1, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, v1}, Lcom/tappx/a/j0;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_29} :catch_29

    .line 15
    :catch_29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
